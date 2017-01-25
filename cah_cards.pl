#!/usr/bin/env perl

use Mojolicious::Lite;
use Mojo::Pg;
use Mojo::URL;

use constant DEFAULT_CARD_SETS => [
	1151,1152,100211,1155,1256,100154,100415,100257,1153,1154,1488,100422,
	100049,100050,100051,100312,100485,100560,100532,100531,100017
];

# config from cah_cards.conf
my $default_config = {
	db_host => undef,
	db_name => 'cah',
	db_user => 'cah',
	db_pass => undef,
	card_sets => DEFAULT_CARD_SETS,
	run_as_user => undef,
};

app->types->type(json => 'application/json;charset=UTF-8');
app->config(plugin 'Config' => { default => $default_config });
my ($db_host, $db_name, $db_user, $db_pass) =
	@{app->config}{qw(db_host db_name db_user db_pass)};
my $connect_url = Mojo::URL->new->scheme('postgresql')->path($db_name);
$connect_url->host_port($db_host) if defined $db_host;
$connect_url->userinfo(defined $db_pass ? "$db_user:$db_pass" : $db_user) if defined $db_user;

helper pg => sub { state $pg = Mojo::Pg->new($connect_url) };

app->secrets(['no sessions']);

if (defined(my $user = app->config->{run_as_user})) {
	plugin SetUserGroup => { user => $user };
}

group {
	under '/cards/black';
	get '/rand' => sub {
		my $c = shift;
		
		my $card_sets = $c->every_param('card_set');
		$card_sets = app->config->{card_sets} // [] unless @$card_sets;
		
		my @where = '"csbc"."card_set_id" = ANY ($1)';
		my @params = $card_sets;
		
		my $pick = $c->param('pick');
		if (defined $pick) {
			return $c->render(json => { error => "Invalid pick parameter $pick (must be positive integer)" })
				unless $pick =~ /^\d+$/ and $pick > 0;
			push @where, '"bc"."pick"=$2';
			push @params, $pick;
		}
		
		my $where_str = 'WHERE ' . join ' AND ', @where;
		my $query = 'SELECT "bc"."text", "bc"."pick" FROM "black_cards" AS "bc" ' .
			'INNER JOIN "card_set_black_card" AS "csbc" ON "csbc"."black_card_id"="bc"."id" ' .
			$where_str . ' ORDER BY random() LIMIT 1';
		$c->delay(sub {
			$c->pg->db->query($query, @params, shift->begin);
		}, sub {
			my ($delay, $err, $results) = @_;
			die $err if $err;
			$c->render(json => { card => $results->hash });
		});
	};
	get '/:card_id' => sub {
		my $c = shift;
		
		my $id = $c->param('card_id');
		return $c->render(json => { error => "Invalid card ID $id" })
			unless defined $id and $id =~ /^\d+$/;
		
		my $query = 'SELECT "bc"."text", "bc"."pick" FROM "black_cards" AS "bc" ' .
			'WHERE "bc"."id"=$1';
		$c->delay(sub {
			$c->pg->db->query($query, $id, shift->begin);
		}, sub {
			my ($delay, $err, $results) = @_;
			die $err if $err;
			$c->render(json => { card => $results->hash });
		});
	};
};

group {
	under '/cards/white';
	get '/rand' => sub {
		my $c = shift;
		
		my $card_sets = $c->every_param('card_set');
		$card_sets = app->config->{card_sets} // [] unless @$card_sets;
		my $count = $c->param('count') // 1;
		return $c->render(json => { error => "Invalid count parameter $count (must be positive integer between 1 and 10)" })
			unless $count =~ /^\d+$/ and $count > 0 and $count <= 10;
		
		my $query = 'SELECT "wc"."text" FROM "white_cards" AS "wc" ' .
			'INNER JOIN "card_set_white_card" AS "cswc" ON "cswc"."white_card_id"="wc"."id" ' .
			'WHERE "cswc"."card_set_id" = ANY ($1) GROUP BY "wc"."id" ' .
			'ORDER BY random() LIMIT $2';
		$c->delay(sub {
			$c->pg->db->query($query, $card_sets, $count, shift->begin);
		}, sub {
			my ($delay, $err, $results) = @_;
			die $err if $err;
			$c->render(json => { cards => $results->hashes->to_array });
		});
	};
	get '/:card_id' => sub {
		my $c = shift;
		
		my $id = $c->param('card_id');
		return $c->render(json => { error => "Invalid card ID $id" })
			unless defined $id and $id =~ /^\d+$/;
		
		my $query = 'SELECT "wc"."text" FROM "white_cards" AS "wc" ' .
			'WHERE "wc"."id"=$1';
		$c->delay(sub {
			$c->pg->db->query($query, $id, shift->begin);
		}, sub {
			my ($delay, $err, $results) = @_;
			die $err if $err;
			$c->render(json => { card => $results->hash });
		});
	};
};

app->start;
