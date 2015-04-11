# cah-cards
REST interface to CAH card database

# Prerequisites

* PostgreSQL 9.3+
* Perl 5.10.1+

To install prerequisite Perl modules, you can simply use cpanminus:

    cpanm --installdeps .

Or if you don't have cpanminus:

    curl -L https://cpanmin.us | perl - --installdeps .

# Setup
CAH card data is retrieved from a PostgreSQL database. Create a database named `cah` and a user named `cah`:

    createdb cah
    psql -c 'CREATE ROLE "cah" WITH LOGIN' cah

Import the card data from provided dump files into the database:

    psql cah < dump/cah_cards.sql

Create a file named cah_cards.conf in the root directory to configure the connection, see cah_cards.conf.example.

Then, start the application as a daemon:

    perl cah_cards.pl daemon

Or, you can start it under the Hypnotoad prefork server:

    hypnotoad cah_cards.pl

