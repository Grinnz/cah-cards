--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: black_cards; Type: TABLE; Schema: public; Owner: cah; Tablespace: 
--

CREATE TABLE black_cards (
    id integer NOT NULL,
    text character varying(255) NOT NULL,
    draw smallint DEFAULT 0,
    pick smallint DEFAULT 1,
    watermark character varying(5)
);


ALTER TABLE black_cards OWNER TO cah;

--
-- Name: black_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: cah
--

CREATE SEQUENCE black_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE black_cards_id_seq OWNER TO cah;

--
-- Name: black_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cah
--

ALTER SEQUENCE black_cards_id_seq OWNED BY black_cards.id;


--
-- Name: card_set; Type: TABLE; Schema: public; Owner: cah; Tablespace: 
--

CREATE TABLE card_set (
    id integer NOT NULL,
    active boolean NOT NULL,
    name character varying(255),
    base_deck boolean NOT NULL,
    description character varying(255),
    weight integer DEFAULT 0 NOT NULL
);


ALTER TABLE card_set OWNER TO cah;

--
-- Name: card_set_black_card; Type: TABLE; Schema: public; Owner: cah; Tablespace: 
--

CREATE TABLE card_set_black_card (
    card_set_id integer NOT NULL,
    black_card_id integer NOT NULL
);


ALTER TABLE card_set_black_card OWNER TO cah;

--
-- Name: card_set_white_card; Type: TABLE; Schema: public; Owner: cah; Tablespace: 
--

CREATE TABLE card_set_white_card (
    card_set_id integer NOT NULL,
    white_card_id integer NOT NULL
);


ALTER TABLE card_set_white_card OWNER TO cah;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: cah
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hibernate_sequence OWNER TO cah;

--
-- Name: white_cards; Type: TABLE; Schema: public; Owner: cah; Tablespace: 
--

CREATE TABLE white_cards (
    id integer NOT NULL,
    text character varying(255) NOT NULL,
    watermark character varying(5)
);


ALTER TABLE white_cards OWNER TO cah;

--
-- Name: white_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: cah
--

CREATE SEQUENCE white_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE white_cards_id_seq OWNER TO cah;

--
-- Name: white_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cah
--

ALTER SEQUENCE white_cards_id_seq OWNED BY white_cards.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cah
--

ALTER TABLE ONLY black_cards ALTER COLUMN id SET DEFAULT nextval('black_cards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cah
--

ALTER TABLE ONLY white_cards ALTER COLUMN id SET DEFAULT nextval('white_cards_id_seq'::regclass);


--
-- Data for Name: black_cards; Type: TABLE DATA; Schema: public; Owner: cah
--

COPY black_cards (id, text, draw, pick, watermark) FROM stdin;
16	Who stole the cookies from the cookie jar?	0	1	\N
504	What is the next great Kickstarter project?	0	1	RS
27	What's the next superhero?	0	1	\N
505	____ 2012.	0	1	RS
100230	____.	0	1	TGWTG
5097	Personals ad: Seeking a female who doesn't mind ____, might also be willing to try a male if they're ____.	0	2	Furry
5099	I tell everyone I'm not a furry, but I've drawn a lot of ____.	0	1	Furry
1	Why can't I sleep at night?	0	1	\N
4	What's that smell?	0	1	\N
1273	And that's how Equestria was made!	0	1	CAE
15	What's that sound?	0	1	\N
9	What ended my last relationship?	0	1	\N
7	What is Batman's guilty pleasure?	0	1	\N
3	What's a girl's best friend?	0	1	\N
22	What does Dick Cheney prefer?	0	1	\N
25	What's the most emo?	0	1	\N
39	What are my parents hiding from me?	0	1	\N
36	What will always get you laid?	0	1	\N
38	What did I bring back from Mexico?	0	1	\N
48	What don't you want to find in your Chinese food?	0	1	\N
49	What will I bring back in time to convince people that I am a powerful wizard?	0	1	\N
50	How am I maintaining my relationship status?	0	1	\N
58	What gives me uncontrollable gas?	0	1	\N
62	What do old people smell like? 	0	1	\N
59	What's my secret power?	0	1	\N
41	What's there a ton of in heaven?	0	1	\N
42	What would grandma find disturbing, yet oddly charming?	0	1	\N
43	What did the U.S. airdrop to the children of Afghanistan?	0	1	\N
40	What helps Obama unwind?	0	1	\N
73	What did Vin Diesel eat for dinner?	0	1	\N
76	Why am I sticky?	0	1	\N
75	What gets better with age?	0	1	\N
71	What's the crustiest?	0	1	\N
70	What's Teach for America using to inspire inner city students to succeed?	0	1	\N
86	Make a haiku.	2	3	\N
66	Why do I hurt all over?	0	1	\N
63	What am I giving up for Lent?	0	1	\N
77	What's my anti-drug?	0	1	\N
56	What never fails to liven up the party?	0	1	\N
44	What's the new fad diet?	0	1	\N
2	I got 99 problems but ____ ain't one.	0	1	\N
8	TSA guidelines now prohibit ____ on airplanes.	0	1	\N
10	MTV's new reality show features eight washed-up celebrities living with ____.	0	1	\N
11	I drink to forget ____.	0	1	\N
12	I'm sorry, Professor, but I couldn't complete my homework because of ____.	0	1	\N
13	During Picasso's often-overlooked Brown Period, he produced hundreds of paintings of ____.	0	1	\N
14	Alternative medicine is now embracing the curative powers of ____.	0	1	\N
18	Anthropologists have recently discovered a primitive tribe that worships ____.	0	1	\N
19	It's a pity that kids these days are all getting involved with ____.	0	1	\N
20	____. That's how I want to die.	0	1	\N
21	In the new Disney Channel Original Movie, Hannah Montana struggles with ____ for the first time.	0	1	\N
23	I wish I hadn't lost the instruction manual for ____.	0	1	\N
24	Instead of coal, Santa now gives the bad children ____.	0	1	\N
26	In 1,000 years, when paper money is but a distant memory, ____ will be our currency.	0	1	\N
28	A romantic, candlelit dinner would be incomplete without ____.	0	1	\N
29	Next from J.K. Rowling: Harry Potter and the Chamber of ____.	0	1	\N
30	____. Betcha can't have just one!	0	1	\N
31	White people like ____.	0	1	\N
32	____. High five, bro.	0	1	\N
33	During sex, I like to think about ____.	0	1	\N
35	BILLY MAYS HERE FOR ____.	0	1	\N
37	When I'm in prison, I'll have ____ smuggled in.	0	1	\N
45	When I am the President of the United States, I will create the Department of ____.	0	1	\N
46	Major League Baseball has banned ____ for giving players an unfair advantage.	0	1	\N
47	When I am a billionare, I shall erect a 50-foot statue to commemorate ____.	0	1	\N
51	____. It's a trap!	0	1	\N
52	Coming to Broadway this season, ____: The Musical.	0	1	\N
54	After Hurricane Katrina, Sean Penn brought ____ to all the people of New Orleans.	0	1	\N
55	Due to a PR fiasco, Walmart no longer offers ____.	0	1	\N
57	But before I kill you, Mr. Bond, I must show you ____.	0	1	\N
60	When Pharaoh remained unmoved, Moses called down a plague of ____.	0	1	\N
61	The class field trip was completely ruined by ____.	0	1	\N
64	In Michael Jackson's final moments, he thought about ____.	0	1	\N
65	In an attempt to reach a wider audience, the Smithsonian Museum of Natural History has opened an interactive exhibit on ____.	0	1	\N
67	Studies show that lab rats navigate mazes 50% faster after being exposed to ____.	0	1	\N
68	I do not know with which weapons World War III will be fought, but World War IV will be fought with ____.	0	1	\N
69	Life was difficult for cavemen before ____.	0	1	\N
72	____: Good to the last drop.	0	1	\N
74	____: kid-tested, mother-approved.	0	1	\N
78	And the Academy Award for ____ goes to ____.	0	2	\N
79	For my next trick, I will pull ____ out of ____.	0	2	\N
80	____ is a slippery slope that leads to ____.	0	2	\N
81	In M. Night Shyamalan's new movie, Bruce Willis discovers that ____ had really been ____ all along.	0	2	\N
82	In a world ravaged by ____, our only solace is ____.	0	2	\N
83	In his new summer comedy, Rob Schneider is ____ trapped in the body of ____.	0	2	\N
85	I never truly understood ____ until I encountered ____.	0	2	\N
88	When I was tripping on acid, ____ turned into ____.	0	2	\N
89	That's right, I killed ____. How, you ask? ____.	0	2	\N
90	____ + ____ = ____.	2	3	\N
506	What is Curious George so curious about?	0	1	RS
1001	test	0	1	\N
1003	Starting Canadian Black Cards	0	1	\N
1009	End Canadian Black Cards	0	1	\N
1033	end bonus misprint bonus card	0	1	\N
1044	begin First Expansion	0	1	\N
1065	end first expansion	0	1	\N
1004	O Canada, we stand on guard for ____.	0	1	CAN
1005	Air Canada guidelines now prohibit ____ on airplanes.	0	1	CAN
1006	In an attempt to reach a wider audience, the Royal Ontario Museum has opened an interactive exhibit on ____.	0	1	CAN
1007	CTV presents ____, the story of ____.	0	2	CAN
1008	What's the Canadian government using to inspire rural students to succeed?	0	1	CAN
1045	He who controls ____ controls the world.	0	1	X1
1046	The CIA now interrogates enemy agents by repeatedly subjecting them to ____.	0	1	X1
1047	Dear Sir or Madam, We regret to inform you that the Office of ____ has denied your request for ____.	0	2	X1
1048	In Rome, there are whisperings that the Vatican has a secret room devoted to ____.	0	1	X1
1049	Science will never explain the origin of ____.	0	1	X1
1050	When all else fails, I can always masturbate to ____.	0	1	X1
1051	I learned the hard way that you can't cheer up a grieving friend with ____.	0	1	X1
1052	In its new tourism campaign, Detroit proudly proclaims that it has finally eliminated ____.	0	1	X1
1053	An international tribunal has found ____ guilty of ____.	0	2	X1
1054	The socialist governments of Scandinavia have declared that access to ____ is a basic human right.	0	1	X1
1055	In his new self-produced album, Kanye West raps over the sounds of ____.	0	1	X1
1056	What's the gift that keeps on giving?	0	1	X1
1057	This season on Man vs. Wild, Bear Grylls must survive in the depths of the Amazon with only ____ and his wits.	0	1	X1
1058	When I pooped, what came out of my butt?	0	1	X1
1059	In the distant future, historians will agree that ____ marked the beginning of America's decline.	0	1	X1
1060	In a pinch, ____ can be a suitable substitute for ____.	0	2	X1
1061	What has been making life difficult at the nudist colony?	0	1	X1
1062	Michael Bay's new three-hour action epic pits ____ against ____.	0	2	X1
507	What is the next big sideshow attraction?	0	1	RS
508	Praise ____!	0	1	RS
93	What's the next superhero/sidekick duo?	0	2	1.2
509	Keith Richards enjoys ____ on his food.	0	1	RS
1032	Daddy, why is Mommy crying?	0	1	B
1063	And I would have gotten away with it, too, if it hadn't been for ____!	0	1	X1
1064	What brought the orgy to a grinding halt?	0	1	X1
1156	During his midlife crisis, my dad got really into ____.	0	1	X2
1157	____ would be woefully incomplete without ____.	0	2	X2
1158	My new favorite porn star is Joey "____" McGee.	0	1	X2
1159	Before I run for president, I must destroy all evidence of my involvement with ____.	0	1	X2
1160	This is your captain speaking. Fasten your seatbelts and prepare for ____.	0	1	X2
1161	In his newest and most difficult stunt, David Blaine must escape from ____.	0	1	X2
1162	The Five Stages of Grief: denial, anger, bargaining, ____, acceptance.	0	1	X2
1163	My mom freaked out when she looked at my browser history and found ____.com/____.	0	2	X2
1164	I went from ____ to ____, all thanks to ____.	2	3	X2
1165	Members of New York's social elite are paying thousands of dollars just to experience ____.	0	1	X2
1166	This month's Cosmo: "Spice up your sex life by bringing ____ into the bedroom."	0	1	X2
1167	Little Miss Muffet Sat on a tuffet, Eating her curds and ____.	0	1	X2
1168	If God didn't want us to enjoy ____, he wouldn't have given us ____.	0	2	X2
1169	My country, 'tis of thee, sweet land of ____.	0	1	X2
1170	After months of debate, the Occupy Wall Street General Assembly could only agree on "More ____!"	0	1	X2
1171	I spent my whole life working toward ____, only to have it ruined by ____.	0	2	X2
1172	Next time on Dr. Phil: How to talk to your child about ____.	0	1	X2
1173	Only two things in life are certain: death and ____.	0	1	X2
1174	Everyone down on the ground! We don't want to hurt anyone. We're just here for ____.	0	1	X2
1175	The healing process began when I joined a support group for victims of ____.	0	1	X2
1176	The votes are in, and the new high school mascot is ____.	0	1	X2
1177	Charades was ruined for me forever when my mom had to act out ____.	0	1	X2
1178	Before ____, all we had was ____.	0	2	X2
1179	Tonight on 20/20: What you don't know about ____ could kill you.	0	1	X2
1180	You haven't truly lived until you've experienced ____ and ____ at the same time.	0	2	X2
5	____? There's an app for that.	0	1	\N
91	Maybe she's born with it. Maybe it's ____.	0	1	1.2
94	In L.A. County Jail, word is you can trade 200 cigarettes for ____.	0	1	1.2
95	After the earthquake, Sean Penn brought ____ to the people of Haiti.	0	1	1.2
96	Next on ESPN2, the World Series of ____.	0	1	1.2
97	Step 1: ____. Step 2: ____. Step 3: Profit.	0	2	1.2
98	Life for American Indians was forever changed when the White Man introduced them to ____.	0	1	1.2
1458	This holiday season, Tim Allen must overcome his fear of ____ to save Christmas.	0	1	❄
1459	Jesus is ____.	0	1	❄
1462	On the third day of Christmas, my true love gave to me: three French hens, two turtle doves, and ____.	0	1	❄
1463	Wake up, America. Christmas is under attack by secular liberals and their ____.	0	1	❄
1460	Every Christmas, my uncle gets drunk and tells the story about ____.	0	1	❄
1461	What keeps me warm during the cold, cold winter?	0	1	❄
1457	After blacking out during New Year's Eve, I was awoken by ____.	0	1	❄
99	____ Jesus is the Jesus of ____.	0	2	VS
100	____ ALL THE ____.	0	2	VS
101	There were ALOT of ____ doing ____.	0	2	VS
102	Dogimo would give up ____ to type a six sentence paragraph in a thread.	0	1	VS
103	Simple dog ate and vomited ____.	0	1	VS
104	When I was 25, I won an award for ____.	0	1	VS
105	I'm more awesome than a T-rex because of ____.	0	1	VS
106	____ in my pants.	0	1	VS
107	We need to talk about your whole gallon of ____.	0	1	VS
108	Clean ALL the ____.	0	1	VS
109	The first rule of Jade Club is ____.	0	1	VS
110	The forum nearly broke when ____ posted ____ in The Dead Thread.	0	2	VS
111	A mod war about ____ occurred during ____.	0	2	VS
112	No one likes me after I posted ____ in the TMI thread.	0	1	VS
113	____ was banned from tinychat because of ____.	0	2	VS
114	____ for president!	0	1	VS
115	I did ____, like a fucking adult.	0	1	VS
116	Domo travelled across ____ to win the prize of ____.	0	2	VS
117	Roses and her hammer collection defeated an entire squadron of ____.	0	1	VS
118	After Blue posted ____ in chat, I never trusted his links again.	0	1	VS
119	Fuck you, I'm a ____.	0	1	VS
120	Cunnilungus and psychiatry brought us to ____.	0	1	VS
121	I CAN ____ ACROSS THE ____.	0	2	VS
122	____ is the only thing that matters.	0	1	VS
123	I'm an expert on ____.	0	1	VS
510	What can you always find in between the couch cushions?	0	1	RS
125	I want ____ in my mouflon RIGHT MEOW.	0	1	VS
126	Don't get mad, get ____.	0	1	VS
127	Have fun, don't be ____.	0	1	VS
128	It's the end of ____ as we know it.	0	1	VS
129	____ is my worst habit.	0	1	VS
130	Everything's better with ____.	0	1	VS
131	Yaar's mother is ____.	0	1	VS
132	What would you taste like?	0	1	VS
133	What have you accomplished today?	0	1	VS
134	What made you happy today?	0	1	VS
135	Why are you frothing with rage?	0	1	VS
136	What mildy annoyed you today?	0	1	VS
137	We'll always have ____.	0	1	VS
138	____ uses ____. It is SUPER EFFECTIVE!	0	2	VS
139	Let's all rock out to the sounds of ____.	0	1	VS
140	Take ____, it will last longer.	0	1	VS
141	You have my bow. AND MY ____.	0	1	VS
142	VS: Where the ____ happens!	0	1	VS
143	____? FRY. EYES.	0	1	VS
144	A wild ____ appeared! It used ____!	0	2	VS
145	I thought being a ____ was the best thing ever, until I became a ____.	0	2	VS
146	Live long and ____.	0	1	VS
511	The victim was found with ____.	0	1	RS
148	I'm under the ____.	0	1	VS
149	If life gives you ____, make ____.	0	2	VS
150	Who needs a bidet when you have ____?	0	1	VS
151	Kill it with ____!	0	1	VS
152	My ____ is too big!	0	1	VS
153	Best drink ever: One part ____, three parts ____, and a splash of ____.	2	3	VS
154	____ makes me uncomfortable.	0	1	VS
155	Stop, drop, and ____.	0	1	VS
156	Think before you ____.	0	1	VS
157	The hills are alive with ____ of ____.	0	2	VS
512	What is love without ____?	0	1	RS
100006	____ is the name of my ____ cover band.	0	2	SG
100027	I have an idea even better than Kickstarter, and it's called ____starter.	0	1	PAX A
100028	You have been waylaid by ____ and must defend yourself.	0	1	PAX A
100037	Action stations! Action stations! Set condition one throughout the fleet and brace for ____!	0	1	PAX B
100038	In the final round of this year's Omegathon, Omeganauts must face off in a game of ____.	0	1	PAX B
100048	I don't know exactly how I got the PAX plague, but I suspect it had something to do with ____.	0	1	PAX C
100054	____: Hours of fun. Easy to use. Perfect for ____!	0	2	X3
100058	Turns out that ____-Man was neither the hero we needed nor wanted.	0	1	X3
100059	What left this stain on my couch?	0	1	X3
100066	A successful job interview begins with a firm handshake and ends with ____.	0	1	X3
100070	Lovin' you is easy 'cause you're ____.	0	1	X3
100074	Money can't buy me love, but it can buy me ____.	0	1	X3
100078	Listen, son. If you want to get involved with ____, I won't stop you. Just steer clear of ____.	0	2	X3
100085	During high school, I never really fit in until I found ____ club.	0	1	X3
100089	Hey baby, come back to my place and I'll show you ____.	0	1	X3
100093	To prepare for his upcoming role, Daniel Day-Lewis immersed himself in the world of ____.	0	1	X3
100094	Finally! A service that delivers ____ right to your door.	0	1	X3
100095	My gym teacher got fired for adding ____ to the obstacle course.	0	1	X3
100096	When you get right down to it, ____ is just ____.	0	2	X3
100097	As part of his daily regimen, Anderson Cooper sets aside 15 minutes for ____.	0	1	X3
100098	In the seventh circle of Hell, sinners must endure ____ for all eternity.	0	1	X3
100100	After months of practice with ____, I think I'm finally ready for ____.	0	2	X3
100103	The blind date was going horribly until we discovered our shared interest in ____.	0	1	X3
100104	____. Awesome in theory, kind of a mess in practice.	0	1	X3
100105	With enough time and pressure, ____ will turn into ____.	0	2	X3
100106	I'm not like the rest of you. I'm too rich and busy for ____.	0	1	X3
100108	And what did <i>you</i> bring for show and tell?	0	1	X3
100110	Having problems with ____? Try ____!	0	2	X3
100113	As part of his contract, Prince won't perform without ____ in his dressing room.	0	1	X3
100155	____.tumblr.com	0	1	SG
100092	My life is ruled by a vicious cycle of ____ and ____.	0	2	X3
100016	Alcoholic games of Clue® lead to ____.	0	1	SG
100047	Press  to unleash ____.	0	1	PAX C
100065	Call the law offices of Goldstein & Goldstein, because no one should have to tolerate ____ in the workplace.	0	1	X3
17	What's the next Happy Meal® toy?	0	1	\N
124	After I saw ____, I needed ____.	0	2	VS
147	There's ____ in my soup.	0	1	VS
158	____ caused Northernlion to take stupid damage.	0	1	NL
159	____ Is the best item in The Binding of Isaac.	0	1	NL
160	____ is the worst item in The Binding of Isaac.	0	1	NL
161	____ is/are Northernlion's worst nightmare.	0	1	NL
162	____ sounds like a great alternative rock band.	0	1	NL
163	____: The Northernlion Story.	0	1	NL
164	____? Well, I won't look a gift horse in the mouth on that one.	0	1	NL
165	____. Everything else is uncivilized.	0	1	NL
166	"Hey everybody and welcome to Let's Look At ____!"	0	1	NL
167	As always, I will ____ you next time!	0	1	NL
168	Best game of 2013? ____, of course.	0	1	NL
169	But that ____ has sailed.	0	1	NL
170	Even ____ is/are better at video games than Northernlion.	0	1	NL
171	Everything's coming up ____.	0	1	NL
172	Finding something like ____ would turn this run around.	0	1	NL
173	Fuck the haters, this is ____.	0	1	NL
174	Get in my ____ zone.	0	1	NL
175	How do you get your dog to stop humping your leg?	0	1	NL
176	I can do ____ and die immediately afterward.	0	1	NL
177	I don't even see ____ anymore; all I see are blondes, brunettes, redheads...	0	1	NL
178	I'm in the permanent ____ state.	0	1	NL
179	If sloth ____ are wrong I don’t want to be right.	0	1	NL
180	Invaded the world of ____.	0	1	NL
181	It's ____, ya dangus!	0	1	NL
182	JSmithOTI: Total ____.	0	1	NL
183	Legend has it, the Thug of Porn was arrested for ____.	0	1	NL
184	Let's Look At: ____.	0	1	NL
185	Northernlion's latest novelty Twitter account is @____.	0	1	NL
186	More like the Duke of ____, right?	0	1	NL
187	No one man should have all that ____.	0	1	NL
188	Northernlion has been facing ridicule for calling ____ a rogue-like.	0	1	NL
189	Northernlion always forgets the name of ____.	0	1	NL
190	Northernlion's refusal to Let's Play ____ was probably a good call.	0	1	NL
191	Of all the things that Ryan and Josh have in common, they bond together through their mutual love of ____.	0	1	NL
192	Oh god, I can't believe we ate ____ at PAX.	0	1	NL
193	One thing Northernlion was right about was ____.	0	1	NL
194	Only in Korea can you see ____.	0	1	NL
195	Praise the ____!	0	1	NL
196	Recently, Northernlion has felt woefully insecure due to ____.	0	1	NL
197	Roguelike? How about ___-like.	0	1	NL
198	Sometimes, a man's just gotta ____.	0	1	NL
199	The hero of the stream was ____.	0	1	NL
200	The stream was going well until ____.	0	1	NL
201	The Youtube chat proved ineffective, so instead we had to communicate via ____.	0	1	NL
202	____? It's a DLC item.	0	1	NL
203	This new game is an interesting ____-like-like.	0	1	NL
204	We're rolling in ____!	0	1	NL
205	Whenever I ___, take a drink.	0	1	NL
206	Today's trivia topic is ____.	0	1	NL
207	What do you give to the CEO of Youtube as a gift?	0	1	NL
208	The only way NL is ever going to make it to Hell in Spelunky is by using ____.	0	1	NL
209	That ____ has sailed.	0	1	NL
210	Welcome back to The Binding of Isaac. Today's challenge run will be based on  ____.	0	1	NL
211	Well there's nothing wrong with ____ by any stretch of the imagination.	0	1	NL
212	I'd sacrifice ____ at the Altar.	0	1	NL
213	Fox would still be here if not for ____.	0	1	NL
214	The Holy Trinity: ____, ____, and ____!	2	3	NL
215	I wasn't even that drunk! I just had some ____, ____, and ____.	2	3	NL
216	____ was indicted on account of ____.	0	2	NL
217	____: The ____ Story.	0	2	NL
8710	What does Alucard have nightmares about?	0	1	ANX1
219	Hello everybody, welcome to a new episode of ____ plays ____.	0	2	NL
220	I beat Blue Baby with only ____ and ____!	0	2	NL
221	Northernlion has alienated fans of ____ by calling them ____.	0	2	NL
222	Northernlion was fired from his teaching job and had to flee South Korea after an incident involving  ____ and ____.	0	2	NL
8711	I've always wanted to become a voice actor, so I could play the role of ____.	0	1	ANX1
5100	My original species combines ____ and ____. It's called ____.	2	3	Furry
5101	____. And now I'm bleeding.	0	1	Furry
100159	Don't slow down in East Cleveland or ____.	0	1	SG
53	While the United States raced the Soviet Union to the moon, the Mexican government funneled millions of pesos into research on ____.	0	1	\N
226	My life for ____!	0	1	RS
513	Who let the dogs out?	0	1	RS
514	In his next movie, Will Smith saves the world from ____.	0	1	RS
515	Lady Gaga has revealed her new dress will be made of ____.	0	1	RS
516	Justin Beiber's new song is all about ____.	0	1	RS
517	The new fad diet is all about making people do ____ and eat ____.	0	2	RS
519	I whip my ____ back and forth.	0	1	RS
520	When North Korea gets ____, it will be the end of the world.	0	1	RS
521	Plan a three course meal.	2	3	RS
522	Tastes like ____.	0	1	RS
523	What is literally worse than Hitler?	0	1	RS
524	____ ruined many people's childhood.	0	1	RS
525	____ and ____ are the new hot couple.	0	2	RS
526	Who needs college when you have ____.	0	1	RS
527	When short on money, you can always ____.	0	1	RS
8393	Hello, I'm a ____.	0	1	TGWTG
518	Grand Theft Auto™: ____.	0	1	RS
528	What will Xyzzy take over the world with?	0	1	RS
529	The next pokemon will combine ____ and ____.	0	2	RS
530	Who is GLaDOS's next test subject?	0	1	RS
531	Instead of playing Cards Against Humanity, you could be ____.	0	1	RS
532	The next Assassin's Creed game will take place in ____.	0	1	RS
533	I wouldn't fuck ____ with ____'s dick.	0	2	RS
534	One does not simply walk into ____.	0	1	RS
535	In the next Punch Out!!, ____ will be the secret final boss.	0	1	RS
536	Welcome to my secret lair on ____.	0	1	RS
538	What is the answer to life's question?	0	1	RS
539	I've got the whole world in my ____.	0	1	RS
540	I never thought ____ would be so enjoyable.	0	1	RS
541	In his second term, Obama will rid America of ____.	0	1	RS
542	What is Japan's national pastime?	0	1	RS
5102	Suck my ____.	0	1	Furry
543	In the future, ____ will fuel our cars.	0	1	RS
544	The lion, the witch, and ____.	0	1	RS
545	In the next episode, SpongeBob gets introduced to ____. 	0	1	RS
546	____ Game of the Year Edition.	0	1	RS
547	What was going through Osama Bin Laden's head before he died?	0	1	RS
548	In a news conference, Obama pulled out ____, to everyone's surprise.	0	1	RS
549	Nights filled with ____.	0	1	RS
738	To top One More Day, future comic writers will use ____ to break up a relationship.	0	1	TGWTG
739	The real reason MAGFest was ruined was ____.	0	1	TGWTG
740	The reason Linkara doesn't like milk in his cereal is ____.	0	1	TGWTG
741	The secret of Linkara's magic gun is ____.	0	1	TGWTG
8712	If the anime industry is dying, what will be the final nail in it's coffin?	0	1	ANX1
743	For the next Anniversary event, the TGWTG producers must battle ____ to get ____.	0	2	TGWTG
744	If a dog and a dolphin can get along, why not ____ and ____?	0	2	TGWTG
745	If I wanted to see ____, I'll stick with ____, thank you very much.	0	2	TGWTG
746	I asked Linkara to retweet ____, but instead, he retweeted ____.	0	2	TGWTG
747	I write slash fanfiction pairing ____ with ____.	0	2	TGWTG
8713	Ladies and gentlemen, I give you ____... COVERED IN BEES!!!	0	1	ANX1
749	Next time on Obscurus Lupa Presents: " ____ IV: The Return of ____".	0	2	TGWTG
8714	Don't stand behind him, if you value your ____.	0	1	ANX1
751	Todd in the Shadows broke the Not a Rhyme button when the singer tried to rhyme ____ with ____.	0	2	TGWTG
752	Welshy is to ____ as Sad Panda is to ____.	0	2	TGWTG
753	Linkara's next story arc will involve him defeating ____ with the power of  ____.	0	2	TGWTG
754	Rock and Roll is nothing but ____ and the rage of ____!	0	2	TGWTG
8715	What the hell is "Juvijuvibro"?!	0	1	ANX1
756	Being fed up with reviewing lamps, what obscure topic did Linkara review next?	0	1	TGWTG
225	When I was a kid, all we had in Lunchables were three ____ and ____.	0	2	NL
224	On its last dying breath, ____ sent out a cry for help. A bunch of ____ heard the cry.	0	2	NL
5103	I also take ____ as payment for commissions.	0	1	Furry
5015	____ looks pretty in all the art, but have you seen one in real life?	0	1	Furry
100203	At the last PAX, Paul and Storm had ____ thrown at them during "Opening Band".	0	1	SG
100206	How did I lose my virginity?	0	1	1.3
6	This is the way the world ends \\ This is the way the world ends \\ Not with a bang but with ____.	0	1	\N
100209	In 1,000 years, when paper money is a distant memory, how will we pay for goods and services?	0	1	1.3
100210	What don't you want to find in your Kung Pao chicken?	0	1	1.3
84	Rumor has it that Vladimir Putin's favorite delicacy is ____ stuffed with ____.	0	2	\N
100217	The Smithsonian Museum of Natural History has just opened an exhibit on ____.	0	1	1.3
100218	What did the commenters bitch about next to Doug?	0	1	TGWTG
5016	At first I couldn't understand ____, but now it's my biggest kink.	0	1	Furry
5017	Long story short, I ended up with ____ in my ass.	0	1	Furry
5018	Don't knock ____ until you've tried it.	0	1	Furry
5019	Who knew I'd be able to make a living off of ____?	0	1	Furry
5020	It's difficult to explain to friends and family why I know so much about ____.	0	1	Furry
5021	Once I started roleplaying ____, it was all downhill from there.	0	1	Furry
5022	____ are so goddamn cool.	0	1	Furry
5023	____, by Bad Dragon™.	0	1	Furry
5024	No, look, you don't understand. I REALLY like ____.	0	1	Furry
5025	I don't think my parents will ever accept that the real me is ____.	0	1	Furry
5026	I can't believe I spent most of my paycheck on ____.	0	1	Furry
5027	You can try to justify ____ all you want, but you don't have to be ____ to realize it's just plain wrong.	0	2	Furry
5028	I've been waiting all year for ____.	0	1	Furry
5029	I can't wait to meet up with my internet friends for ____.	0	1	Furry
771	The next crossover will have ____ and ____ review ____.	2	3	TGWTG
772	We all made a mistake when we ate ____ at MAGFest.	0	1	TGWTG
773	Kyle's next student film will focus on ____.	0	1	TGWTG
774	The RDA chat knew Nash was trolling them when he played ____.	0	1	TGWTG
775	Why does Linkara have all of those Cybermats?	0	1	TGWTG
776	____ will be the subject of the next TGWTG panel at MAGFest.	0	1	TGWTG
777	At his next con appearance, Linkara will cosplay as ____.	0	1	TGWTG
778	WAIT!  I have an idea!  It involves using ____!	0	1	TGWTG
779	What does Linkara eat with his chicken strips?	0	1	TGWTG
723	Why was Radio Dead Air shut down this time?	0	1	TGWTG
100208	During his childhood, Salvador Dalí produced hundreds of paintings of ____.	0	1	1.3
34	War!\n\nWhat is it good for?	0	1	\N
780	If you value your life, never mention ____ around Oancitizen.	0	1	TGWTG
781	Arlo P. Arlo's newest weapon combines ____ and ____!	0	2	TGWTG
782	____ and ____ are in the worst comic Linkara ever read.	0	2	TGWTG
783	____ is only on the site because of ____.	0	2	TGWTG
784	The newest fanfic trend is turning ____ into ____.	0	2	TGWTG
785	Every weekend, Golby likes to ____ then ____ before finally ____.	2	3	GFC
786	Every weekend, Golby enjoys drinking ____ before getting into a fight with ____ and having sex with ____.	2	3	GFC
787	Connie the Condor often doesn't talk on skype because of ____.	0	1	GFC
788	Jorgi the Corgi most definitely enjoys ____.	0	1	GFC
789	Tom is good, but he's not ____ good.	0	1	GFC
790	It's DJ Manny in the hizouse, playing ____ all night long!	0	1	GFC
791	BENCH ALL THE ____.	0	1	GFC
792	Hey guys, check out my ____ montage!	0	1	GFC
793	____ + ____ = Golby.	0	2	GFC
653	____ is the reason Linkara doesn't like to swear.	0	1	TGWTG
654	____ was completely avoidable!	0	1	TGWTG
655	____ will live!	0	1	TGWTG
656	____ is something else Diamanda Hagan has to live with every day.	0	1	TGWTG
657	____ should be on TGWTG.	0	1	TGWTG
658	____ was the first thing to go when Hagan took over the world.	0	1	TGWTG
659	____! What are you doing here?	0	1	TGWTG
660	____! You know, for kids.	0	1	TGWTG
661	I love ____. It's so bad.	0	1	TGWTG
8716	As part of a recent promotion, Japanese KFCs are now dressing their Colonel Sanders statues up as ____.	0	1	ANX1
663	____. With onions.	0	1	TGWTG
664	____ is the theme of this year's anniversary crossover.	0	1	TGWTG
665	A ____ Credit Card!?	0	1	TGWTG
8717	Fighting ____ by moonlight! Winning ____ by daylight! Never running from a real fight! She is the one named ____!	2	3	ANX1
8718	It's no secret.  Deep down, everybody wants to fuck ____.	0	1	ANX1
8719	Behold! My trap card, ____!	0	1	ANX1
669	Blip checks are way smaller in January so I'll spend the month riffing on ____ to gain more views.	0	1	TGWTG
670	Brad Tries ____.	0	1	TGWTG
671	Doug still regrets the day he decided to do a Let's Play video for "Bart Simpson's ____ Adventure".	0	1	TGWTG
672	Enemies of Diamanda Hagan have been known to receive strange packages filled with  ____.	0	1	TGWTG
673	High and away on a wing and a prayer, who could it be? Believe it or not, it's just ____.	0	1	TGWTG
674	What broke Nash this week?	0	1	TGWTG
675	I ____ so you don't have to.	0	1	TGWTG
676	I AM THE VOICELESS. THE NEVER SHOULD. I AM ____.	0	1	TGWTG
677	I prefer for MY exploitation films to have ____, thank you very much.	0	1	TGWTG
678	I watch movies just to see if I can find a Big Lipped ____ Moment.	0	1	TGWTG
679	I'm looking forward to Jesuotaku's playthrough of Fire Emblem: ____.	0	1	TGWTG
8720	After eating a Devil Fruit, I now have the power of ____.	0	1	ANX1
681	In his latest review, Phelous was killed by ____.	0	1	TGWTG
682	It was all going well until they found ____.	0	1	TGWTG
683	JW confirms, you can play ____,	0	1	TGWTG
684	Next January, the Nostalgia Critic is doing ____ Month.	0	1	TGWTG
685	No one wants to see your ____.	0	1	TGWTG
686	Of Course! Don't you know anything about ____?	0	1	TGWTG
687	OH MY GOD THIS IS THE GREATEST ____ I'VE EVER SEEN IN MY LIFE!	0	1	TGWTG
688	On the other side of the Plot Hole, the Nostalgia Critic found ____.	0	1	TGWTG
689	Reactions were mixed when ____ joined TGWTG.	0	1	TGWTG
690	Sage has presented JO with the new ecchi series ____.	0	1	TGWTG
691	Sean got his head stuck in ____.	0	1	TGWTG
692	STOP OR I WILL ____.	0	1	TGWTG
693	The invasion of Molassia was tragically thwarted by ____.	0	1	TGWTG
694	The newest reviewer addition to the site specializes in ____.	0	1	TGWTG
695	The next person to leave Channel Awesome will announce their departure via ____.	0	1	TGWTG
696	The next Renegade Cut is about ____ in a beloved children's movie.	0	1	TGWTG
697	The Nostalgia Critic will NEVER review ____.	0	1	TGWTG
698	The only thing Linkara would sell his soul for is ____.	0	1	TGWTG
699	What is the real reason Demo Reel failed?	0	1	TGWTG
8721	By far, the most mind-bogglingly awesome thing I've ever seen in anime is ____.	0	1	ANX1
8722	My Little Sister Can't Be ____!	0	1	ANX1
702	This weekend, the nation of Haganistan will once again commence its annual celebration of ____.  	0	1	TGWTG
703	To troll the RDA chat this time, Todd requested a song by ____.	0	1	TGWTG
704	Todd knew he didn't have a chance after trying to seduce Lupa with ____.	0	1	TGWTG
705	Turns out, that wasn't tea in MikeJ's cup, it was ____.	0	1	TGWTG
706	Viewers were shocked when Paw declared ____ the best song of the movie.	0	1	TGWTG
707	WE WERE FIGHTING LIKE ____.	0	1	TGWTG
708	Well, I've read enough fanfic about ____ and Lupa to last a lifetime.	0	1	TGWTG
709	What does Nash like to sing about?	0	1	TGWTG
710	What does Todd look like under his mask?	0	1	TGWTG
711	What doesn't go there?	0	1	TGWTG
712	What doesn't work that way?	0	1	TGWTG
713	What else does Diamanda Hagan have to live with every day?	0	1	TGWTG
714	What is in Sci Fi Guy's vest?	0	1	TGWTG
715	What the fuck is wrong with you?	0	1	TGWTG
716	What will Tara name her next hippo?	0	1	TGWTG
717	What's holding up the site redesign?	0	1	TGWTG
718	What's really inside the Plot Hole?	0	1	TGWTG
719	What's the real reason nobody has ever played the TGWTG Panel Drinking Game?	0	1	TGWTG
720	What's up next on WTFIWWY?	0	1	TGWTG
721	When the JesuOtaku stream got to the "awful part of the night," the GreatSG video featured ____.	0	1	TGWTG
722	Why can't Film Brain stop extending his final vowels?	0	1	TGWTG
724	90's Kid's favorite comic is ____.	0	1	TGWTG
725	Because poor literacy is ____.	0	1	TGWTG
726	He is a glitch. He is missing. He is ____.	0	1	TGWTG
727	In a surprise twist, the villain of Linkara's next story arc turned out to be ____.	0	1	TGWTG
728	Linkara now prefers to say ____ in lieu of "fuck".	0	1	TGWTG
729	Of course!  Don't you know anything about ___?	0	1	TGWTG
730	Snowflame feels no ____.	0	1	TGWTG
731	Snowflame found a new love besides cocaine. What is it?	0	1	TGWTG
732	So let's dig into ____ #1.	0	1	TGWTG
734	Where'd he purchase that?	0	1	TGWTG
735	When is the next History of Power Rangers coming out?	0	1	TGWTG
736	What is as low as the standards of the 90's Kid?	0	1	TGWTG
737	What delayed the next History of Power Rangers?	0	1	TGWTG
100163	____ has the "mount" keyword.	0	1	SG
794	On a night out, Golby will traditionally get into a fight with a ____ then have sex with a ____ before complaining about a hangover from too much ____.	2	3	GFC
795	You're so _____ I'll have to delete you.	0	1	GFC
796	Cindi suddenly turned into Steven after ____.	0	1	GFC
797	When Barta isn't talking he's ____.	0	1	GFC
798	I got a new tattoo, it looks a bit like ____.	0	1	GFC
799	What strange Korean delicacy will Mark enjoy today?	0	1	GFC
800	____ is camping my lane.	0	1	GFC
801	The OGN was fun, but there was far too much ____ cosplay.	0	1	GFC
802	"What are you thinking?" "You know, ____ and stuff."	0	1	GFC
100223	Drunken games of Pretend You're Xyzzy lead to ____ and ____.	0	2	SG
803	Vegeta, what does the scouter say?	0	1	AN
804	____. BELIEVE IT!	0	1	AN
805	Make a contract with me, and become ____!	0	1	AN
806	You guys are so wrong. Obviously, ____ is best waifu.	0	1	AN
807	In the latest chapter of Toriko, our hero hunts down, kills, and eats a creature made entirely of ____.	0	1	AN
808	THIS ____ HAS BEEN PASSED DOWN THE ARMSTRONG FAMILY LINE FOR GENERATIONS!!!	0	1	AN
809	My favorite episode of ____ is the one with ____.	0	2	AN
810	Make a yaoi shipping.	0	2	AN
811	This doujinshi I just bought has ____ and ____ getting it on, hardcore.	0	2	AN
812	On the next episode of Dragon Ball Z, ____ is forced to do the fusion dance with ____.	0	2	AN
813	You are already ____.	0	1	AN
814	Who the hell do you think I am?!	0	1	AN
815	On the next episode of Dragon Ball Z, Goku has a fierce battle with ____.	0	1	AN
816	____. YOU SHOULD BE WATCHING.	0	1	AN
5096	Most cats are ____.	0	1	Furry
818	Fresh from Japan: The new smash hit single by ____ titled ____.	0	2	AN
819	____ vs. ____. BEST. FIGHT. EVER.	0	2	AN
820	So wait, ____ was actually ____? Wow, I didn't see that one coming!	0	2	AN
821	Real men watch ____.	0	1	AN
822	When it comes to hentai, nothing gets me hotter than ____.	0	1	AN
823	Whenever I'm splashed with cold water, I turn into ____.	0	1	AN
824	No matter how you look at it, ultimately ____ is responsible for ____.	0	2	AN
825	S-Shut up!! I-It's not like I'm ____ or anything.	0	1	AN
826	The English dub of ____ sucks worse than ____.	0	2	AN
828	Hayao Miyazaki's latest family film is about a young boy befriending ____.	0	1	AN
829	Congratulations, ____.	0	1	AN
830	By far the best panel at any anime convention is the one for ____.	0	1	AN
831	One thing you almost never see in anime is ____.	0	1	AN
833	What do I hate most about anime?	0	1	AN
834	Mamoru Oshii's latest film is a slow-paced, two hour-long cerebral piece about the horrors of ____.	0	1	AN
835	What do I love most about anime?	0	1	AN
836	This morning, hundreds of Japanese otaku lined up outside their favorite store to buy the limited collector's edition of ____.	0	1	AN
837	Every now and then, I like to participate in the time-honored Japanese tradition of ____.	0	1	AN
838	There are guilty pleasures. And then there's ____.	0	1	AN
839	Watch it! Or I'll take your ____.	0	1	AN
840	New from Studio GAINAX: ____ the Animation.	0	1	AN
841	Using my power of Geass, I command you to do... THIS!	0	1	AN
842	Chicks. Dig. ____. <i>Nice.</i>	0	1	AN
843	When it comes to Japanese cuisine, there's simply nothing better than ____.	0	1	AN
844	The next big Tokusatsu show: "Super Sentai ____ Ranger!"	0	1	AN
845	In the name of the moon, I will punish ____!	0	1	AN
846	Just announced: The brand new anime adaptation of ____, starring ____ as the voice of ____.	2	3	AN
847	Don't worry, he's okay! He survived thanks to ____.	0	1	AN
848	____. Goddammit, Japan.	0	1	AN
849	In the latest chapter of Golgo 13, he kills his target with ____.	0	1	AN
850	Welcome home, Master! Is there anything your servant girl can bring you today?	0	1	AN
851	In the latest episode of Case Closed, Conan deduces that it was ____ who killed ____ because of ____.	2	3	AN
852	I have never in my life laughed harder than the first time I watched ____.	0	1	AN
853	Take this! My love, my anger, and all of my ____!	0	1	AN
854	Karaoke night! I'm totally gonna sing my favorite song, ____.	0	1	AN
855	Digimon! Digivolve to: ____-mon!	0	1	AN
856	Now! Face my ultimate attack!	0	1	AN
857	Behold the name of my Zanpakuto, ____!	0	1	AN
858	From the twisted mind of Nabeshin: An anime about ____, ____, and ____.	2	3	AN
859	____. Only on Toonami	0	1	AN
860	I am in despair! ____ has left me in despair!	0	1	AN
861	The new manga from ____ is about a highschool girl discovering ____.	0	2	AN
862	To save the world, you must collect all 7 ____.	0	1	AN
863	Sasuke has ____ implants.	0	1	AN
864	In truth, the EVA units are actually powered by the souls of ____.	0	1	AN
865	Dreaming! Don't give it up ____! Dreaming! Don't give it up ____! Dreaming! Don't give it up ____!	2	3	AN
817	Lupin the III's latest caper involves him trying to steal ____.	0	1	AN
666	A piece of ____ is missing.	0	1	TGWTG
667	What do Brad and Floyd like to do after a long day?	0	1	TGWTG
668	At least he didn't fuck ____.	0	1	TGWTG
742	Hello, and welcome to Atop ____, where ____ burns.	0	2	TGWTG
8723	No matter how I look at it, it's your fault I'm not ____!	0	1	ANX1
662	Hello, I'm the Nostalgia Critic. I remember ____ so you don't have to!	0	1	TGWTG
5098	Taking pride in one's collection of ____.	0	1	Furry
755	If you are able to deflect ____ with ____, we refer to it as "Frying ____".	2	3	TGWTG
8724	They are the prey, and we are the ____.	0	1	ANX1
5030	Did you hear about the guy that smuggled ____ into the hotel?	0	1	Furry
867	The new Gurren Lagann blurays from Aniplex will literally cost you ____.	0	1	AN
868	The most overused anime cliche is ____.	0	1	AN
869	The inspiration behind the latest hit show is ____.	0	1	AN
870	While writing Dragon Ball, Akira Toriyama would occasionally take a break from working to enjoy ____.	0	1	AN
871	The show was great, until ____ showed up.	0	1	AN
872	Nothing ruins a good anime faster than ____.	0	1	AN
873	People die when they are ____.	0	1	AN
874	I want to be the very best, like no one ever was! ____ is my real test, ____ is my cause!	0	2	AN
875	Okay, I'll admit it. I would totally go gay for ____.	0	1	AN
876	Who are you callin' ____ so short he can't see over his own ____?!?!	0	2	AN
877	If you ask me, there need to be more shows about ____.	0	1	AN
878	____. That is the kind of man I was.	0	1	AN
879	I'm sorry! I'm sorry! I didn't mean to accidentally walk in on you while you were ____!	0	1	AN
880	After a long, arduous battle, ____ finally met their end by ____.	0	2	AN
881	This is our final battle. Mark my words, I will defeat you, ____!	0	1	AN
882	You used ____. It's super effective!	0	1	AN
883	The best English dub I've ever heard is the one for ____.	0	1	AN
884	I know of opinions and all that, but I just don't understand how anyone could actually enjoy ____.	0	1	AN
885	____. HE DEDD.	0	1	AN
886	She'll thaw out if you try ____.	0	1	AN
887	You see, I'm simply ____.	0	1	AN
888	Yoko Kanno's latest musical score features a song sung entirely by ____.	0	1	AN
889	Truly and without question, ____ is the manliest of all men.	0	1	AN
890	WANTED: $50,000,000,000 reward for the apprehension of____.	0	1	AN
891	This year, I totally lucked out and found ____ in the dealer's room.	0	1	AN
892	How did I avoid your attack? Simple. By ____.	0	1	AN
893	If I was a magical girl, my cute mascot sidekick would be ____.	0	1	AN
895	In the future of 199X, the barrier between our world and the demon world is broken, and thousands of monsters invade our realm to feed upon ____.	0	1	AN
896	Animation studio ____ is perhaps best known for ____.	0	2	AN
898	The most annoying kind of anime fans are ____.	0	1	AN
899	Cooking is so fun! Cooking is so fun! Now it's time to take a break and see what we have done! ____. YAY! IT'S READY!!	0	1	AN
900	My favorite hentai is the one where ____ is held down and violated by ____.	0	2	AN
901	The government of Japan recently passed a law that effectively forbids all forms of ____.	0	1	AN
903	This year, I'm totally gonna cosplay as ____.	0	1	AN
905	No matter how many times I see it, ____ always brings a tear to my eye.	0	1	AN
906	Of my entire collection, my most prized possession is ____.	0	1	AN
907	Who placed first in the most recent Shonen Jump popularity poll?	0	1	AN
908	Someday when I have kids, I want to share with them the joys of ____.	0	1	AN
909	So, what have you learned from all of this?	0	1	AN
910	In this episode of Master Keaton, Keaton builds ____ out of ____ and ____.	2	3	AN
911	The World Line was changed when I sent a D-mail to myself about ____.	0	1	AN
912	My ____ is the ____ that will pierce the heavens!!  <i>*same white card used for both blanks*</i>	0	1	AN
913	After years of searching, the crew of the Thousand Sunny finally found out that the One Piece is actually ____.	0	1	AN
914	When I found all 7 Dragon Balls, Shenron granted me my wish for ____.	0	1	AN
915	The best part of my ____ costume is ____.	0	2	AN
916	Cards Against Anime: It's more fun than ____!	0	1	AN
917	On the mean streets of Tokyo, everyone knows that ____ is the leader of the ________ Gang.	0	2	AN
918	He might just save the universe, if he only had some ____!	0	1	AN
920	Make a harem.	3	5	AN
922	So just who is this Henry Goto fellow, anyway?	0	1	AN
923	When Henry Goto is alone and thinks that no one's looking, he secretly enjoys ____.	0	1	AN
924	Dr. Black Jack, please hurry! The patient is suffering from a terminal case of ____!	0	1	AN
925	I'M-A FIRIN' MAH ____!	0	1	AN
926	Make a love triangle.	2	3	AN
919	This ____ of mine glows with an awesome power! Its ____ tells me to defeat you!	0	2	AN
866	Yo-Ho-Ho! He took a bite of ____.	0	1	AN
927	Scientists have reverse engineered alien technology that unlocks the secrets of ____.	0	1	MrMan
928	It is often argued that our ancestors would have never evolved without the aid of ____.	0	1	MrMan
929	The sad truth is, that at the edge of the universe, there is nothing but ____.	0	1	MrMan
930	The 1930's is often regarded as the golden age of ____.	0	1	MrMan
897	____. So kawaii!! <3 <3	0	1	AN
904	Coming to Neon Alley: ____, completely UNCUT & UNCENSORED.	0	1	AN
921	Make a dub cast. ____ as ____, ____ as ____, & ____ as ____.	4	6	AN
931	____ a day keeps ____ away.	0	2	MrMan
932	There is a time for peace, a time for war, and a time for ____.	0	1	MrMan
933	If a pot of gold is at one end of the rainbow, what is at the other?	0	1	MrMan
934	A fortune teller told me I will live a life filled with ____.	0	1	MrMan
935	The Himalayas are filled with many perils, such as ____.	0	1	MrMan
936	The road to success is paved with ____.	0	1	MrMan
937	I work out so I can look good when I'm ____.	0	1	MrMan
939	And on his farm he had ____, E-I-E-I-O!	0	1	MrMan
940	Genius is 10% inspiration and 90% ____.	0	1	MrMan
941	I will not eat them Sam-I-Am. I will not eat ____.	0	1	MrMan
938	What's the time? ____ time!	0	1	MrMan
942	____ is the root of all evil.	0	1	MrMan
943	The primitive villagers were both shocked and amazed when I showed them ____.	0	1	MrMan
944	And it is said his ghost still wanders these halls, forever searching for his lost ____.	0	1	MrMan
945	Disney presents ____, on ice!	0	1	MrMan
946	The best part of waking up is ____ in your cup.	0	1	MrMan
947	Though Thomas Edison invented the lightbulb, he is also known for giving us ____.	0	1	MrMan
948	Little Miss. Muffet sat on her tuffet, eating her ____ and ____.	0	2	MrMan
949	What do I keep hidden in the crawlspace?	0	1	MrMan
950	Go-Go-Gadget, ____!	0	1	MrMan
951	I qualify for this job because I have several years experience in the field of ____.	0	1	MrMan
952	We just adopted ____ from the pound.	0	1	MrMan
953	It was the happiest day of my life when I became the proud parent of ____.	0	1	MrMan
954	I finally realized I hit rock bottom when I started digging through dumpsters for ____.	0	1	MrMan
955	With a million times the destructive force of all our nuclear weapons combined, no one was able to survive ____.	0	1	MrMan
956	You have been found guilty of 5 counts of ____, and 13 counts of ____.	0	2	MrMan
957	And the award for the filthiest scene in an adult film goes to "5 women and ____."	0	1	MrMan
959	"Why Grandma", said Little Red Riding Hood, "What big ____ you have!"	0	1	MrMan
960	Pay no attention to ____ behind the curtain!	0	1	MrMan
961	Who would have guessed that the alien invasion would be easily thwarted by ____.	0	1	MrMan
962	With Democrats and Republicans in a dead heat, the election was snatched by ____ party.	0	1	MrMan
963	Mama always said life was like ____.	0	1	MrMan
100226	Who could have guessed that the alien invasion would be easily thwarted by ____.	0	1	MrMan
100227	With the Democrats and Republicans in a dead heat, the election was snatched by the ____ party.	0	1	MrMan
5001	The panel I'm looking forward to most at AC this year is...	0	1	Furry
5002	My Original Character's name is ____.	0	1	Furry
5003	My secret tumblr account where I post nothing but ____.	0	1	Furry
5004	Only my internet friends know that I fantasize about ____.	0	1	Furry
5005	Everyone really just goes to the cons for ____.	0	1	Furry
5006	It all started with ____.	0	1	Furry
5007	I'll roleplay ____, you can be ____.	0	2	Furry
5008	I'm no longer allowed near ____ after the incident with ____.	0	2	Furry
5009	I've been into ____ since before I hit puberty, I just didn't know what it meant.	0	1	Furry
5010	Realizing, too late, the implications of your interest in ____ as a child.	0	1	Furry
5011	Whoa, I might fantasize about ____, but I'd never actually go that far in real life.	0	1	Furry
5012	I realized they were a furry when they mentioned ____.	0	1	Furry
5013	Everyone on this site has such strong opinions about ____.	0	1	Furry
5014	My landlord had a lot of uncomfortable questions for me when when he found ____ in my bedroom while I was at work.	0	1	Furry
5031	I'm not even aroused by normal porn anymore, I can only get off to ____ or ____.	0	2	Furry
5032	____? Oh, yeah, I could get my mouth around that.	0	1	Furry
5033	What wouldn't I fuck?	0	1	Furry
5034	When I thought I couldn't go any lower, I realized I would probably fuck ____.	0	1	Furry
5035	I knew my boyfriend was a keeper when he said he'd try ____, just for me.	0	1	Furry
5036	Fuck ____, get ____.	0	2	Furry
5038	I would bend over for ____.	0	1	Furry
5039	I think having horns would make ____ complicated.	0	1	Furry
5040	In my past life, I was ____.	0	1	Furry
5041	____ is my spirit animal.	0	1	Furry
5042	____. This is what my life has come to.	0	1	Furry
5043	I'm not even sad that I devote at least six hours of each day to ____.	0	1	Furry
5044	I never felt more accomplished than when I realized I could fit ____ into my ass.	0	1	Furry
5045	Yeah, I know I have a lot of ____ in my favorites, but I'm just here for the art.	0	1	Furry
5046	I'm not a "furry," I prefer to be called ____.	0	1	Furry
5047	Okay, ____? Pretty much the cutest thing ever.	0	1	Furry
5048	____. Yeah, that's a pretty interesting way to die.	0	1	Furry
5049	I didn't believe the rumors about ____, until I saw the videos.	0	1	Furry
5050	I knew I needed to leave the fandom when I realized I was ____.	0	1	Furry
5051	After being a furry for so long, I can never see ____ without getting a little aroused.	0	1	Furry
5052	It's really hard not to laugh at ____.	0	1	Furry
5053	If my parents ever found ____, I'd probably be disowned.	0	1	Furry
5054	____ ruined the fandom.	0	1	Furry
5055	The most recent item in my search history.	0	1	Furry
5056	Is it weird that I want to rub my face on ____?	0	1	Furry
680	In her newest review, Diamanda Hagan finds herself in the body of ____.	0	1	TGWTG
8725	My love for you is like ____.  BERSERKER!	0	1	ANX1
748	Last time I took bath salts, I ended up ____ in ____.	0	2	TGWTG
750	Tara taught me that if you're going to engage in ____, then ____ isn't a good idea.	0	2	TGWTG
700	The website was almost called "thatguywith____.com".	0	1	TGWTG
701	They even took ____! Who does that?!	0	1	TGWTG
733	You may be a robot, but I AM ____!	0	1	TGWTG
223	Northernlion's doctor diagnosed him today with ____, an unfortunate condition that would lead to ____.	0	2	NL
218	And now we're going to be fighting ____ on ____.	0	2	NL
8681	The comment section was nothing but ____ arguing about ____.	0	2	DAH
8726	IT'S ____ TIME!	0	1	ANX1
8727	It has been said... That there are entire forests of ____, made from the sweetest ____.	0	2	ANX1
8728	Attention, duelists: My hair is ____.	0	1	ANX1
8729	What do otaku smell like?	0	1	ANX1
8730	Madoka Kyouno's nickname for Muginami's older brother is ____.	0	1	ANX1
8732	And from Kyoto Animation, a show about cute girls doing ____.	0	1	ANX1
8733	Anime has taught me that classic literature can always be improved by adding ____.	0	1	ANX1
8735	That's not a squid!  It's ____!	0	1	ANX1
8736	The Chocolate Underground stopped the Good For You Party by capturing their ____ and exposing their leader as ____.	0	2	ANX1
8737	Who cares about the printing press, did that medieval peasant girl just invent ____?!	0	1	ANX1
8747	Eating ____ gave me ____.	2	2	AI
8748	The reason I go to church is to learn about ____.	0	1	AI
8749	Show me on ____, where he ____.	0	2	AI
8750	I wouldn't ____ you with ____.	0	2	AI
8751	All attempts at ____, have met with failure and crippling economic sanctions.	0	1	AI
8752	Despite our Administration's best efforts, we are still incapable of ____.	0	1	AI
8753	Technology improves every day. One day soon, surfing the web will be replaced by ____.	0	1	AI
8754	Choosy Moms Choose ____.	0	1	AI
8755	At camp, we'd scare each other by telling stories about ____ around the fire.	0	1	AI
1275	Big Mac sleeps soundly whenever ____ is with him.	0	1	CAE
1257	____ has won the national Equestrian award for ____.	0	2	CAE
1260	____ is best pony.	0	1	CAE
1262	____ should ____ ____.	2	3	CAE
1264	____? That's future Spike's problem.	0	1	CAE
1265	After a wild night of crusading, Applebloom learned that ____ was her super special talent.	0	1	CAE
1267	After a wild night of partying, Fluttershy awakens to find ____ in her bed.	0	1	CAE
1268	After living for thousands of years Celestia can only find pleasure in ____.	0	1	CAE
1270	Aloe and Lotus have been experimenting with a radical treatment that utilizes the therapeutic properties of ____.	0	1	CAE
1277	BUY SOME ____!	0	1	CAE
1279	CUTIE MARK CRUSADERS; ____! YAY!	0	1	CAE
1281	Daring Do and the quest for ____.	0	1	CAE
1283	Dear Princess Celestia, Today I learned about ____. 	0	1	CAE
1285	Despite everypony's expectations, Sweetie Belle's cutie mark ended up being ____.	0	1	CAE
1287	Equestrian researchers have discovered that ____ is The 7th Element of Harmony.	0	1	CAE
1289	Every Morning, Princess Celestia Rises ____.	0	1	CAE
1303	In a stroke of unparalleled evil, Discord turned ____ into ____.	0	2	CAE
1305	In a world without humans, saddles are actually made for ____.	0	1	CAE
1306	Inexplicably, the only thing the parasprites wouldn't eat was ____.	0	1	CAE
1309	It turns out Hitler's favorite pony was ____.	0	1	CAE
1311	It's not a boulder! It's ____!	0	1	CAE
1313	Lauren Faust was shocked to find ____ in her mailbox.	0	1	CAE
1315	Luna didn't help in the fight against Chrysalis because she was too busy with ____.	0	1	CAE
1317	My cutie mark would be ____.	0	1	CAE
1319	Not many people know that Tara Strong is also the voice of ____.	0	1	CAE
1321	Nothing makes Pinkie smile more than ____.	0	1	CAE
1291	Everypony was shocked to discover that Scootaloo's cutie mark was ____.	0	1	CAE
1292	Giggle at ____!	0	1	CAE
1295	I never knew what ____ could be, until you all shared its ____ with me.	0	2	CAE
1297	I'd like to be ____.	0	1	CAE
1301	In a fit of rage, Princess Celestia sent ____ to the ____ for ____.	2	3	CAE
1323	Once upon a time, the land of Equestria was ruled by ____ and ____.	0	2	CAE
1325	Ponyville is widely known for ____.	0	1	CAE
1327	Ponyville was shocked to discover ____ in Fluttershy's shed.	0	1	CAE
1329	Prince Blueblood's cutie mark represents ____.	0	1	CAE
1330	Rainbow Dash has always wanted ____.	0	1	CAE
1345	Rainbow Dash is the only pony in all of Equestria who can ____.	0	1	CAE
1347	Rainbow Dash received a concussion after flying into ____.	0	1	CAE
1350	Rarity has a long forgotten line of clothing inspired by ____.	0	1	CAE
1352	Rarity was supposed to have a song about ____, but it was cut.	0	1	CAE
1353	Rarity's latest dress design was inspired by ____.	0	1	CAE
1354	Should the Elements of Harmony fail, ____ is to be used as a last resort.	0	1	CAE
1355	Super Speedy ____ Squeezy 5000.	0	1	CAE
1356	Surprisingly, Canterlot has a museum of ____.	0	1	CAE
1359	____. That is my fetish.	0	1	CAE
1361	The Elements of Harmony were originally the Elements of ____.	0	1	CAE
1363	The Everfree forest is full of ____.	0	1	CAE
1365	The national anthem of Equestria is ____.	0	1	CAE
1366	The only way to get Opal in the bath is with ____.	0	1	CAE
1369	The worst mishap caused by Princess Cadance was when she made ____ and ____ fall in love.	0	2	CAE
1370	To much controversy, Princess Celestia made ____ illegal.	0	1	CAE
1371	Today, Mayor Mare announced her official campaign position on ____ and ____. No pony was the least bit surprised.	0	2	CAE
1372	Twilight got bored with the magic of friendship, and now studies the magic of ____.	0	1	CAE
1373	Twilight Sparkle owns far more books on ____ than she'd like to admit.	0	1	CAE
1374	When Luna got to the moon, she was greeted with ____.	0	1	CAE
5037	____? Oh murr.	0	1	Furry
8734	The moé debate was surprisingly civil until someone mentioned ____.	0	1	ANX1
100007	Who dunnit? ____ with ____ in ____.	2	3	SG
1375	When Spike is asleep, Twilight likes to read books about ____.	0	1	CAE
5106	Why are you making chocolate pudding at 4 in the morning?	0	1	Vidya
5107	The newest feature of the Xbox One is ____.	0	1	Vidya
5108	PS3: It only does  ____.	0	1	Vidya
5109	The new TF2 promo items are based on ____.	0	1	Vidya
5110	If Gordon Freeman spoke, what would he talk about?	0	1	Vidya
5112	All you had to do was follow the damn ____, CJ!	0	1	Vidya
5113	Liquid! How can you still be alive?	0	1	Vidya
5114	What can change the nature of a man?	0	1	Vidya
5115	 Microsoft revealed that the Xbox One's demos had actually been running on ____ 	0	1	Vidya
5116	What if ____ was a girl?	0	1	Vidya
5117	What did I preorder at gamestop?	0	1	Vidya
5118	____ confirmed for Super Smash Bros!	0	1	Vidya
5119	Based ____.	0	1	Vidya
5120	The newest IP from Nintendo, Super ____ Bros. 	0	1	Vidya
5121	____ only, no items, Final Destination. 	0	1	Vidya
5122	Enjoy ____ while you play your Xbox one!	0	1	Vidya
5123	The future of gaming lies with the ____.	0	1	Vidya
5124	The best way to be comfy when playing video games is with ____.	0	1	Vidya
5125	____ has no games.	0	1	Vidya
5126	PC gamers have made a petition to get ____ on their platform.	0	1	Vidya
5127	The new Nintendo ____ is a big gimmick. 	0	1	Vidya
5129	WHAT IS A MAN?	0	1	Vidya
5130	What is a ___ but a ____?	0	2	Vidya
5131	WE WILL DRAG THIS ___ INTO THE 21ST CENTURY.	0	1	Vidya
5132	Wake up, Mr. Freeman. Wake up and ____.	0	1	Vidya
5133	All your ____ are belong to us	0	1	Vidya
5134	I'm in ur base, ____	0	1	Vidya
5135	Pop Quiz: Beatles Song- ___ terday.	0	1	Vidya
5136	 ___ would like to play.	0	1	Vidya
5137	A mod of doom was made that was based off of ____.	0	1	Vidya
5138	I really didn't like what they did with the ____ Movie adaption.	0	1	Vidya
5139	"HEY, GOLLEN PALACE? HOW U SAY ____ IN CHINESE?"	0	1	Vidya
5140	Pumpkin doesn't want this.	0	1	Vidya
5141	NEXT TIME ON GAME GRUMPS: ____.	0	1	Vidya
5142	I used to be an adventurer like you, until ____.	0	1	Vidya
5143	Yeah, well, my dad works for ____.	0	1	Vidya
5144	Kotaku addresses sexism in ____ in their latest article.	0	1	Vidya
5145	Get double XP for Halo 3 with purchase of ____.	0	1	Vidya
5146	Sorry Mario, but ____ is in another castle.	0	1	Vidya
5147	LoL stole their new character design off of ____.	0	1	Vidya
5148	____ is the cancer killing video games.	0	1	Vidya
5149	Suffer, like ____ did.	0	1	Vidya
5151	It's like ____ with guns!	0	1	Vidya
5152	Is a man not entitiled to ____?	0	1	Vidya
5153	____ has changed.	0	1	Vidya
5154	But you can call me ____ the ____. Has a nice ring to it dontcha think?	0	1	Vidya
5155	Objective: ____	0	1	Vidya
5156	EA Sports! It's ____.	0	1	Vidya
5157	____ is waiting for your challenge!	0	1	Vidya
5158	____ sappin' my sentry. 	0	1	Vidya
5159	I'm here to ____ and chew bubble gum, and I'm all out of gum.	0	1	Vidya
5160	I've covered ____, you know.	0	1	Vidya
5161	It's dangerous to go alone! Take this:	0	1	Vidya
5162	You were almost a ____ sandwich!	0	1	Vidya
5163	That's the second biggest ____ I've ever seen!	0	1	Vidya
5164	____. ____ never changes.	0	1	Vidya
5165	____ has changed. 	0	1	Vidya
5166	You have been banned. Reason: ____.	0	1	Vidya
5167	The newest trope against women in video games: ____.	0	1	Vidya
5168	Fans started a kickstarter for a new ____ game. 	0	1	Vidya
5169	Huh? What was that noise?	0	1	Vidya
5170	Viral marketers are trying to push the new ____.	0	1	Vidya
5171	I wouldn't call it a Battlestation, more like a ____.	0	1	Vidya
5172	____: Gotta go fast!	0	1	Vidya
5173	The best final fantasy game was ____.	0	1	Vidya
5174	I love the ____, it's so bad	0	1	Vidya
5175	Valve is going to make ____ 2 before they release HL3.	0	1	Vidya
5176	____ is a pretty cool guy	0	1	Vidya
5177	Ah! Your rival! What was his name again?	0	1	Vidya
5178	What's in the box, /v/?	0	1	Vidya
5179	Why is the ____ fandom the worst?	0	1	Vidya
5180	Achievement Unlocked: ____ !	0	1	Vidya
5181	I'm ____ under the table right now!	0	1	Vidya
5182	brb guys, ____ break	0	1	Vidya
5183	OH MY GOD JC, A ____	0	1	Vidya
5184	wooooooow, it took all 3 of you to ____	0	1	Vidya
5185	Rev up those ____, because I am sure hungry for one- HELP! HELP!	0	1	Vidya
5186	____ is 2deep and edgy for you.	0	1	Vidya
5187	Only casuals like ____.	0	1	Vidya
5188	The princess is in another ____	0	1	Vidya
5189	I have the bigger ____.	0	1	Vidya
5190	____ TEAM RULES!!	0	1	Vidya
5191	When you see it... you don't see ____.	0	1	Vidya
5192	HEY, GOLLEN PALACE? HOW U SAY ____ IN CHINESE?	0	1	Vidya
5193	WHAT THE FUCK DID YOU SAY ABOUT ME YOU ____?	0	1	Vidya
5194	This will be the 6th time we've posted ____; we've become increasingly efficient at it.	0	1	Vidya
5195	appealing to a larger audience	0	1	Vidya
5196	we must embrace ____ and burn it as fuel for out journey.	0	1	Vidya
5197	In Kingdom Hearts, Donald Duck will be replaced with ____ .	0	1	Vidya
5150	____ is a lie.	0	1	Vidya
1376	Without any warning, Pinkie Pie burst into a song about ____.	0	1	CAE
8394	Here There Be ____.	0	1	TGWTG
5111	>tfw when ____.	0	1	Vidya
5198	>walk into gamestop\n>see ____\n>walk out	0	1	Vidya
5199	Because of the lastest school shooting, ____ is being blamed for making kids too violent.	0	1	Vidya
5200	Here lies ____: peperony and chease	0	1	Vidya
5201	Throwaway round: Get rid of those shit cards you don't want. Thanks for all the suggestions, /v/	0	1	Vidya
5202	The president has been kidnapped by ____. Are you a bad enough dude to rescue the president?	0	1	Vidya
5203	We ____ now.	0	1	Vidya
5204	What is the new mustard paste?	0	1	Vidya
5206	All you had to do was ____ the damn ____!	0	2	Vidya
5207	The new ititeration in the Call of Duty franchise has players fighting off ____ deep in the jungles of ____ 	0	2	Vidya
5208	Check your privilege, you ____ ____.	0	2	Vidya
5209	Jill, here's a ____. It might come in handy if you, the master of ____, take it with you. 	0	2	Vidya
5210	____ is a pretty cool guy, eh ____ and doesn't afraid of anything.	0	2	Vidya
5212	It's like ____with ____!	0	2	Vidya
5057	I never thought I'd be comfortable with ____, but now it's pretty much the only thing I masturbate to.	0	1	Furry
5058	My next fursuit will have ____.	0	1	Furry
5059	I'm writing a porn comic about ____ and ____. 	0	2	Furry
5060	I tell everyone that I make my money off "illustration," when really, I just draw ____.	0	1	Furry
5061	Oh, you're an artist? Could you draw ____ for me?	0	1	Furry
5062	Everyone thinks they're so great, but the only thing they're good at drawing is ____.	0	1	Furry
5063	They're just going to spend all that money on ____.	0	1	Furry
5064	While everyone else seems to have a deep, instinctual fear of ____, it just turns me on.	0	1	Furry
5065	Lying about having ____ to get donations, which you spend on ____.	0	2	Furry
5066	It's not bestiality, it's ____.	0	1	Furry
5067	Everyone thinks that because I'm a furry, I'm into ____. Unfortunately, they're right.	0	1	Furry
5068	I'm only gay for ____.	0	1	Furry
5069	Excuse you, I'm a were-____.	0	1	Furry
5070	If you like it, then you should put ____ on it.	0	1	Furry
5071	My girlfriend won't let me do ____.	0	1	Furry
5072	The most pleasant surprise I've had this year.	0	1	Furry
5073	I knew I had a problem when I had to sell ____ to pay for ____.	0	2	Furry
5074	I'm about 50% ____.	0	1	Furry
5075	____: Horrible tragedy, or sexual opportunity?	0	1	Furry
5076	It's a little worrying that I have to compare the size of ____ to beverage containers.	0	1	Furry
5077	Hey, you guys wanna come back to my place? I've got ____ and ____.	0	2	Furry
5078	Jizzing all over ____.	0	1	Furry
5079	It's just that much creepier when 40-year-old men are into ____.	0	1	Furry
5080	____ is no substitute for social skills, but it's a start.	0	1	Furry
5081	The real reason I got into the fandom? ____.	0	1	Furry
5082	____ are definitely the new huskies.	0	1	Furry
5083	I remember when ____ was just getting started.	0	1	Furry
5084	When no one else is around, sometimes I consider doing things with ____.	0	1	Furry
5085	Actually coming inside ____.	0	1	Furry
5086	I don't know how we got on the subject of dragon cocks, but it probably started with ____.	0	1	Furry
5087	____ is a shining example of what those with autism can really do.	0	1	Furry
5088	It is my dream to be covered with ____.	0	1	Furry
5089	____ fucking ____. Now that's hot.	0	2	Furry
5090	Would you rather suck ____, or get dicked by ____?	0	2	Furry
5091	It never fails to liven up the workplace when you ask your coworkers if they'd rather have sex with ____ or ____.	0	2	Furry
5092	HELLO FURRIEND, HOWL ARE YOU DOING?	0	1	Furry
5093	What are the two worst cards in your hand right now?	0	2	Furry
5094	Nobody believes me when I tell that one story about walking in on ____.	0	1	Furry
5095	You don't know who ____ is? They're the one that draws ____.	0	2	Furry
5104	You sometimes wish you'd encounter ____ while all alone, in the woods. With a bottle of lube.	0	1	Furry
5105	I used to avoid talking about ____, but now it's just a part of normal conversation with my friends.	0	1	Furry
100266	The most controversial game at PAX this year is an 8-bit indie platformer about ____. (38/44)	0	1	PAX
1377	You're a human transported to Equestria! The first thing you'd look for is ____.	0	1	CAE
1378	Zecora is a well known supplier of ____ and ____.	0	2	CAE
100267	There was a riot at the Gearbox panel when they gave the attendees ____. (41/44)	0	1	PAX
8377	____ didn't make it onto the first AT4W DVD.	0	1	TGWTG
8378	____ is part of the WTFIWWY wheelhouse.	0	1	TGWTG
8379	____ is the subject of the Critic's newest review.	0	1	TGWTG
8380	____ is the subject of the missing short from The Uncanny Valley.	0	1	TGWTG
8381	____ needs more gay.	0	1	TGWTG
8382	____ will be Linkara's next cosplay.	0	1	TGWTG
8383	____ wound up in this week's top WTFIWWY story.	0	1	TGWTG
8384	After getting snowed in at MAGfest, the reviewers were stuck with ____.	0	1	TGWTG
8385	ALL OF ____.	0	1	TGWTG
8386	An intervention was staged for Linkara after ____ was discovered in his hat.	0	1	TGWTG
8387	As a way of apologizing for a poorly received episode, E Rod promised to review ____.	0	1	TGWTG
8388	Being done with My Little Pony, 8-Bit Mickey has moved onto ____.	0	1	TGWTG
8389	Birdemic 3: ____	0	1	TGWTG
8390	E Rod has a new dance move called ____.	0	1	TGWTG
8391	Even Kyle thinks ____ is pretentious.	0	1	TGWTG
8392	Florida's new crazy is about ____.	0	1	TGWTG
100299	What made Spock cry?	0	1	13PAX
100300	____: Achievement unlocked.	0	1	13PAX
100304	What's the latest bullshit that's troubling this quaint fantasy town?	0	1	13PAX
8395	Hey kids, I'm Nash, and I couldn't make ____ up if I tried.	0	1	TGWTG
8396	Hey Nash, whatcha playin'?	0	1	TGWTG
8397	How is Bennett going to creep out Ask That Guy this time? 	0	1	TGWTG
8398	In his most recent Avatar vlog, Doug's favorite thing about the episode was ____.	0	1	TGWTG
8399	In the newest Cheap Damage, CR looks at the trading card game version of ____.	0	1	TGWTG
8400	IT'S NOT ____!	0	1	TGWTG
8401	It's not nudity if there's ____.	0	1	TGWTG
8402	Leon Thomas almost named his show Renegade ____.	0	1	TGWTG
8403	Linkara was shocked when he found out Insano was secretly ____.	0	1	TGWTG
8404	Linkara's Yu-Gi-Oh deck is built up with nothing but ____.	0	1	TGWTG
8405	Luke Mochrie proved he was still part of the site by____.	0	1	TGWTG
8406	MikeJ's next sexual conquest is ____.	0	1	TGWTG
8407	Nash had a long day at work, so tonight he'll stream ____.	0	1	TGWTG
8408	Nash rejected yet another RDA request for ____.	0	1	TGWTG
8409	Nash's recent rant about Microsoft led to ____.	0	1	TGWTG
8410	Nash's Reviewer Spotlight featured ____.	0	1	TGWTG
8411	New rule in the RDA Drinking Game:  Every time ____ happens, take a shot!	0	1	TGWTG
8412	On the next WTFIWWY, Nash will give us a brief history of ____.	0	1	TGWTG
8413	The best Bad Movie Beatdown sketch is where Film Brain ropes Lordhebe into ____.	0	1	TGWTG
8414	The controversy over ad-blocking could be easily solved by ____.	0	1	TGWTG
8415	The easiest way to counteract a DMCA takedown notice is with ____.	0	1	TGWTG
8416	The last time Welshy and Film Brain were in a room together, they ended up ____.	0	1	TGWTG
8417	The new site that will overtake TGWTG is ____.	0	1	TGWTG
8418	The newest Rap Libs makes extensive use of the phrase "____."	0	1	TGWTG
8419	The theme of this week's WTFIWWY is ____.	0	1	TGWTG
8420	This week, Nash's beer is made with ____.	0	1	TGWTG
8421	What did Doug bring to the set of To Boldly Flee?	0	1	TGWTG
8422	What does Ven have to do now?	0	1	TGWTG
8423	What hot, trendy new dance will feature in Paw's next Dance Spectacular?	0	1	TGWTG
8424	What is hidden in Linkara's hat?	0	1	TGWTG
8425	What is literally the only thing tastier than a dragon's soul?	0	1	TGWTG
8426	What is Snowflame's only known weakness?	0	1	TGWTG
8427	What is the name of the next new Channel Awesome contributor?	0	1	TGWTG
8428	What killed Harvey Finevoice's son?	0	1	TGWTG
8429	What made Dodger ban someone from the RDA chat this week?	0	1	TGWTG
8430	What new upgrade did Nash give Laura?	0	1	TGWTG
8431	What was the first sign that Linkara was turning evil?	0	1	TGWTG
8432	What will Nash try to kill next with his hammer?	0	1	TGWTG
8433	When Arlo The Orc turns into a werewolf, he likes to snack on ____.	0	1	TGWTG
8434	When interviewing Linkara, be sure to ask him about ____!	0	1	TGWTG
8435	When not reviewing or ruling Haganistan with an iron fist, Hagan's hobby is ____.	0	1	TGWTG
8436	Who REALLY called Oancitizen to help him snap out of his ennui?	0	1	TGWTG
8437	Whose ass did Zodann kick this time?	0	1	TGWTG
8438	Why did Nash go to Chicago?	0	1	TGWTG
8439	Why doesn't Doug ever attend MAGFest?	0	1	TGWTG
8440	Why doesn't Film Brain have an actual reviewer costume?	0	1	TGWTG
8441	The MAGFest Nerf War took a dark turn when ____ was waylaid by ____.	0	2	TGWTG
8442	For a late night snack, Nash made a sandwich of ____ and ____.	0	2	TGWTG
8443	The next TGWTG porn spoof?  ____ with ____!	0	2	TGWTG
8444	Putting ____ in ____? That doesn't go there!	0	2	TGWTG
8445	In trying to ban ____, Florida accidentally banned ____.	0	2	TGWTG
8446	If ____ got to direct an Uncanny Valley short, it would have featured ____.	0	2	TGWTG
8447	At ConBravo, ____ will be hosting a panel on ____.	0	2	TGWTG
8448	At MAGFest, ____ will host a panel focusing on ____.	0	2	TGWTG
8449	"Greetings, dear listeners.  Won't you join ____ for ____?"	0	2	TGWTG
8450	Sad Panda is actually ____ and  ____.	0	2	TGWTG
8451	I'm going to die watching ____ review ____.	0	2	TGWTG
8452	In a new latest announcement video, ____ has announced an appearance at ____.	0	2	TGWTG
8453	After ____, Phelous regenerated into ____. 	0	2	TGWTG
8454	____ and ____ would make awesome siblings.	0	2	TGWTG
8455	Some fangirls lay awake all night thinking of ____ and ____ together.	0	2	TGWTG
8456	In my new show, I review ____ while dressed like ____.	0	2	TGWTG
8457	Luke's newest character is ____, the Inner ____.	0	2	TGWTG
8458	Good evening! I am ____ of  ____.	0	2	TGWTG
8459	____ is the reason that ____ picked "AIDS."	0	2	TGWTG
8460	Nash's newest made-up curse word is ____-____-____! 	2	3	TGWTG
8461	Using alchemy, combine ____ and ____ to make ____! 	2	3	TGWTG
8462	Write Linkara's next storyline as a haiku.	2	3	TGWTG
8463	Nash will build his next contraption with just ____, ____, and ____.	2	3	TGWTG
8464	 ____  did ____ to avoid ____.	2	3	TGWTG
8465	Make a WTFIWWY story.	2	3	TGWTG
8466	Dang it, ____!	0	1	NL
8467	____ was full of leeches.	0	1	NL
8468	Pimp your ___!	0	1	NL
8469	My apologies to the ____ estate.	0	1	NL
8470	What interrupted the #NLSS?	0	1	NL
8471	Travel by ____.	0	1	NL
8472	The stream broke when Ryuka stepped on the ____ key.	0	1	NL
8473	Say that to my face one more time and I'll start ____.	0	1	NL
8474	Oh my god, he's using ____ magic!	0	1	NL
8475	Krazy Mike lost to ____!	0	1	NL
8476	What would you do if Ohm really did just die?	0	1	NL
8477	____ has invaded!	0	1	NL
8478	We're having technical difficulties due to ____.	0	1	NL
8479	JSmithOTI is referred to as a Scumlord, but his friends call him ____.	0	1	NL
8573	Barry entertains himself by watching old episodes of ____.	0	1	GG
8480	Ohmwrecker is known for his MLG online play. What people don't know is that he's also MLG at ____.	0	1	NL
8481	Follow MichaelALFox on Twitter and you can see pictures of ____.	0	1	NL
8482	After Mars, ____ is the next furthest planet from the sun.	0	1	NL
8483	What would Ohm do?	0	1	NL
8484	The next movie reading will be of ____.	0	1	NL
8485	How did Northernlion unite Scotland?	0	1	NL
8486	Green loves the new Paranautical Activity item ____, but keeps comparing it to the crossbow.	0	1	NL
8487	____ is really essential to completing the game.	0	1	NL
8488	My channel is youtube.com/____.	0	1	NL
8489	Northernlion's cat Ryuka is known for ____ while he records.	0	1	NL
8490	What gave Ohmwrecker his gaming powers?	0	1	NL
8491	Hello anybody, I am ____Patrol.	0	1	NL
8492	I have ____, can you ____ me?	0	2	NL
8493	____! Get off the ____!	0	2	NL
8494	My name is ____ and today we'll be checking out ____.	0	2	NL
8495	It's true that Green9090 is ____, but we must all admit that Ohm is better at ____	0	2	NL
8496	That's the way ____ did it, that's the way ____ does it, and it''s worked out pretty well so far.	0	2	NL
8497	Today on Crusader Kings 2, NL plays King ____ the ____.	0	2	NL
8498	After winning yet another race, Josh made ____ tweet about ____.	0	2	NL
8499	This time on ____ vs. ____, we're playing ____.	2	3	NL
8500	Welcome back to ____.	0	1	GG
8501	Welcome to Sonic Team! We make ____, I think!	0	1	GG
8502	What am I willing to put up with today?	0	1	GG
8503	What can be found in Arin's chins?	0	1	GG
8504	What do Mumbo's magic words mean?	0	1	GG
8505	What is the boopinest shit?	0	1	GG
8506	WHAT THE FUCK IS A ____?!	0	1	GG
8507	What's better than Skyward Sword?	0	1	GG
8508	What's the real reason Jon left?	0	1	GG
8509	When I look in the mirror I see ____.	0	1	GG
8510	Who replaced Jon when he left GameGrumps?	0	1	GG
8511	Who's an asshole?	0	1	GG
8512	Why is Steam Train so controversial?	0	1	GG
8513	WOOP WOOP WOOP I'M A ____!	0	1	GG
8514	You know what fan mail makes me the happiest every time I see it? It's the ones where people are like, "____." 	0	1	GG
8515	You're ruining my integrity! ____ won't hire me now!	0	1	GG
8516	I've been ____ again!	0	1	GG
8517	Rolling around at the speed of ____!	0	1	GG
8518	This time on Guest Grumps, we have ____.	0	1	GG
8519	Top five games, go! 1? Mega Man X. 2-5? ____.	0	1	GG
8520	Use your ____!	0	1	GG
8521	Look at this guy, he's like ____.	0	1	GG
8522	Look, it's ____!	0	1	GG
8523	Next time on Game Grumps, ____!	0	1	GG
8524	Nightshade: The Claws of ____.	0	1	GG
8525	Number one! With a bullet! Zoom in on the ____!	0	1	GG
8526	Oh, it's ____!	0	1	GG
8527	One slice of ____ please.	0	1	GG
8528	Pikachu, use your ____ attack!	0	1	GG
8529	Put a hole in that ____!	0	1	GG
8530	Real talk? ____.	0	1	GG
8531	Jon's mom called him to tell him about ____.	0	1	GG
8532	Kirby has two iconic abilities: suck and ____.	0	1	GG
8533	Listen to the ____ on this shit.	0	1	GG
8534	Jon believes that the most important part of any video game is ____.	0	1	GG
8535	Jon can't get enough of ____.	0	1	GG
8536	Jon can't survive air travel without ____.	0	1	GG
8537	Jon just wants to touch ____.	0	1	GG
8538	Is there anything to gain from this?	0	1	GG
8539	It's no use! Take ____!	0	1	GG
8540	Jon and Arin suck at ____.	0	1	GG
8541	Jon and Arin win! They realize ____ is more important.	0	1	GG
8542	If the ____ wasn't there, I would do. But it's there, so it's not.	0	1	GG
8543	How many ____ does Mega Man get?	0	1	GG
8544	How many nose hairs does ____ have?	0	1	GG
8545	I certainly can't do it without you, and I know you can't do it without ____!	0	1	GG
8546	I tell you once, I tell you twice! ____ is good for economy!	0	1	GG
8547	I wanna put my ____ in her!	0	1	GG
8548	I'm not even SELLING ____!	0	1	GG
8549	Do you remember the episode where Ash caught a ____?	0	1	GG
8550	Don't throw ____! It's expensive to somebody!	0	1	GG
8551	Dude, real talk? ____.	0	1	GG
8552	Eat your ____, son.	0	1	GG
8553	Egoraptor's fiancee is actually a ____.	0	1	GG
8554	Everybody wants to know about me, but they don't know about my ____.	0	1	GG
8555	Fool me once, I'm mad. Fool me twice? How could you. Fool me three times, you're officially ____.	0	1	GG
8556	For my first attack, I will juggle ____ to impress you.	0	1	GG
8557	Fuck, I found a ____.	0	1	GG
8558	Game Grumps: sponsored by ____.	0	1	GG
8559	Give ____ a chance! He'll grow on you!	0	1	GG
8560	____? Ten-outta-ten!	0	1	GG
8561	____. I AAAAAAIN’T HAVIN’ THAT SHIT!	0	1	GG
8562	____. It's no use!	0	1	GG
8563	____. MILLIONS ARE DEAD!!!	0	1	GG
8564	____. Put that in, Barry.	0	1	GG
8565	____. This is like one of my Japanese animes!	0	1	GG
8566	...What the bloody hell are you two talking about?!	0	1	GG
8567	"These new ____ t-shirts are gonna change some lives, Arin."	0	1	GG
8568	"You want cheese pizza?" "No. ____."	0	1	GG
8569	And then, as a fuckin' goof, I'd put a hole in ____.	0	1	GG
8570	And there it was...Kirby had finally met the ____ of the lost city.	0	1	GG
8672	It took hours to edit ____ into the video.	0	1	DAH
8571	Arin believes that the most important part of any video game is ____.	0	1	GG
8572	Arin has an adverse reaction to ____.	0	1	GG
8574	Barry, add ____ into the video!	0	1	GG
8575	Barry, we need a replay on ____.	0	1	GG
8576	BARRY! SHOW ____ AGAIN!	0	1	GG
8577	Barry's sheer skill at ____ is unmatched.	0	1	GG
8578	I don't like the ____ flavor.	0	1	GG
8579	____ don't even cost this less!	0	1	GG
8580	____ Grumps!	0	1	GG
8581	____ has aged really well.	0	1	GG
8582	____ is GREAT GREAT GREAT!	0	1	GG
8583	____ is Jon's favorite video game of all time.	0	1	GG
8584	____ is not Jon's strong suit.	0	1	GG
8585	____ Train!	0	1	GG
8586	____ WINS!	0	1	GG
8587	____: Better than deer shit!	0	1	GG
8588	Welcome back to ____ ____!	0	2	GG
8589	Real talk? Is that ____ ____?	0	2	GG
8590	Look at that ____-ass ____!	0	2	GG
8591	JON'S ____, SHOW US YOUR ____.	0	2	GG
8592	The Grumps' latest silly player names are ____ and ____.	0	2	GG
8593	If you don't know what ____ is, you can't go to ____.	0	2	GG
8594	In this corner, ____; in the other corner, ____; it's Game Grumps VS!	0	2	GG
8595	IF I CAN'T BE ____, I SURE AS HELL CAN BE ____!!	0	2	GG
8596	COME ON AND ____, AND WELCOME TO THE ____!	0	2	GG
8597	If ____ evolved from ____, why the fuck is there still ____, dude?!	2	3	GG
8598	____? Pretty smart. ____? Pretty fuckin' smart. ____? FUCKING GENIUS!!!!	2	3	GG
8599	____ is probably a Venusaur kind of guy.	0	1	RT
8600	____ is the greatest Canadian.	0	1	RT
8601	____ is the worst on the Podcast.	0	1	RT
8602	____. That's top.	0	1	RT
8603	After getting wasted at PAX, Burnie announced that "I am ____!"	0	1	RT
8604	Barbara sucks ____.	0	1	RT
8605	Close up of my ____.	0	1	RT
8606	Come to Fort ____!	0	1	RT
8607	Describe yourself in one word/phrase.	0	1	RT
8608	Detective ____ is down!	0	1	RT
8609	Does our house say "We love ____?"	0	1	RT
8610	Dude, I got sixteen ____!	0	1	RT
8611	Fight, fight, fight, ____?	0	1	RT
8612	Fuck it, I mean ____, right?	0	1	RT
8613	I'ma smother you in my ____!	0	1	RT
8614	If Jack was frog and you kissed him, what would he turn into?	0	1	RT
8615	If you could fuck anyone in the world, who would you choose?	0	1	RT
8616	If you could have any superpower, what would it be?	0	1	RT
8617	If you were allowed to do one illegal thing, what would it be? 	0	1	RT
8618	It's a ____ out there.	0	1	RT
8619	It's not my fault. Somebody put ____ in my way.	0	1	RT
8620	Joel plays ____.	0	1	RT
8621	Let's do ____ again! This is fun!	0	1	RT
8622	Lindsay could fuck up ____.	0	1	RT
8623	LLLLLLLLLLLLLET'S ____!	0	1	RT
8624	My ____ is trying to die.	0	1	RT
8625	On tonight's Let's Play, the AH crew plays ____.	0	1	RT
8626	People like ____.	0	1	RT
8627	RT Recap, featuring ____!	0	1	RT
8628	Shout out to ____!	0	1	RT
8629	Shout out to my mom. Called my Teddy Bear ____.	0	1	RT
8630	So, I was just walking along, until suddenly ____ came along and attacked me.	0	1	RT
8631	Thanks to ____ for this week's theme song.	0	1	RT
8632	The next RvB cameo will be voiced by ____.	0	1	RT
8633	They questioned Ryan's sanity after finding ____ in his house.	0	1	RT
8634	This week on AHWU, ____.	0	1	RT
8635	This week on Immersion, we are going to test ____.	0	1	RT
8636	What are fire hydrants called in England?	0	1	RT
8637	What does Ryan's kid listen to?	0	1	RT
8638	What is Game Night?	0	1	RT
8639	What is the meaning of life?	0	1	RT
8640	What is the saddest thing you've ever seen?	0	1	RT
8641	What is the worst thing anyone could say in front of the police?	0	1	RT
8642	What is your biggest feature?	0	1	RT
8643	What is your favorite book?	0	1	RT
8644	What is your mating call?	0	1	RT
8645	What makes Caboose angry?	0	1	RT
8646	What makes Michael the angriest?	0	1	RT
8647	What mysteries lie beyond Jack's beard? 	0	1	RT
8648	What would be your chosen catchphrase?	0	1	RT
8649	What's in Gavin's desk?	0	1	RT
8650	Where are we going for lunch?	0	1	RT
8651	Where does Ray belong?	0	1	RT
8652	Who has a fake Internet girlfriend?	0	1	RT
8654	Why are we here?	0	1	RT
8655	Why is Geoff cool?	0	1	RT
8656	Why was Michael screaming at Gavin?	0	1	RT
8657	Would you guys still like me if my name was ____?	0	1	RT
8658	You threw it against the wall like a ____!	0	1	RT
8659	____ is ____ as dicks.	0	2	RT
8660	____ is the best ____ ever. Of all time.	0	2	RT
8661	____ wins! ____ is a horse!	0	2	RT
8662	If you got $1,000,000 per week, would you ____, but in the next day, you'd have to ____?	0	2	RT
8663	My name is ____, and I hate ____!	0	2	RT
8664	No one in the office expected the bromance between ____ and ____.	0	2	RT
8665	Select two cards to create your team name.	0	2	RT
8666	This week on VS, ____ challenges ____ to a game of ____.	2	3	RT
8667	The war's over. We're holding a parade in ____'s honor. ____ drives the float, and ____ is in charge of confetti.	2	3	RT
8668	What's a paladin?	0	1	DAH
8669	One of these days i'm just gonna shit my ____.	0	1	DAH
8670	You need to ____ your asshole, it's vital to this operation.	0	1	DAH
8671	I'm sorry Timmy, but I must ____ you.	0	1	DAH
8673	In this week's gauntlet, Tehsmarty challenges ChilledChaos to ____.	0	1	DAH
8674	In this week's gauntlet, ChilledChaos challenges Tehsmarty to ____.	0	1	DAH
8675	I AM THE ____ CZAR!!!	0	1	DAH
8676	ZeRoyalViking's up and coming game company, "ZEA" accredits their success to ____.	0	1	DAH
8677	Tehsmarty loves the smell of ____ in the morning.	0	1	DAH
8678	The Creatures' next member is ____.	0	1	DAH
8679	Come on and slam, and welcome to the ____.	0	1	DAH
8680	____, the one you want to get DDoS'd	0	1	DAH
8653	Why are there six ____ when there are only four ____?	0	2	RT
8682	GaLmHD is so pro at almost every game he plays yet he can`t play____!	0	1	DAH
8683	Smarty's darkest fear is ____.	0	1	DAH
8684	Pewdiepie's going to play ____!?	0	1	DAH
8685	And here we have ____. Strike it's weakness for MASSIVE damage!	0	1	DAH
8686	But Beardman! Why do you think that ____?	0	1	DAH
8687	In the next episode of Press Heart to Continue: Dodger talks about ____.	0	1	DAH
8688	What did Criken do this time to break ARMA III? 	0	1	DAH
8689	What was the big prize this time around at the Thrown Controllers panel?	0	1	DAH
8690	What did Mitch or Bajan Canadian find in the fridge today?	0	1	DAH
8691	In ____ We Trust.	0	1	DAH
8692	When Sp00n finally removed his horsemask on the livestream, we saw ____.	0	1	DAH
8693	I give this game a rating of ____.	0	1	DAH
8694	What did Pewdiepie overreact to on his channel today?	0	1	DAH
8695	This time on Brutalmoose's Top 10, his guest was ____.	0	1	DAH
8696	Only Totalbiscuit would spend an hour long video discussing ____.	0	1	DAH
8697	Last Thursday, Riorach was identified in public and she proceeded to ____.	0	1	DAH
8698	On this episode of PKA Woody and Wings talk about ____.	0	1	DAH
8699	Bro's Angels. We ____ hard.	0	1	DAH
8700	TotalBiscuit's top hat is actually ____. 	0	1	DAH
8701	GTA shenanigans would not be GTA shenanigans without Seananners dropping ____ on ____.	0	2	DAH
8702	Knowing Chilled's knowledge with Minecraft, he'll probably use ____ on ____ in his next video.	0	2	DAH
8707	Oh great, ____ is doing another ____ game LP.	0	2	DAH
8708	In his new Co-op work SSoHPKC will be playing ____ with ____.	0	2	DAH
8709	My name is-a ____ and i likea da ____.	0	2	DAH
8704	In today's Driftor in-depth episode we shall look at ____.	0	1	DAH
8703	The Xbox One's DRM policy isn't half as bad as ____.	0	1	DAH
8705	What will YouTube add in its next unneeded update?	0	1	DAH
8706	Two Best Friends Play ____.	0	1	DAH
100384	What's fun until it gets weird?	0	1	X4
100386	Wes Anderson's new film tells the story of a precocious child coming to terms with ____.	0	1	X4
100388	I'm sorry, sir, but we don't allow ____ at the country club.	0	1	X4
100389	How am I compensating for my tiny penis?	0	1	X4
100395	Man, this is bullshit. Fuck ____.	0	1	X4
100396	You guys, I saw this crazy movie last night. It opens on ____, and then there's some stuff about ____, and then it ends with ____.	2	3	X4
100397	In return for my soul, the Devil promised me ____, but all I got was ____.	0	2	X4
100398	The Japanese have developed a smaller, more efficient version of ____.	0	1	X4
100399	Alright, bros. Our frat house is condemned, and all the hot slampieces are over at Gamma Phi. The time has come to commence Operation ____.	0	1	X4
100400	This is the prime of my life. I'm young, hot, and full of ____.	0	1	X4
100401	I'm pretty sure I'm high right now, because I'm absolutely mesmerized by ____.	0	1	X4
100402	It lurks in the night. It hungers for flesh. This summer, no one is safe from ____.	0	1	X4
100403	If you can't handle ____, you'd better stay away from ____.	0	2	X4
100404	Forget everything you know about ____, because now we've supercharged it with ____!	0	2	X4
100405	Honey, I have a new role-play I want to try tonight! You can be ____, and I'll be ____.	0	2	X4
100406	This year's hottest album is "____" by ____.	0	2	X4
100407	Every step towards ____ gets me a little closer to ____.	0	2	X4
100409	Do <i>not</i> fuck with me! I am literally ____ right now.	0	1	X4
100410	2 AM in the city that never sleeps. The door swings open and <i>she</i> walks in, legs up to here. Something in her eyes tells me she's looking for ____.	0	1	X4
100411	As king, how will I keep the peasants in line?	0	1	X4
100413	I am become ____, destroyer of ____!	0	2	X4
100387	____ will never be the same after ____.	0	2	X4
100391	We never did find ____, but along the way we sure learned a lot about ____.	0	2	X4
100393	____ may pass, but ____ will last forever.	0	2	X4
958	The seldomly mentioned 4th little pig built his house out of ____.	0	1	MrMan
902	Mom, I swear! Despite its name, ____ is NOT a porno!	0	1	AN
100408	Oprah's book of the month is "____ For ____: A Story of Hope."	0	2	X4
100421	But wait, there's more! If you order ____ in the next 15 minutes, we'll throw in ____ absolutely free!	0	2	HBS
100426	Blessed are you, Lord our God, creator of the universe, who has granted us ____.	0	1	HBS
8843	That fucking idiot ____ ragequit the fandom over ____.	1	2	FiM1
100427	Because they are forbidden from masturbating, Mormons channel their repressed sexual energy into ____.	0	1	HBS
100432	I really hope my grandmother doesn't ask me to explain ____ again.	0	1	HBS
100302	In the new DLC for Mass Effect, Shepard must save the galaxy from ____.	0	1	13PAX
100303	No Enforcer wants to manage the panel on ____.	0	1	13PAX
100390	You've seen the bearded lady!\nYou've seen the ring of fire!\nNow, ladies and gentlemen, feast your eyes upon ____!	0	1	X4
100392	She's up all night for good fun.\nI'm up all night for ____.	0	1	X4
100394	Dear Leader Kim Jong-un,\nour village praises your infinite wisdom with a humble offering of ____.	0	1	X4
100385	In the beginning, there was ____.\nAnd the Lord said, "Let there be ____."	0	2	X4
100412	Adventure.\nRomance.\n____.\n\nFrom Paramount Pictures, "____."	0	2	X4
100437	What's the one thing that makes an elf instantly ejaculate?	0	1	HBS
100442	Kids these days with their iPods and their Internet. In my day, all we needed to pass the time was ____.	0	1	HBS
8756	I always ____ ass - razor1000.	0	1	Imgur
8757	____ for temperature. 	0	1	Imgur
8758	Not asking for upvotes but ____.	0	1	Imgur
8759	I got ____ to the frontpage 	0	1	Imgur
8760	I know this is going to get downvoted to hell but ____.	0	1	Imgur
8761	I know this is a selfie but ____.	0	1	Imgur
8762	Imgur: where the points don’t matter and the ____ is made up.	0	1	Imgur
8763	If you could stop ____, that’d be greeeeattt. 	0	1	Imgur
8764	ERMAGERD! ____.	0	1	Imgur
8765	Not sure if Imgur reference or ____.	0	1	Imgur
8766	Having a bit of fun with the new ____.	0	1	Imgur
8767	Press 0 twice for ____.	0	1	Imgur
8768	No, no, you leave ____. We no like you.	0	1	Imgur
8769	FOR ____!!!!	0	1	Imgur
8770	If ____ happens because of ____, I will eat my socks.	0	2	Imgur
8771	Put that ____ back where it came from or so help me.	0	1	Imgur
8772	Yer a wizard ____	0	1	Imgur
8773	Am I the only one around here who ____?	0	1	Imgur
8774	Confession Bear: When I was 6, I ____ on my ____.	0	2	Imgur
8775	Actual Advice Mallard: Always ____.	0	1	Imgur
8776	For every upvote I will ____.	0	1	Imgur
8777	____. Awkward boner. 	0	1	Imgur
8778	____. Forever Alone.	0	1	Imgur
8779	____. TOO SAD AND TOO TINY!	0	1	Imgur
8780	I’ve never seen anyone so ____ while ____.	0	2	Imgur
8781	OH MY GOD ____. ARE YOU FUCKING KIDDING ME!?	0	1	Imgur
8782	You know nothing ____.	0	1	Imgur
8783	Most of the time you can only fit one____ in there.	0	1	Imgur
8784	That ____ tasted so bad, I needed a Jolly Rancher. 	0	1	Imgur
8785	I don’t always ____. But when I do____..	0	2	Imgur
8786	+1 for ____.	0	1	Imgur
8787	SAY GOODBYE TO____.	0	1	Imgur
8788	When I found ____ in usersubmitted, I was flabbergasted. 	0	1	Imgur
8789	France is ____	0	1	Imgur
8790	The ____ for this ____ is TOO DAMN HIGH. 	0	2	Imgur
8791	Any love for ____?	0	1	Imgur
8792	In Japan, ____ is the new sexual trend.	0	1	Imgur
8793	I love bacon as much as ____ loves ____.	0	2	Imgur
8794	A hipster needs a ____ as much as a fish needs a ____.	0	2	Imgur
8795	Justin Bieber is a ____.	0	1	Imgur
8796	Are you my ____?	0	1	Imgur
8797	Weasley is our ____.	0	1	Imgur
8798	I have a bad feeling about ____.	0	1	Imgur
8799	I am a leaf on the ____.	0	1	Imgur
8800	That was more awkward than ____.	0	1	Imgur
8801	Boardgame Online is more fun than ____.	0	1	Imgur
8802	I hate My Little Pony more than ____ hates ____.	0	2	Imgur
8803	I love My Little Pony more than ____ loves ____.	0	2	Imgur
8804	Cat gifs are cuter than ____. 	0	1	Imgur
8805	If it fits, I ____. 	0	1	Imgur
8806	____. My moon and my stars. 	0	1	Imgur
8807	A ____ always pays his debts. 	0	1	Imgur
8808	My ovaries just exploded because of ____. 	0	1	Imgur
8809	Chewie, ____ it!	0	1	Imgur
8810	Steven Moffat has no ____. 	0	1	Imgur
8811	Dobby is ____!!	0	1	Imgur
8812	The court finds the defendant, ____, guilty of ____, and sentences them to a lifetime of ____.	2	3	ANX1
8813	____ ____ Divided By ____.	2	3	FiM1
8815	____ adds a thread in the Anti-____ group, and everybody loses their fucking minds.	1	2	FiM1
8816	____ is Best Pony.	0	1	FiM1
8817	____ is the least autistic ____ on Fimfiction.	1	2	FiM1
8818	____ posted that they're not working on fics for a while, because ____.	1	2	FiM1
8819	____ signalled the end of the ____ Age of FiMfiction.net.	1	2	FiM1
8820	____ signalled the end of the Golden Age of FiMfiction.net.	0	1	FiM1
8821	____ was a strong stallion.	0	1	FiM1
8822	____, ____, and ____ in a sexy circlejerk.	2	3	FiM1
8823	A clopfic about ____ with ____, and ____ is a sexy orphan.	2	3	FiM1
8824	An alternate universe where ____ is instead ____.	1	2	FiM1
8825	Fallout Equestria is ____ and tends to overdramaticize its ____.	0	2	FiM1
8826	Hey, let's cross over ____ and MLP! Why the fuck not?	0	1	FiM1
8827	I commissioned a picture of ____ violating ____ with ____'s dick.	2	3	FiM1
8828	I hope someone writes a fic about ____ because I am too fucking lazy to do it myself.	0	1	FiM1
8829	I just read a fic where ____ was fucking ____.	1	2	FiM1
8830	I just started the ____verse.	0	1	FiM1
8831	I swear I'm going to quit the fandom if ____ happens.	0	1	FiM1
8832	If only people bothered to read Ezn's ____ Guide!	0	1	FiM1
8833	knighty's new blogpost is about ____	0	1	FiM1
8834	My ____ Pony	0	1	FiM1
8835	My Little Dashie? How about My Little ____?	0	1	FiM1
8836	My OTP is ____ and ____.	1	2	FiM1
8837	Oh, fuck, someone made a group about ____.	0	1	FiM1
8838	Oh, look, ____ made a fan group for themselves.	0	1	FiM1
8839	RainbowBob's newest clopfic: ____ X ____	0	2	FiM1
8840	Remember when ____ was on every page?	0	1	FiM1
8841	Short Skirts and ____.	0	1	FiM1
8842	Someone should write a clopfic of ____ fucking ____, using ____ as lubricant.	2	3	FiM1
8844	The ____ Bureau.	0	1	FiM1
8845	The ____ Group of ____ Excellence.	1	2	FiM1
8846	The cardinal sin of FiMFic noobs: _____ without ______	0	2	FiM1
8847	The Incredible ____ Of A Winning ____.	1	2	FiM1
5211	Ironic ____ is still ____.\n\n(same in both blanks)	0	1	Vidya
8814	____ \n~Skeeter The Lurker	0	1	FiM1
8848	There's a crossover fic about ____ and ____ in the FB.	0	2	FiM1
8939	____: ____ in fiction, ____ on the tabletop.	1	3	/tg/
8940	I proxy ____ using a second-hand ____.	0	2	/tg/
8941	Next up: Lord Lysander's paints ____.	0	1	/tg/
8942	The citizens of Innsmouth are really ____!	0	1	/tg/
8943	I am Angry, Angry about ____.	0	1	/tg/
8944	In respect to your chapter, the Blood Ravens have dedicated one of their____to ____.	0	2	/tg/
8945	Roll for ____.	0	1	/tg/
8946	I prepared ____ this morning.	0	1	/tg/
8947	The bard nearly got us killed when he rolled to seduce ____.	0	1	/tg/
8948	____ causes the Paladin to fall	0	1	/tg/
8949	The door to the FLGS opens and a ____ walks in!	0	2	/tg/
8950	GW stores no longer stock____	0	1	/tg/
8951	The price on ____ Has doubled!	0	1	/tg/
8952	____ falls, everyone dies.	0	1	/tg/
8953	My GM just made his girlfriend a ____ character. How fucked are we?	0	1	/tg/
8954	If you buy a camel, Crazy Hassan is adding in free ____ this week only!	0	1	/tg/
8955	Around elves, watch ____	0	1	/tg/
8956	The only good ____ is a dead ____	1	2	/tg/
8957	...And then he killed the Tarasque with a ____	0	1	/tg/
8958	There is a ____ on the roof.	0	1	/tg/
8959	What are we going to argue about today?	0	1	/tg/
8960	I got a box today. What's inside? ____	0	1	/tg/
8961	Roll ____ circumference	0	1	/tg/
8963	____ vs. ____: Critical Hit!	1	2	/tg/
8964	Then the barbarian drank from the ____-filled fountain	0	1	/tg/
8965	____: That was a thing.	0	1	/tg/
8967	Where we're going, we won't need ____ to see	0	1	/tg/
8968	You encounter a Gazebo. You respond with ____	0	1	/tg/
8970	Your Natural 1 summons ____.	0	1	/tg/
8971	It would have taken ____ to..... CREEEEEEEEEED!	0	1	/tg/
8972	Can ____ bloom on the battlefield?	0	1	/tg/
8974	____? That's ULTRA heretical	0	1	/tg/
8975	So I made my chapter insignia ____	0	1	/tg/
8976	In the grim darkness of the far future there is only ____	0	1	/tg/
8977	2e or ____	0	1	/tg/
8978	Blood for the blood god! ____ for the ____!	1	2	/tg/
8979	____. we don't need other boards anymore!	0	1	/tg/
8980	____ just fucked us	0	1	/tg/
8981	The guard looks a troubled, uncomfortable glare, like a man who must explain to his ____, that's its dreams of becoming ____ will never happen.	1	2	/tg/
8982	Dwarf Fortress needs more ____	0	1	/tg/
8983	My ____ are moving on their own	0	1	/tg/
8984	Welcome to the ____ Quest Thread.	0	1	/tg/
8985	You should never let your bard ____.	0	1	/tg/
8986	That one guy in my group always rolls a chaotic neutral ____.	0	1	/tg/
8987	The lich's phylactery is a  ____!	0	1	/tg/
8988	Macha was dismayed to find out that ____.	0	1	/tg/
8989	Never fire ____ at the bulkhead!	0	1	/tg/
8990	____ is the only way I can forget about 4e.	0	1	/tg/
8991	I sure hope no one notices that I inserted my ____ fetish into the game.	0	1	/tg/
8992	Behold! White Wolf's newest game: ____: the ____.	1	2	/tg/
8993	For our upcoming FATAL game, I've assigned ____ as your new character.	0	1	/tg/
8994	The GM has invited his new ____ to join the game. They'll be playing ____.	1	2	/tg/
8995	0/10 would not ____.	0	1	/tg/
8996	The ____ guides my blade.	0	1	/tg/
8997	Don't touch me ____!	0	1	/tg/
8998	Mountain, Black lotus, sac, to cast ____.	0	1	/tg/
8999	____ followed by gratuitous ____ is how I got kicked out off my last group.	0	2	/tg/
9000	Everybody was surprised when the king's trusted adviser turned out to be ____.	0	1	/tg/
9001	You and ____ must stop ____ with the ancient artifact ____.	1	3	/tg/
9002	Elf ____ Wat do?	0	1	/tg/
9003	Magic the Gathering's next set is themed around ____.	0	1	/tg/
9004	We knew the game was off to a good start when the GM didn't veto a player's decision to play as ____.	0	1	/tg/
9005	My Kriegers came in a box of ____!	0	1	/tg/
9006	I had to kill a party member when wasted 2 hours by ____.	0	1	/tg/
9007	We found ____in the Dragon's hoard.	0	1	/tg/
9008	What's on today's agenda for the mage guild meeting?	0	1	/tg/
9009	____ is the only way to fix 3.5.	0	1	/tg/
9010	What is the BBEG's secret weapon?	0	1	/tg/
9011	Ach! Hans run! It's the ____!	0	1	/tg/
9012	The enemy's ____ is down.	0	1	/tg/
9013	Only fags play mono____.	0	1	/tg/
9014	What is better than 3D women?	0	1	/tg/
9015	I kept getting weird looks at FNM when I brought my new ____ card sleeves.	0	1	/tg/
9016	I like to dress up like ____ and hit people with foam swords.	0	1	/tg/
9017	You've been cursed by the witch! Your ____ has turned into a ____!	0	2	/tg/
9018	The adventure was going fine until the BBEG put ____ in our path.	0	1	/tg/
9019	Your BBEG is actually ____!	0	1	/tg/
9020	The last straw was the Chaotic Neutral buying a case of ____.	0	1	/tg/
9021	What won't the Bard fuck?.	0	1	/tg/
9022	____! what was that?	0	1	/tg/
9023	You roll 00 for your magical mishap and turn into ____.	0	1	/tg/
9024	You fool! you fell victim to one of the classic blunders: ____.	0	1	/tg/
9025	...and then the bastard pulled out ____ and placed it on the table.	0	1	/tg/
9183	What is your OT3?	2	3	MSPA
9026	I cast magic missile at ____.	0	1	/tg/
9027	Wait! I'm a ____! Let me tell you about my ____!	0	2	/tg/
8966	>preferring 3D women over ____	0	1	/tg/
8969	D&D: 6th edition will feature ____ as a main race!	0	1	/tg/
8973	>mfw ____.	0	1	/tg/
9028	Whenever we run ____, it's customary that ____ pays for the group's pizza.	0	2	/tg/
9112	My most shameful orgasm was the time I masturbated to ____.	0	1	RPF
9113	I got an STD from ____.	0	1	RPF
9114	____ is serious business.	0	1	RPF
9115	If you don't pay your Comcast cable bill, they will send ____ after you.	0	1	RPF
9116	Mewtwo achieved a utopian society when he eliminated ____ once and for all.	0	1	RPF
9117	The only thing that caused more of a shitfit than Mewtwo's new form is ____.	0	1	RPF
9118	The idiots in that one room at the Westin finally got kicked out of Anthrocon for ____.	0	1	RPF
9119	Furaffinity went down for 48 hours because of ____.	0	1	RPF
9120	Anthrocon was ruined by ____.	0	1	RPF
9121	I unwatched his FurAffinity page because he kept posting ____.	0	1	RPF
9122	You don't want to find ____ in your Furnando's Lasagna Wrap.	0	1	RPF
9123	____ ruined the ____ fandom for all eternity.	0	2	RPF
9124	I was fapping to ____, but ____ walked in on me.	0	2	RPF
9125	In recent tech news, computers are now being ruined by ____.	0	1	RPF
9126	Yu-Gi-Oh players were shocked when the win condition of holding 5 Exodia pieces was replaced by ____, ____, and ____. 	2	3	RPF
9127	What are the worst 3 cards in your hand right now?	2	3	RPF
9128	____ makes the Homestuck fandom uncomfortable.	0	1	MSPA
9129	____ stays awake at night, crying over ____.	0	2	MSPA
9130	____. It keeps happening!	0	1	MSPA
9131	"Sacred leggings" was a mistranslation. The Sufferer actually died in Sacred ____.	0	1	MSPA
9132	After throwing ____ at Karkat's head, Dave made the intriguing discover that troll horns are very sensitive.	0	1	MSPA
9133	AG: Who needs luck when you have ____?	0	1	MSPA
9134	All ____. All of it!	0	1	MSPA
9135	Alternia's political system was based upon ____.	0	1	MSPA
9136	Believe it or not, Kankri's biggest trigger is ____.	0	1	MSPA
9137	Dave Strider likes ____, but only ironically.	0	1	MSPA
9138	Equius beats up Eridan for ____.	0	1	MSPA
9140	Feferi secretly hates ____.	0	1	MSPA
9141	For Betty Crocker's latest ad campaign/brainwashing scheme, she is using ____ as inspiration.	0	1	MSPA
9142	For his birthday, Dave gave John ____.	0	1	MSPA
9143	Fuckin' ____. How do they work?	0	1	MSPA
9144	Gamzee not only likes using his clubs for juggling and strifing, he also uses them for____.	0	1	MSPA
9145	Getting a friend to read Homestuck is like ____.	0	1	MSPA
9146	How do I live without ____?	0	1	MSPA
9147	Hussie died on his quest bed and rose as the fully realized ____ of ____.	0	2	MSPA
9148	Hussie unintentionally revealed that Homestuck will end with ____ and ____ consummating their relationship at last.	0	2	MSPA
9149	I am ____. It's me.	0	1	MSPA
9150	I finally became Tumblr famous when I released a gifset of ____.	0	1	MSPA
9151	I just found ____ in my closet it is like fucking christmas up in here.	0	1	MSPA
9152	I warned you about ____, bro! I told you, dog!	0	1	MSPA
9153	In the final battle, John distracts Lord English by showing him ____.	0	1	MSPA
9154	It's hard, being ____. It's hard and no one understands.	0	1	MSPA
9155	John is a good boy. And he loves ____.	0	1	MSPA
9156	John may not be a homosexual, but he has a serious thing for ____.	0	1	MSPA
9157	Kanaya reached into her dead lusus's stomach and retrieved ____.	0	1	MSPA
9158	Kanaya tells Karkat about ____ to cheer him up.	0	1	MSPA
9159	Karkat gave our universe ____.	0	1	MSPA
9160	Latula and Porrin have decided to teach Kankri about the wonders of ____.	0	1	MSPA
9161	Little did they know, the key to defeating Lord English was actually ____.	0	1	MSPA
9162	Little known fact: Kurloz's stitching is actually made out of ____.	0	1	MSPA
9163	Nanna baked a cake for John to commemorate ____.	0	1	MSPA
9164	Nepeta only likes Karkat for his ____.	0	1	MSPA
9165	Nepeta's secret OTP is ____ with ____.	0	2	MSPA
9166	The next thing Hussie will turn into a sex joke will be ____.	0	1	MSPA
9167	Nobody was surprised to find ____ under Jade's skirt. The surprise was she used it for/on ____.	0	2	MSPA
9168	The only way to beat Vriska in an eating contest is to put ____ on the table.	0	1	MSPA
9169	Porrim made Kankri a sweater to cover his ____.	0	1	MSPA
9170	Problem Sleuth had a hard time investigating ____.	0	1	MSPA
9171	The real reason Terezi stabbed Vriska was to punish her for ____.	0	1	MSPA
9172	Rose was rather disgusted when she started reading about ____.	0	1	MSPA
9173	The secret way to achieve God Tier is to die on top of ____.	0	1	MSPA
9174	Terezi can top anyone except ____.	0	1	MSPA
9175	The thing that made Kankri break his vow of celibacy was ____.	0	1	MSPA
9176	Turns out, pre-entry prototyping with ____ was not the best idea.	0	1	MSPA
9177	Vriska killed Spidermom with ____.	0	1	MSPA
9178	Vriska roleplays ____ with Terezi as ____.	0	2	MSPA
9179	Vriska's greatest regret is ____.	0	1	MSPA
9180	Wear  ____. Be ____.	0	2	MSPA
9181	What did Jake get Dirk for his birthday?	0	1	MSPA
9182	What is the worst thing that Terezi ever licked?	0	1	MSPA
9184	What makes your kokoro go "doki doki"?	0	1	MSPA
9185	What's in the box, Jack?	0	1	MSPA
9186	When a bucket is unavailable, trolls with use ____.	0	1	MSPA
9187	When Dave received ____ from his Bro for his 9th birthday, be felt a little warm inside.	0	1	MSPA
9188	The hole in Kanaya's stomach is so large, she can fit ____ in it.	0	1	MSPA
9189	where doing it man. where MAKING ____ HAPEN!	0	1	MSPA
9190	Your name is JOHN EGBERT and boy do you love ____!	0	1	MSPA
9191	____. On the roof. Now.	0	1	MSPA
9192	____ totally makes me question my sexuality.	0	1	MSPA
9193	Whenever I see ____ on MSPARP, I disconnect immediately.	0	1	MSPA
9194	Calliborn wants you to draw pornography of ____.	0	1	MSPA
9195	They found some more last episodes! They were found in ____.	0	1	DW
9196	The Doctor did it! He saved the world again! This time using a ____.	0	1	DW
9198	I'd give up ____ to travel with The Doctor.	0	1	DW
9199	The next Doctor Who spin-off is going to be called ____.	0	1	DW
9200	Who should be the 13th Doctor?	0	1	DW
9201	The Chameleon circuit is working again...somewhat. Instead of a phone booth, the TARDIS is now a ____.	0	1	DW
9202	Originally, the 50th special was going to have ____ appear, but the BBC decided against it in the end.	0	1	DW
9203	After we watch an episode, I've got some ____-flavored Jelly Babies to hand out.	0	1	DW
9204	Wibbly-wobbly, timey-wimey ____.	0	1	DW
9205	What's going to be The Doctor's new catchphrase?	0	1	DW
9206	Bowties are ____.	0	1	DW
9207	Old and busted: EXTERMINATE! New hotness: ____.	0	1	DW
9208	There's a new dance on Gallifrey. It's called the ____.	0	1	DW
9209	They announced a new LEGO Doctor Who game! Rumor has it that ____ is an unlockable character.	0	1	DW
9210	FUN FACT: The Daleks were originally shaped to look like ____.	0	1	DW
9211	At this new Doctor Who themed restaurant, you can get a free ____ if you can eat a plate of bangers and mash in under 3 minutes.	0	1	DW
9213	Who is going to be The Doctor's next companion?	0	1	DW
9214	I think the BBC is losing it. They just released a Doctor Who themed ____.	0	1	DW
9215	It's a little known fact that if you send a ____ to the BBC, they will send you a picture of The Doctor.	0	1	DW
9216	I was ok with all the BAD WOLF graffiti, until someone wrote it on ____.	0	1	DW
9217	Jack Harkness, I can't leave you alone for a minute! I turn around and you're trying to seduce ____.	0	1	DW
9218	In all of space and time you decide that ____ is a good choice?!	0	1	DW
9219	Adipose were thought to be made of fat, but are really made of ____.	0	1	DW
9220	I hear the next thing that will cause The Doctor to regenerate is ____.	0	1	DW
9221	Honey badger don't give a ____!	0	1	KHAOS
9222	My next video turorial covers ____.	0	1	KHAOS
9223	We found a map Charlie! A map to ____ Mountain!	0	1	KHAOS
9224	For the love of GOD, and all that is HOLY, ____!!	0	1	KHAOS
9225	The new Operating System will be called ____.	0	1	KHAOS
9226	I used to be an adventurer like you, then I took a/an ____ in the ____.	0	2	KHAOS
9227	You've got to check out ____ Fluxx!	0	1	KHAOS
9228	Call of Duty Modern Warfare 37: War of ____!	0	1	KHAOS
9229	In brightest day, in blackest night, no ____ shall escape my sight.	0	1	KHAOS
9230	Yes, Mr. Death... I'll play you a game! But not chess! My game is ____.	0	1	KHAOS
9231	I cannot preach hate and warfare when I am a disciple of ____.	0	1	KHAOS
9232	With great power comes great ____.	0	1	KHAOS
9233	Don't make me ____. You wouldn't like me when I'm ____.	0	1	KHAOS
9234	Fighting a never-ending battle for truth, justice, and the American ____!	0	1	KHAOS
9235	Faster than a speeding ____! More powerful than a ____!	0	2	KHAOS
9236	Able to leap ____ in a single bound! 	0	1	KHAOS
9237	Disguised as ____, mild-mannered ____. 	0	2	KHAOS
9238	Patriotism doesn't automatically equal ____.	0	1	KHAOS
9239	I'm loyal to nothing, General - except the ____.	0	1	KHAOS
9240	Alright you Primitive Screwheads, listen up! You see this? This... is my ____!	0	1	KHAOS
9241	Shop smart. Shop ____.	0	1	KHAOS
9242	Hail to the ____, baby.	0	1	KHAOS
9243	Good. Bad. I'm the guy with the ____.	0	1	KHAOS
9244	How will we stop an army of the dead at our castle walls?	0	1	KHAOS
9245	I seek The Holy ____.	0	1	KHAOS
9246	I see you have the machine that goes ____.	0	1	KHAOS
9247	Every sperm is ____.	0	1	KHAOS
9248	An African or European ____?	0	1	KHAOS
9249	Well you can't expect to wield supreme executive power just 'cause some watery tart threw a ____ at you!	0	1	KHAOS
9250	"____!" "It's only a model."	0	1	KHAOS
9251	Good night. Sleep well. I'll most likely ____ you in the morning.	0	1	KHAOS
9252	I am The Dread Pirate ____.	0	1	KHAOS
9253	Do you want me to send you back to where you were, ____ in ____?	0	2	KHAOS
9254	I see ____ people	0	1	KHAOS
9255	____? We don't need no stinking ____!	0	1	KHAOS
9256	These aren't the ____ you're looking for.	0	1	KHAOS
9257	We're gonna need a bigger ____.	0	1	KHAOS
9258	Beavis and Butthead Do ____.	0	1	KHAOS
9259	I, for one, welcome our new ____ overlords.	0	1	KHAOS
9260	You know, there's a million fine looking women in the world, dude. But they don't all bring you ____ at work. Most of 'em just ____.	0	2	KHAOS
9261	Teenage Mutant Ninja ____.	0	1	KHAOS
9262	Achy Breaky ____.	0	1	KHAOS
9263	I'm not a ____, but I play one on TV	0	1	KHAOS
9264	____'s latest music video features a dozen ____ on ____.	0	3	KHAOS
9265	____. Like a boss!	0	1	KHAOS
9266	In Soviet ____, ____ ____s you.	2	3	KHAOS
9267	____. It's not just for breakfast anymore.	0	1	KHAOS
9268	____. It's what's for dinner!	0	1	KHAOS
9269	____. Part of this nutritious breakfast.	0	1	KHAOS
9270	____. Breakfast of champions!	0	1	KHAOS
9271	Where's the beef?	0	1	KHAOS
9272	Oh my god! They killed ____!	0	1	KHAOS
9273	I am not fat! I'm just ____.	0	1	KHAOS
9274	Two by two, hands of ____.	0	1	KHAOS
9197	____ was sent to save ____.	0	2	DW
9275	The anxiously awaited new season of Firefly is rumoured to kick off with an action packed scene, featuring River Tam's amazing feats of ____!	0	1	KHAOS
9276	I swear by my pretty floral  ____, I will ____ you.	0	2	KHAOS
9277	Wendy's ____ & Juicy.	0	1	KHAOS
9278	I HATE it when ____(s) crawl(s) up my ____!	0	2	KHAOS
9279	At ____, where every day is ____ day!	0	2	KHAOS
9280	____ at last! ____ at last! Thank God almighty, I'm ____ at last! 	0	1	KHAOS
9281	I have a dream that one day this nation will rise up and live out the true meaning of its creed:	0	1	KHAOS
9282	This year's ____ guest of honour is ____.	0	2	KHAOS
9283	This will be the greatest ____con ever!	0	1	KHAOS
9284	____ is the new ____.	0	2	KHAOS
9285	Bitches LOVE ____!	0	1	KHAOS
9286	The only good ____ is a dead ____.	0	1	KHAOS
9287	A vote for ____ is a vote for ____.	0	2	KHAOS
9288	Thou shalt not____.	0	1	KHAOS
9289	I am the King of ____!	0	1	KHAOS
9290	Team ____!	0	1	KHAOS
9291	We went to a workshop on tantric ____.	0	1	KHAOS
9292	My safeword is ____.	0	1	KHAOS
9293	I like ____, but ____ is a hard limit!	0	2	KHAOS
9294	I ____, therefore I ____.	0	2	KHAOS
9295	Welcome to my secret lair. I call it The Fortress of ____.	0	1	KHAOS
9296	These are my minions of ____!	0	1	KHAOS
9366	____ doesn't need to be judged right now.	0	1	RP
9367	____ is a terrible thing to do to the ____!	0	2	RP
9369	/____ all over this post.	0	1	RP
9370	/____ delicately from the butt.	0	1	RP
9371	/slides hand up your ____.	0	1	RP
9372	____ is not an island.	0	1	RP
9373	____ runs into the forest, screaming.	0	1	RP
9374	____ was better before the anon meme.	0	1	RP
9375	We'd love to have you at ____ Island!	0	1	RP
9376	Bad news guys, my parents found that thread involving ____.	0	1	RP
9377	But what are your thoughts on ____?	0	1	RP
9378	Chaos ensued when Wankgate banned ____.	0	1	RP
9379	Cute, fun and ____.	0	1	RP
9380	Does anyone ____? I feel like the only one.	0	1	RP
9381	Excuse me, but I identify as ____.	0	1	RP
9382	Great, another ____ event.	0	1	RP
9383	How can there be a group of people more ____ than us?	0	1	RP
9384	How's my driving?	0	1	RP
9385	I can only ____ if I feel a deep emotional connection.	0	1	RP
9386	I can't believe we just spent a whole page wanking about ____.	0	1	RP
9387	I have a PHD in ____.	0	1	RP
9388	I just benchpressed, like, 14 ____.	0	1	RP
9389	I need deets on ____, stat.	0	1	RP
9390	I predict ____ will close by the end of the year.	0	1	RP
9391	I randomly began to ____ and ____ came galloping up the stairs.	0	2	RP
9392	I see Wankgate's bitching about ____ again.	0	1	RP
9393	I'm literally shaking and ____ right now.	0	1	RP
9394	I'm married to ____ on the astral plane.	0	1	RP
9395	I'm really into ____, so please don't kinkshame.	0	1	RP
9396	I'm sad we lost ____ in the exodus from LJ to DW.	0	1	RP
9397	I'm starting a game where the characters are stuck in ____.	0	1	RP
9398	I'm taking commissions for ____!	0	1	RP
9399	How dare you not warn for ____! Don't you know how triggering that is?	0	1	RP
9400	In this world, sexual roles are divided into three categories: the ____, the ____, and the ____	2	3	RP
9401	It's ____ o'clock.	0	1	RP
9402	ITT: ____.	0	1	RP
9403	Join my new game about ____!	0	1	RP
9404	Keep fucking that ____.	0	1	RP
9405	Let me tell you about ____.	0	1	RP
9406	Log in and ____.	0	1	RP
9407	My favorite thread is the one where ____ has kinky sex with ____.	0	2	RP
9408	My headcanon is that ____ is ____.	0	2	RP
9409	My OTP: ____ x ____.	0	2	RP
9410	New game idea! You're kidnapped by ____ and forced into ____.	0	2	RP
9411	no actually i don't care at all, i don't even ____. :))))	0	1	RP
9412	OMG you guys I have so many feels about ____!	0	1	RP
9413	Only ____ would play from ____.	0	2	RP
9414	Raising money for ____! Please replurk!	0	1	RP
9415	RPAnons made me ____.	0	1	RP
9416	SHUT UP ABOUT YOUR ____.	0	1	RP
9417	Signal boosting for ____!	0	1	RP
9418	Since ____ is on hiatus, fans have migrated to ____.	0	2	RP
9419	Someone just stuck their head out of the window and screamed "____'s UP!"	0	1	RP
9420	Someone left a ____ out in the rain.	0	1	RP
9421	That ____. You know, *that* one.	0	1	RP
9422	The ____ is happy.	0	1	RP
9423	The perfect username for my next character: ____.	0	1	RP
9424	The thing I hate most about RP is ____.	0	1	RP
9425	Their ____ are of age.	0	1	RP
9426	There are too many memes about ____.	0	1	RP
9427	There is no ____ in Holly Heights.	0	1	RP
9428	We need a new post. This one smells like ____.	0	1	RP
9429	Why was I asked for app revisions?	0	1	RP
9430	Why was I banned?	0	1	RP
9431	Who apps ____ to a sex game?	0	1	RP
9432	Who should I play next?	0	1	RP
9433	You can't fist ____.	0	1	RP
9434	You sound ____, tbh.	0	1	RP
9435	Azerbaijan, Land of ____.	0	1	ESC
9436	There's rumours of a country buying votes with ____.	0	1	ESC
9437	Your ideal interval act.	0	3	ESC
9438	This performance contains flashing images, ____ and ____.	0	2	ESC
9439	Serbia entered magical girls. How horribly will their contract end?	0	2	ESC
9440	HELLO EUROPE, ____ CALLING! 12 POINTS GO TO ____!	0	2	ESC
9441	____. As guaranteed as Cyprus giving Greece 12 points.	0	1	ESC
9442	Women kissing each other on stage, men kissing each other on stage, what next?	0	1	ESC
9443	Lena goes from Eurovision winner, to participant, to score reader. Her next job is ____.	0	1	ESC
9444	The correct procedure for listening to Fairytale is:	0	2	ESC
9445	Nothing can bring down Ruslana's chippy mood,, not even ____.	0	1	ESC
9446	Krista Siegfrids' chronic marrying spree added ____ to her victims list.	0	1	ESC
9447	The BBC have decided to dig up another old relic and send ____ to represent the UK.	0	1	ESC
9448	A (few) word(s) synonymous with Eurovision fans: ____	0	1	ESC
9449	Johnny Logan is a man of many talents; he wins Eurovisions and ____.	0	1	ESC
9450	Misheard lyrics of Verjamem resulted in people thinking Eva Boto screeched ____.	0	1	ESC
9451	This country has declined to participate due to ____.	0	1	ESC
9452	I'm in loooooooove with a fairytaaaale, even thouuugh it ____.	0	1	ESC
9453	In an attempt to foster friendly attitudes between ESC entrants, the host country made them ____ and ____.	0	2	ESC
9454	The winning act had ____ and ____ as the singer belted out lyrics about ____.	2	3	ESC
9455	Podczas lotu samolotem zabrania się ____.	0	1	Pol
9456	To straszna szkoda, że wszystkie dzieci w dzisijszych czasach majš do czynienia z ____.	0	1	Pol
9457	Za 1000lat zamiast papierowych pieniędzy będziemy używać ____.	0	1	Pol
9458	Czego wstydzi się Batman? .	0	1	Pol
9459	PZPN zakazał ____ bowiem dawało to graczš niesprawiedliwš przewagę.	0	1	Pol
9460	Następna ksišżka JK Rowling będzie nosiła tytuł: Harry Potter i Komnata ____.	0	1	Pol
9461	Co przywiozłem z Turcji?.	0	1	Pol
9462	____? Istnieje aplikacja, która to robi.	0	1	Pol
9463	Co jest moim narkotykiem?.	0	1	Pol
9464	Gdy USA cigało się ze Zwišzkiem Radzieckim na księżyc, rzšd Meksyku wydał milion pesos na ____.	0	1	Pol
9465	W nowym filmnie Disnaya Hannah Montana po raz pierwszy zmaga się z ____.	0	1	Pol
9466	Co jest mojš super mocš?.	0	1	Pol
9467	Co jest kolejnš modnš dietš?.	0	1	Pol
9468	Co Bogusław Linda jadł na obiad?.	0	1	Pol
9469	Gdy Faraon nie dawał się przekonać Mojżesz zesłał plagę ____.	0	1	Pol
9470	W jaki sposób udaje mi się utrzymać mój zwišzek?.	0	1	Pol
9471	Co jest najbardziej chrupišce?.	0	1	Pol
9472	W wiezieniu za 200 fajek dostaniesz ____.	0	1	Pol
9473	Po wielkiej powodzi w 2010 roku, jako pomoc, polski rzšd zorganizował powodzianom ____.	0	1	Pol
9474	W dzisiejszych czasach niegrzeczne dzieci zamiast rózgi dostajš pod choinkę ____.	0	1	Pol
9475	Życie indian zostało na zawsze zmienione gdy biały człowiek pokazał im ____.	0	1	Pol
9476	Przy pomocy czego polski rzšd wspiera studentów z regionów wiejskich?.	0	1	Pol
9477	Może to jej urok, a może to ____.	0	1	Pol
9478	W ostatnich chwilach swego życia Michael Jackson mylał o ____.	0	1	Pol
9479	Biali ludzie lubiš ____.	0	1	Pol
9480	Przez co wszystko mnie boli?.	0	1	Pol
9481	Romantyczna kolacja ze wiecami nie może obejć się bez ____.	0	1	Pol
9482	Co sprowadzę z przyszłoci by przekonać ludzi, że jestem potężnym czarodziejem ____.	0	1	Pol
9483	TV Mango prezentuje ____.	0	1	Pol
9484	Wycieczka szkolna została zrujnowana przez ____.	0	1	Pol
9485	Co jest najlepszym przyjacielem kobiety?.	0	1	Pol
9486	Drogie Bravo, mam problem z ____.	0	1	Pol
9487	Jak będę premierem, to stworze Ministerstwo ____.	0	1	Pol
9488	Co ukrywajš przede mnš rodzice?.	0	1	Pol
9489	Co zawsze rozkręca imprezy?.	0	1	Pol
9490	Co staje się lepsze z wiekiem?.	0	1	Pol
9491	____ dobry do ostaniej kropli.	0	1	Pol
9492	____ To pułapka!.	0	1	Pol
9493	W nowym reality show MTV omiu celebrytom wprowadza się do domu z ____.	0	1	Pol
9494	Co jest najbardziej emo?.	0	1	Pol
9495	W czasie seksu lubię myleć o ____.	0	1	Pol
9496	Co zakończyło mój ostatni zwišzek?.	0	1	Pol
9497	Co to za dżwięk?.	0	1	Pol
9498	____ Tak chce umrzeć.	0	1	Pol
9499	Przez co cały się kleje?.	0	1	Pol
9500	Co będzie następnš zabawkš w zestawie Happy Meal?.	0	1	Pol
9501	Czego jest pełno w niebie?.	0	1	Pol
9502	Nie wiem czym będzie sie walczyć podczas trzeciej wojny wiatowej, ale podczas czwartej wojny wiatowej będzie się walczyć ____.	0	1	Pol
9503	Na co zawsze można poderwać laskę?.	0	1	Pol
9504	____ Dla Ciebie, dla Rodziny.	0	1	Pol
9505	Przez co nie mogę spać w nocy?.	0	1	Pol
9506	Co tak pachnie?.	0	1	Pol
9507	Co pomaga Obamie się wyluzować?.	0	1	Pol
9508	Do teatrów wchodzi musical o ____.	0	1	Pol
9509	Antropologowie odkryli ostatnio starożyne plemię czczšce ____.	0	1	Pol
9510	Zanim Pana zabije, Panie Bond, muszę pokazać Panu ____.	0	1	Pol
9511	Badania wykazujš, że myszy laboratotyjne pokonujš labirynt 50% wybciej po kontakcie z ____.	0	1	Pol
9512	Na żywo, tylko w Polsat Sport: Cykl turniejów ____.	0	1	Pol
9513	Jak będę miliarderem, to wzniosę 50 metrowy pomnik na czeć ____.	0	1	Pol
9514	By przycišgnšć więcej goci, Muzeum Narodowe otworzyło interaktywny eksponat z ____.	0	1	Pol
9515	Wojna! jaki z niej pożytek?.	0	1	Pol
9516	Co powoduje u mnie gazy?.	0	1	Pol
9517	Czym mierdzš starzy ludzie?.	0	1	Pol
9518	Z czego rezygnuje w czasie postu?.	0	1	Pol
9519	Medycyna alternatywna zaczęła doceniać właciwoci lecznicze ____.	0	1	Pol
9520	Co USA wysyłało dzieciom w Afganistanie?.	0	1	Pol
9521	CO preferuje Janusz Korwin-Mikke?.	0	1	Pol
9522	Czego nie chcielibyce znależć w chińskim żarciu?.	0	1	Pol
9523	Pije by zapomnieć o ____.	0	1	Pol
9524	____ Pištka stary!.	0	1	Pol
9525	Picasso w czasie swoich twórczych eksperymentów z uproszczeniem formy stworzył setki obrazów przedstawiajšcych ____.	0	1	Pol
9526	Przepraszam profesorze, ale nie mogłem obronić pracy domowej przez ____.	0	1	Pol
9527	Co będzie następnym duetem superbohaterów?.	0	2	Pol
9528	____ to pierwszy krok do ____.	0	2	Pol
9529	Tak, to ja zabiłem ____ Pytacie jak? ____.	0	2	Pol
9530	Nagrodę za ____ otrzymuje ____.	0	2	Pol
9531	Jako moja nastepnš sztuczkę, wycišgne ____ z ____.	0	2	Pol
9532	Krok 1: ____ Krok 2: ____ Krok 3: Profity.	0	2	Pol
9533	Jak byłem na kwasie, to ____ zmienił się w ____.	0	2	Pol
9534	W wiecie zniszczonym przez ____ naszš jedynš nadziejš będzie ____.	0	2	Pol
9535	W nowym filmie akcji Bruca willis odkrywa, że ____ był tak naprawdę ____.	0	2	Pol
9536	Nigdy nie rozumiałem ____ dopóki nie ____.	0	2	Pol
9537	Plotka głosi, że ulubionym daniem Władimira Putina jest ____ nadziewane ____.	0	2	Pol
9538	TVP Kultura przedstawia film dokumentalny pt. ____ nieznana historia ____.	0	2	Pol
9539	Stwórz Haiku.	2	3	Pol
9540	Kiedy byłem/am na dragach, _____ zamieniło się w _____..	0	2	Pol
9541	Po trzęsieniu ziemi, Miley Cyrus podarowała ludziom z Haiti ______.	0	1	Pol
9542	Wymiliłe włanie nowš postać do lola nazwałe jš ____ jej głównš umiejętnociš będzie ____.	0	2	Pol
9543	Tato, dlaczego mama płacze?.	0	1	Pol
9544	____ władca mojego ____.	0	2	Pol
9545	Co to za plama na mojej kanapie? ____.	0	1	Pol
9546	Wielka miłoć do ____.	0	1	Pol
9547	Dlaczego moja siostra ma gumowego penisa? ____.	0	1	Pol
9548	Czym dla Ciebie jest bóg ____.	0	1	Pol
9549	Murzyn w stroju banana ____.	0	1	Pol
9139	Everybody out of the god damn way. You've got a heart full of ____, a soul full of ____, and a body full of ____.	2	3	MSPA
9030	____ would be a good name for a band.	0	1	xkcd
9031	____ wouldn't be funny if not for the irony.	0	1	xkcd
9032	Help, I'm trapped in a ____ factory!	0	1	xkcd
9033	None of the places I floated to had ____.	0	1	xkcd
9034	____. My normal method is useless here.	0	1	xkcd
9035	We had a ____ party, but it turned out not to be very much fun.	0	1	xkcd
9036	My hobby: ____.	0	1	xkcd
9037	____ makes terrible pillow talk.	0	1	xkcd
9038	What is the best way to protect yourself from Velociraptors?	0	1	xkcd
9039	I'm pretty sure you can't send ____ through the mail.	0	1	xkcd
9040	I'm like ____, except with love.	0	1	xkcd
9041	Spoiler Alert! ____ kills ____ with ____!	2	3	xkcd
9042	I didn't actually want you to be ____; I just wanted you to be ____.	0	2	xkcd
9043	Do you really expect ____? No, Mister Bond. I expect you to die!	0	1	xkcd
9044	What do we miss most from the internet in 1998?	0	1	xkcd
9046	All of my algorithms were really just disguised ____.	0	1	xkcd
9047	Waking up would be a lot easier if ____ didn't look so much like you.	0	1	xkcd
9048	____? No, I'm not really into Pokémon.	0	1	xkcd
9049	I got a lot more interested in ____ when I made the connection to ____.	0	2	xkcd
9050	Dreaming about ____ in Cirque du Soleil.	0	1	xkcd
9051	When I eat ____, I like to pretend I'm a Turing machine.	0	1	xkcd
9052	Freestyle rapping is really just ____.	0	1	xkcd
9053	It turns out God created the universe using ____.	0	1	xkcd
9054	Human intelligence decreases with increasing proximity to ____.	0	1	xkcd
9055	If I could rearrange the alphabet, I'd put ____ and ____ together.	0	2	xkcd
9056	The #1 Programmer's excuse for legitimately slacking off: ____.	0	1	xkcd
9057	I like alter songs by replacing ____ with ____.	0	2	xkcd
9058	Ebay review: Instead of ____, package contained ____. Would not buy again.	0	2	xkcd
9059	Social rule 99.1: If friends spend more than 60 minutes deciding what to do, they must default to ____.	0	1	xkcd
9060	____ linked to Acne! 95% confidence.	0	1	xkcd
9061	How many Google results are there for "Died in a ____ accident?"	0	1	xkcd
9062	Real Programmers use ____.	0	1	xkcd
9063	After finding Higgs-Boson, I can always use the LHC for ____.	0	1	xkcd
9064	My health declined when I realized I could eat ____ whenever I wanted.	0	1	xkcd
9065	____ is just applied ____.	0	2	xkcd
9066	What's my favorite unit of measurement?	0	1	xkcd
9067	In the extended base metaphor, shortstop is ____.	0	1	xkcd
9068	I don't actually care about ____, I just like ____.	0	2	xkcd
9069	Why do you have a crossbow in your desk?	0	1	xkcd
9070	I set up script to buy things on ebay for $1, but then it bought ____, ____, and ____.	2	3	xkcd
9071	I can extrude ____, but I can't retract it.	0	1	xkcd
9072	____'s fetish: ____.	0	2	xkcd
9073	Now I have to live my whole life pretending ____ never happened. It's going to be a fun 70 years.	0	1	xkcd
9074	My new favorite game is Strip ____.	0	1	xkcd
9075	Did you know you can just buy ____?	0	1	xkcd
9076	Take me down to the ____, where the ____ is green and the ____ are pretty.	2	3	xkcd
9077	____. That's right. Shit just got REAL.	0	1	xkcd
9078	Just because I have ____ doesn't mean you could milk me now. I'd have to be lactating.	0	1	xkcd
9079	2009 called? Did you warn them about ____?	0	1	xkcd
9080	I'm going to name my child ____.	0	1	xkcd
9081	3D printers sound great until you receive spam containing actual ____.	0	1	xkcd
9082	Until I see more data, I'm going to assume ____ causes ____.	0	2	xkcd
9083	Did you know November is ____ Awareness Month?	0	1	xkcd
9084	University Researchers create life in lab! ____ blamed!	0	1	xkcd
9085	It's fun to mentally replace the word ____ with ____.	0	1	xkcd
9086	If you really hate someone, teach them to recognize ____.	0	1	xkcd
9087	____. So it has come to this.	0	1	xkcd
9088	Hey baby, wanna come back to my sex ____?	0	1	xkcd
9089	The past is a foreign country... with ____ and ____!	0	2	xkcd
9090	What role has social media played in ____? Well, it's certainly made ____ stupider.	0	2	xkcd
9091	____. It works in Kerbal Space Program.	0	1	xkcd
9092	____ is too big for small talk.	0	1	xkcd
9093	What did I suggest to the IAU for a new planet name?	0	1	xkcd
9094	By 2019, ____ will be outnumbered by ____.	0	2	xkcd
9095	New movie this summer: ____ beats up everyone.	0	1	xkcd
9212	According to the Daleks, ____ is better at ____.	0	2	DW
100476	I can't believe Netflix is using ____ to promote House of Cards.	0	1	HOCAH
100477	I'm not going to lie. I despise ____. There, I said it.	0	1	HOCAH
100478	A wise man said, "Everything is about sex. Except sex. Sex is about ____."	0	1	HOCAH
100480	Our relationship is strictly professional. Let's not complicate things with ____.	0	1	HOCAH
100481	Because you enjoyed ____, we thought you'd like ____.	0	2	HOCAH
100482	We're not like other news organizations. Here at Slugline, we welcome ____ in the office. 	0	1	HOCAH
100483	Cancel all my meetings. We've got a situation with ____ that requires my immediate attention.	0	1	HOCAH
100484	If you need him to, Remy Danton can pull some strings and get you ____, but it'll cost you.	0	1	HOCAH
100479	Corruption. Betrayal. ____. Coming soon to Netflix, "House of ____."	0	2	HOCAH
9045	I filled my apartment with ____.	0	1	xkcd
100004	test<sup>®</sup>\n<i>italic</i>™\n	0	1	test
87	Lifetime® presents ____, the story of ____.	0	2	\N
92	Dear Abby,\n\nI'm having some trouble with ____ and would like your advice.	0	1	1.2
537	Dustin Browder demands more ____ in StarCraft®.	0	1	RS
100207	Here is the church\nHere is the steeple\nOpen the doors\nAnd there is ____.	0	1	1.3
827	What is moé?	0	1	AN
832	The rarest Pokémon in my collection is ____.	0	1	AN
894	From the creators of Tiger & Bunny: ____ & ____!!	0	2	AN
8731	"____."\n"What the hell, man?!"\n"____."\n"Oh, okay."	0	2	ANX1
5128	>implying you aren't ____	0	1	Vidya
5205	>____\n>____\n>2011\n>ISHYGDDT	0	2	Vidya
100298	The most controversial game at PAX this year is an 8-bit indie platformer about ____.	0	1	13PAX
100301	There was a riot at the Gearbox panel when they gave the attendees ____.	0	1	13PAX
100441	GREETINGS HUMANS\n\nI AM ____ BOT\n\nEXECUTING PROGRAM	0	1	HBS
8962	What I made: ____.\nWhat the DM saw: ____.\nWhat I played: ____	2	3	/tg/
9368	____ & ____: Worst mods ever.	0	2	RP
100458	Revealed:\nWhy He Really Resigned!\nPope Benedict's Secret Struggle with ____!	0	1	HBS
100459	Here's what you can expect for the new year.\nOut: ____.\nIn: ____.	0	2	HBS
\.


--
-- Name: black_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cah
--

SELECT pg_catalog.setval('black_cards_id_seq', 9549, true);


--
-- Data for Name: card_set; Type: TABLE DATA; Schema: public; Owner: cah
--

COPY card_set (id, active, name, base_deck, description, weight) FROM stdin;
100017	t	[C] SocialGamer	f	Custom cards from the SocialGamer.net community.	101
100157	t	[C] Northernlion	f	http://www.youtube.com/user/Northernlion	502
100160	t	[C] Ridiculously Stupid	f		504
100161	t	[C] That Guy With The Glasses	t	http://thatguywiththeglasses.com/	503
100219	t	[C] Golby Fan Club	f		505
1151	t	First Version	t	The original version of the Cards Against Humanity base game.	1
1152	t	Second Version	t	The updated version of the Cards Against Humanity base game.	2
100211	t	Third Version	t	Another updated version of the Cards Against Humanity base game.	3
1155	t	The First Expansion	f	The official First Expansion.	10
1256	t	The Second Expansion	f	The official Second Expansion.	11
100224	t	[C] Anime	t	http://www.desudesbrigade.com/	506
1153	t	Canadian	f	Cards included in Canadian orders.	20
1154	t	Misprint Replacement Bonus Cards	f	Bonus cards included with replacements for misprinted cards.	21
100225	t	[C] Mr. Man Collection	f		515
1488	t	2012 Holiday Pack	f	The 2012 Holiday Pack.	22
100154	t	The Third Expansion	f	The official Third Expansion.	12
100228	t	[C] Sodomy Dog's Furry Pack	f		516
100051	t	PAX East 2013 Pack &quot;C&quot;	f	PAX East 2013 Pack &quot;C&quot;.	32
100049	t	PAX East 2013 Pack &quot;A&quot;	f	PAX East 2013 Pack &quot;A&quot;.	30
100050	t	PAX East 2013 Pack &quot;B&quot;	f	PAX East 2013 Pack &quot;B&quot;.	31
100229	t	[C] Vidya	f	by Sl0nderman	517
100231	t	[C] Game Grumps	f		518
100257	t	Box Expansion	f	The Expansion Box Box Expansion.	18
100002	t	[C] Very Serious	f	http://forum.verysrs.com/	501
100003	t	[C] Admin's Picks	f	Custom cards that I think are particularly fitting.	100
100232	t	[C] Rooster Teeth	f		519
100233	t	[C] Derps Against Humanity	f		520
100312	t	PAX Prime 2013	f	PAX Prime 2013	33
100415	t	The Fourth Expansion	f	The official Fourth Expansion.	13
100236	t	[C] Antisocial Injustice	f		521
100422	t	2013 Holiday Bullshit	f	http://www.holidaybullshit.com/	23
100453	t	Polish Translation [Needs Review]	t	I need somebody to examine this set on /viewcards.jsp and ensure that I didn't screw up the character encoding.	50
100444	t	[C] FiMFiction.net	f	For FiMFiction.net users, by Cola_Bubble_Gum.	500
100234	t	[C] Anime Expansion #1	f	http://www.desudesbrigade.com/	507
100443	t	[C] Imgur	f		522
100445	t	[C] /tg/	f	/tg/	523
100447	t	[C] RagingPsyfag's Pack of Shenanigans	f		525
100448	t	[C] Cards Against Homestuck	f		526
100449	t	[C] Doctor Who	f		527
100450	t	[C] Khaos WolfKat	f		528
100451	t	[C] RPAnons	f		529
100452	t	[C] Eurovision Song Contest	f		530
100001	t	[C] Cards Against Equinity	f	My Little Pony themed expansion from the reddit MLP communities.	499
100446	t	[C] xkcd	f		524
100485	f	House of Cards Against Humanity	f	House of Cards pack. http://www.houseofcardsagainsthumanity.com/	40
\.


--
-- Data for Name: card_set_black_card; Type: TABLE DATA; Schema: public; Owner: cah
--

COPY card_set_black_card (card_set_id, black_card_id) FROM stdin;
1151	1
1151	2
1151	3
1151	4
1151	5
1151	6
1151	7
1151	8
1151	9
1151	10
1151	11
1151	12
1151	13
1151	14
1151	15
1151	17
1151	16
1151	19
1151	18
1151	21
1151	20
1151	23
1151	22
1151	25
1151	24
1151	27
1151	26
1151	29
1151	28
1151	31
1151	30
1151	34
1151	35
1151	32
1151	33
1151	38
1151	39
1151	36
1151	37
1151	42
1151	43
1151	40
1151	41
1151	46
1151	47
1151	44
1151	45
1151	51
1151	50
1151	49
1151	48
1151	55
1151	54
1151	53
1151	52
1151	59
1151	58
1151	57
1151	56
1151	63
1151	62
1151	61
1151	60
1151	68
1151	69
1151	70
1151	71
1151	64
1151	65
1151	66
1151	67
1151	76
1151	77
1151	78
1151	79
1151	72
1151	73
1151	74
1151	75
1151	85
1151	84
1151	87
1151	86
1151	81
1151	80
1151	83
1151	82
1151	89
1151	88
1151	90
1152	1
1152	2
1152	3
1152	4
1152	5
1152	6
1152	7
1152	8
1152	9
1152	10
1152	11
1152	12
1152	13
1152	14
1152	15
1152	17
1152	19
1152	18
1152	21
1152	20
1152	22
1152	25
1152	24
1152	26
1152	29
1152	28
1152	31
1152	30
1152	34
1152	35
1152	32
1152	33
1152	38
1152	39
1152	36
1152	42
1152	43
1152	40
1152	41
1152	46
1152	47
1152	44
1152	45
1152	51
1152	50
1152	49
1152	48
1152	53
1152	52
1152	59
1152	58
1152	57
1152	56
1152	63
1152	62
1152	61
1152	60
1152	68
1152	70
1152	71
1152	64
1152	65
1152	66
1152	67
1152	76
1152	77
1152	78
1152	79
1152	72
1152	73
1152	74
1152	75
1152	85
1152	84
1152	87
1152	86
1152	81
1152	80
1152	82
1152	93
1152	92
1152	95
1152	94
1152	89
1152	88
1152	91
1152	90
1152	98
1152	96
1152	97
1153	1005
1153	1004
1153	1007
1153	1006
1153	1008
1154	1032
1155	1064
1155	1058
1155	1059
1155	1056
1155	1057
1155	1062
1155	1063
1155	1060
1155	1061
1155	1049
1155	1048
1155	1051
1155	1050
1155	1053
1155	1052
1155	1055
1155	1054
1155	1045
1155	1047
1155	1046
1256	1157
1256	1156
1256	1159
1256	1158
1256	1161
1256	1160
1256	1163
1256	1162
1256	1165
1256	1164
1256	1167
1256	1166
1256	1168
1256	1169
1256	1170
1256	1171
1256	1172
1256	1173
1256	1174
1256	1175
1256	1176
1256	1177
1256	1178
1256	1179
1256	1180
1488	1457
1488	1458
1488	1459
1488	1460
1488	1461
1488	1462
1488	1463
100001	1375
100001	1374
100001	1373
100001	1372
100001	1371
100001	1370
100001	1369
100001	1366
100001	1365
100001	1363
100001	1361
100001	1359
100001	1356
100001	1354
100001	1355
100001	1352
100001	1353
100001	1350
100001	1347
100001	1345
100001	1262
100001	1260
100001	1257
100001	1270
100001	1268
100001	1267
100001	1264
100001	1265
100001	1279
100001	1277
100001	1376
100001	1377
100001	1275
100001	1378
100001	1273
100001	1306
100001	1305
100001	1311
100001	1309
100001	1297
100001	1303
100001	1301
100001	1291
100001	1289
100001	1295
100001	1292
100001	1283
100001	1281
100001	1287
100001	1285
100001	1329
100001	1330
100001	1321
100001	1323
100001	1325
100001	1327
100001	1313
100001	1315
100001	1317
100001	1319
100002	137
100002	136
100002	139
100002	138
100002	141
100002	140
100002	143
100002	142
100002	129
100002	128
100002	131
100002	130
100002	133
100002	132
100002	135
100002	134
100002	152
100002	153
100002	154
100002	155
100002	156
100002	157
100002	144
100002	145
100002	146
100002	147
100002	148
100002	149
100002	150
100002	151
100002	102
100002	103
100002	100
100002	101
100002	99
100002	110
100002	111
100002	108
100002	109
100002	106
100002	107
100002	104
100002	105
100002	119
100002	118
100002	117
100002	116
100002	115
100002	114
100002	113
100002	112
100002	127
100002	126
100002	125
100002	124
100002	123
100002	122
100002	121
100002	120
100003	137
100003	136
100003	139
100003	138
100003	140
100003	129
100003	128
100003	130
100003	133
100003	132
100003	135
100003	134
100003	152
100003	153
100003	1359
100003	154
100003	155
100003	156
100003	144
100003	147
100003	149
100003	150
100003	151
100003	114
100003	127
100003	126
100003	124
100003	123
100003	122
100003	120
100017	100006
100017	100007
100017	100016
100049	100028
100049	100027
100050	100037
100050	100038
100051	100047
100051	100048
100154	100089
100154	100095
100154	100094
100154	100093
100154	100092
100154	100085
100154	100074
100154	100078
100154	100066
100154	100065
100154	100070
100154	100103
100154	100059
100154	100058
100154	100100
100154	100098
100154	100097
100154	100096
100154	100110
100154	100108
100154	100106
100154	100105
100154	100054
100154	100104
100154	100113
100017	100155
100003	100016
100003	100155
100003	100006
100157	158
100157	159
100157	171
100157	170
100157	169
100157	168
100157	175
100157	174
100157	173
100157	172
100157	163
100157	162
100157	161
100157	160
100157	167
100157	166
100157	165
100157	164
100157	186
100157	187
100157	184
100157	185
100157	190
100157	191
100157	188
100157	189
100157	178
100157	179
100157	176
100157	177
100157	182
100157	183
100157	180
100157	181
100157	205
100157	204
100157	207
100157	206
100157	201
100157	200
100157	203
100157	202
100157	197
100157	196
100157	199
100157	198
100157	193
100157	192
100157	195
100157	194
100157	220
100157	221
100157	222
100157	223
100157	216
100157	217
100157	218
100157	219
100157	212
100157	213
100157	214
100157	215
100157	208
100157	210
100157	211
100157	225
100157	224
100003	202
100003	192
100003	162
100003	165
100017	100159
100160	548
100160	549
100160	546
100160	547
100160	544
100160	545
100160	508
100160	516
100160	509
100160	517
100160	510
100160	518
100160	511
100160	519
100160	512
100160	504
100160	513
100160	505
100160	514
100160	506
100160	515
100160	507
100160	524
100160	525
100160	526
100160	527
100160	520
100160	226
100160	521
100160	522
100160	523
100160	533
100160	532
100160	535
100160	534
100160	529
100160	528
100160	531
100160	530
100160	541
100160	540
100160	543
100160	542
100160	537
100160	536
100160	539
100160	538
100003	168
100003	175
100003	513
100003	514
100003	525
100003	520
100003	521
100003	522
100003	528
100003	537
100003	536
100003	194
100003	214
100003	510
100003	504
100003	226
100003	225
100003	224
100161	687
100161	686
100161	685
100161	684
100161	683
100161	682
100161	681
100161	680
100161	679
100161	678
100161	677
100161	676
100161	675
100161	674
100161	673
100161	672
100161	702
100161	703
100161	700
100161	701
100161	698
100161	699
100161	696
100161	697
100161	694
100161	695
100161	692
100161	693
100161	690
100161	691
100161	688
100161	689
100161	653
100161	655
100161	654
100161	668
100161	669
100161	670
100161	671
100161	664
100161	665
100161	666
100161	667
100161	660
100161	661
100161	662
100161	663
100161	656
100161	657
100161	658
100161	659
100161	747
100161	746
100161	745
100161	744
100161	751
100161	750
100161	749
100161	748
100161	739
100161	738
100161	737
100161	736
100161	743
100161	742
100161	741
100161	740
100161	754
100161	755
100161	752
100161	753
100161	713
100161	712
100161	715
100161	714
100161	717
100161	716
100161	719
100161	718
100161	705
100161	704
100161	707
100161	706
100161	709
100161	708
100161	711
100161	710
100161	728
100161	729
100161	730
100161	731
100161	732
100161	733
100161	734
100161	735
100161	720
100161	721
100161	722
100161	723
100161	724
100161	725
100161	726
100161	727
100003	687
100003	685
100003	678
100003	692
100003	660
100003	747
100003	712
100003	715
100161	756
100017	100163
100003	508
100017	100203
100211	100208
100211	100209
100211	100210
100211	100207
100211	100206
100211	1
100211	2
100211	3
100211	4
100211	6
100211	7
100211	8
100211	9
100211	78
100211	10
100211	79
100211	11
100211	12
100211	14
100211	15
100211	17
100211	19
100211	81
100211	21
100211	80
100211	20
100211	82
100211	22
100211	93
100211	25
100211	92
100211	24
100211	29
100211	28
100211	91
100211	31
100211	30
100211	34
100211	35
100211	32
100211	33
100211	38
100211	39
100211	36
100211	42
100211	43
100211	40
100211	41
100211	46
100211	47
100211	44
100211	45
100211	51
100211	50
100211	49
100211	53
100211	52
100211	59
100211	58
100211	57
100211	56
100211	63
100211	62
100211	61
100211	60
100211	1032
100211	68
100211	70
100211	64
100211	66
100211	67
100211	76
100211	77
100211	72
100211	73
100211	74
100211	75
100211	85
100211	84
100211	87
100211	86
100211	95
100211	94
100211	89
100211	88
100211	90
100211	98
100211	96
100211	97
100211	100217
100161	100218
100161	784
100161	774
100161	775
100161	772
100161	773
100161	771
100161	782
100161	783
100161	780
100161	781
100161	778
100161	779
100161	776
100161	777
100219	791
100219	790
100219	789
100219	788
100219	787
100219	786
100219	785
100219	799
100219	798
100219	797
100219	796
100219	795
100219	794
100219	793
100219	792
100219	800
100219	801
100219	802
100003	800
100003	792
100017	100223
100224	821
100224	820
100224	823
100224	822
100224	817
100224	816
100224	819
100224	818
100224	829
100224	828
100224	831
100224	830
100224	825
100224	824
100224	827
100224	826
100224	804
100224	805
100224	806
100224	807
100224	803
100224	812
100224	813
100224	814
100224	815
100224	808
100224	809
100224	810
100224	811
100224	881
100224	880
100224	883
100224	882
100224	885
100224	884
100224	887
100224	886
100224	889
100224	888
100224	891
100224	890
100224	893
100224	892
100224	895
100224	894
100224	864
100224	865
100224	866
100224	867
100224	868
100224	869
100224	870
100224	871
100224	872
100224	873
100224	874
100224	875
100224	876
100224	877
100224	878
100224	879
100224	851
100224	850
100224	849
100224	848
100224	855
100224	854
100224	853
100224	852
100224	859
100224	858
100224	857
100224	856
100224	863
100224	862
100224	861
100224	860
100224	834
100224	835
100224	832
100224	833
100224	838
100224	839
100224	836
100224	837
100224	842
100224	843
100224	840
100224	841
100224	846
100224	847
100224	844
100224	845
100224	926
100224	924
100224	925
100224	922
100224	923
100224	918
100224	919
100224	916
100224	917
100224	914
100224	915
100224	912
100224	913
100224	911
100224	910
100224	909
100224	908
100224	907
100224	906
100224	905
100224	904
100224	903
100224	902
100224	901
100224	900
100224	899
100224	898
100224	897
100224	896
100225	956
100225	957
100225	958
100225	959
100225	952
100225	953
100225	954
100225	955
100225	948
100225	949
100225	950
100225	951
100225	944
100225	945
100225	946
100225	947
100225	941
100225	940
100225	943
100225	942
100225	937
100225	936
100225	939
100225	938
100225	933
100225	932
100225	935
100225	934
100225	929
100225	928
100225	931
100225	930
100225	927
100225	963
100225	960
100225	100226
100225	100227
100003	821
100003	820
100003	823
100003	824
100003	803
100003	814
100003	815
100003	889
100003	890
100003	873
100003	875
100003	848
100003	855
100003	852
100003	838
100003	843
100003	846
100003	957
100003	958
100003	959
100003	954
100003	949
100003	950
100003	944
100003	946
100003	943
100003	942
100003	936
100003	939
100003	935
100003	929
100003	925
100003	906
100003	902
100003	901
100003	962
100003	961
100228	5023
100228	5022
100228	5021
100228	5020
100228	5019
100228	5018
100228	5017
100228	5016
100228	5015
100228	5014
100228	5013
100228	5012
100228	5011
100228	5010
100228	5009
100228	5008
100228	5006
100228	5007
100228	5004
100228	5005
100228	5002
100228	5003
100228	5001
100228	5053
100228	5052
100228	5055
100228	5054
100228	5049
100228	5048
100228	5051
100228	5050
100228	5045
100228	5044
100228	5047
100228	5046
100228	5041
100228	5040
100228	5043
100228	5042
100228	5036
100228	5037
100228	5038
100228	5039
100228	5032
100228	5033
100228	5034
100228	5035
100228	5028
100228	5029
100228	5030
100228	5031
100228	5024
100228	5025
100228	5026
100228	5027
100228	5083
100228	5082
100228	5081
100228	5080
100228	5087
100228	5086
100228	5085
100228	5084
100228	5075
100228	5074
100228	5073
100228	5072
100228	5079
100228	5078
100228	5077
100228	5076
100228	5066
100228	5067
100228	5064
100228	5065
100228	5070
100228	5071
100228	5068
100228	5069
100228	5058
100228	5059
100228	5056
100228	5057
100228	5062
100228	5063
100228	5060
100228	5061
100228	5105
100228	5104
100228	5096
100228	5097
100228	5098
100228	5099
100228	5100
100228	5101
100228	5102
100228	5103
100228	5088
100228	5089
100228	5090
100228	5091
100228	5092
100228	5093
100228	5094
100228	5095
100229	5197
100229	5196
100229	5199
100229	5198
100229	5193
100229	5192
100229	5195
100229	5194
100229	5189
100229	5188
100229	5191
100229	5190
100229	5185
100229	5184
100229	5187
100229	5186
100229	5212
100229	5208
100229	5209
100229	5210
100229	5211
100229	5204
100229	5205
100229	5206
100229	5207
100229	5200
100229	5201
100229	5202
100229	5203
100229	5163
100229	5162
100229	5161
100229	5160
100229	5167
100229	5166
100229	5165
100229	5164
100229	5155
100229	5154
100229	5153
100229	5152
100229	5159
100229	5158
100229	5157
100229	5156
100229	5178
100229	5179
100229	5176
100229	5177
100229	5182
100229	5183
100229	5180
100229	5181
100229	5170
100229	5171
100229	5168
100229	5169
100229	5174
100229	5175
100229	5172
100229	5173
100229	5129
100229	5128
100229	5131
100229	5130
100229	5133
100229	5132
100229	5135
100229	5134
100229	5121
100229	5120
100229	5123
100229	5122
100229	5125
100229	5124
100229	5127
100229	5126
100229	5144
100229	5145
100229	5146
100229	5147
100229	5148
100229	5149
100229	5150
100229	5151
100229	5136
100229	5137
100229	5138
100229	5139
100229	5140
100229	5141
100229	5142
100229	5143
100229	5113
100229	5112
100229	5115
100229	5114
100229	5117
100229	5116
100229	5119
100229	5118
100229	5107
100229	5106
100229	5109
100229	5108
100229	5111
100229	5110
100161	8399
100161	8398
100161	8397
100161	8396
100161	8395
100161	8394
100161	8393
100161	8392
100161	8391
100161	8390
100161	8389
100161	8388
100161	8387
100161	8386
100161	8385
100161	8384
100161	8414
100161	8415
100161	8412
100161	8413
100161	8410
100161	8411
100161	8408
100161	8409
100161	8406
100161	8407
100161	8404
100161	8405
100161	8402
100161	8403
100161	8400
100161	8401
100161	8429
100161	8428
100161	8431
100161	8430
100161	8425
100161	8424
100161	8427
100161	8426
100161	8421
100161	8420
100161	8423
100161	8422
100161	8417
100161	8416
100161	8419
100161	8418
100161	8444
100161	8445
100161	8446
100161	8447
100161	8440
100161	8441
100161	8442
100161	8443
100161	8436
100161	8437
100161	8438
100161	8439
100161	8432
100161	8433
100161	8434
100161	8435
100161	8377
100161	8378
100161	8379
100161	8380
100161	8381
100161	8382
100161	8383
100161	8465
100161	8464
100161	8448
100161	8449
100161	8450
100161	8451
100161	8452
100161	8453
100161	8454
100161	8455
100161	8456
100161	8457
100161	8458
100161	8459
100161	8460
100161	8461
100161	8462
100161	8463
100157	8467
100157	8466
100157	8469
100157	8468
100157	8471
100157	8470
100157	8473
100157	8472
100157	8475
100157	8474
100157	8477
100157	8476
100157	8479
100157	8478
100157	8499
100157	8498
100157	8497
100157	8496
100157	8482
100157	8483
100157	8480
100157	8481
100157	8486
100157	8487
100157	8484
100157	8485
100157	8490
100157	8491
100157	8488
100157	8489
100157	8494
100157	8495
100157	8492
100157	8493
100231	8533
100231	8532
100231	8535
100231	8534
100231	8529
100231	8528
100231	8531
100231	8530
100231	8541
100231	8540
100231	8543
100231	8542
100231	8537
100231	8536
100231	8539
100231	8538
100231	8516
100231	8517
100231	8518
100231	8519
100231	8512
100231	8513
100231	8514
100231	8515
100231	8524
100231	8525
100231	8526
100231	8527
100231	8520
100231	8521
100231	8522
100231	8523
100231	8567
100231	8566
100231	8565
100231	8564
100231	8563
100231	8562
100231	8561
100231	8560
100231	8575
100231	8574
100231	8573
100231	8572
100231	8571
100231	8570
100231	8569
100231	8568
100231	8550
100231	8551
100231	8548
100231	8549
100231	8546
100231	8547
100231	8544
100231	8545
100231	8558
100231	8559
100231	8556
100231	8557
100231	8554
100231	8555
100231	8552
100231	8553
100231	8503
100231	8502
100231	8501
100231	8500
100231	8507
100231	8506
100231	8505
100231	8504
100231	8511
100231	8510
100231	8509
100231	8508
100231	8592
100231	8593
100231	8594
100231	8595
100231	8596
100231	8597
100231	8598
100231	8585
100231	8584
100231	8587
100231	8586
100231	8589
100231	8588
100231	8591
100231	8590
100231	8577
100231	8576
100231	8579
100231	8578
100231	8581
100231	8580
100231	8583
100231	8582
100232	8664
100232	8665
100232	8666
100232	8667
100232	8660
100232	8661
100232	8662
100232	8663
100232	8656
100232	8657
100232	8658
100232	8659
100232	8653
100232	8652
100232	8655
100232	8654
100232	8649
100232	8648
100232	8651
100232	8650
100232	8645
100232	8644
100232	8647
100232	8646
100232	8641
100232	8640
100232	8643
100232	8642
100232	8600
100232	8601
100232	8602
100232	8603
100232	8604
100232	8605
100232	8606
100232	8607
100232	8599
100232	8634
100232	8635
100232	8632
100232	8633
100232	8638
100232	8639
100232	8636
100232	8637
100232	8626
100232	8627
100232	8624
100232	8625
100232	8630
100232	8631
100232	8628
100232	8629
100232	8619
100232	8618
100232	8617
100232	8616
100232	8623
100232	8622
100232	8621
100232	8620
100232	8611
100232	8610
100232	8609
100232	8608
100232	8615
100232	8614
100232	8613
100232	8612
100233	8668
100233	8669
100233	8670
100233	8671
100233	8702
100233	8703
100233	8708
100233	8700
100233	8709
100233	8701
100233	8706
100233	8698
100233	8707
100233	8699
100233	8704
100233	8696
100233	8705
100233	8697
100233	8694
100233	8695
100233	8692
100233	8693
100233	8690
100233	8691
100233	8688
100233	8689
100233	8687
100233	8686
100233	8685
100233	8684
100233	8683
100233	8682
100233	8681
100233	8680
100233	8679
100233	8678
100233	8677
100233	8676
100233	8675
100233	8674
100233	8673
100233	8672
100003	5133
100003	5146
100003	5150
100003	5020
100003	5019
100003	5017
100003	5016
100003	8644
100003	8641
100003	8640
100003	8643
100003	8703
100003	5026
100003	8600
100003	8639
100234	8736
100234	8737
100234	8710
100234	8711
100234	8718
100234	8719
100234	8716
100234	8717
100234	8714
100234	8715
100234	8712
100234	8713
100234	8727
100234	8726
100234	8725
100234	8724
100234	8723
100234	8722
100234	8721
100234	8720
100234	8735
100234	8734
100234	8733
100234	8732
100234	8731
100234	8730
100234	8729
100234	8728
100236	8753
100236	8752
100236	8755
100236	8754
100236	8748
100236	8749
100236	8750
100236	8751
100236	8747
100257	1
100312	100298
100312	100299
100312	100302
100312	100303
100312	100300
100312	100301
100312	100304
100415	100395
100415	100394
100415	100393
100415	100392
100415	100399
100415	100398
100415	100397
100415	100396
100415	100387
100415	100386
100415	100385
100415	100384
100415	100391
100415	100390
100415	100389
100415	100388
100415	100410
100415	100411
100415	100408
100415	100409
100415	100412
100415	100413
100415	100402
100415	100403
100415	100400
100415	100401
100415	100406
100415	100407
100415	100404
100415	100405
100003	8705
100003	8511
100003	8713
100003	8653
100003	8700
100003	8615
100422	100421
100422	100427
100422	100426
100422	100432
100422	100437
100422	100441
100422	100442
100234	8812
100443	8800
100443	8801
100443	8802
100443	8803
100443	8804
100443	8805
100443	8806
100443	8807
100443	8808
100443	8809
100443	8810
100443	8811
100443	8770
100443	8771
100443	8768
100443	8769
100443	8774
100443	8775
100443	8772
100443	8773
100443	8778
100443	8779
100443	8776
100443	8777
100443	8782
100443	8783
100443	8780
100443	8781
100443	8787
100443	8786
100443	8785
100443	8784
100443	8791
100443	8790
100443	8789
100443	8788
100443	8795
100443	8794
100443	8793
100443	8792
100443	8799
100443	8798
100443	8797
100443	8796
100443	8757
100443	8756
100443	8759
100443	8758
100443	8765
100443	8764
100443	8767
100443	8766
100443	8761
100443	8760
100443	8763
100443	8762
100444	8813
100444	8814
100444	8815
100444	8817
100444	8816
100444	8819
100444	8818
100444	8821
100444	8820
100444	8823
100444	8822
100444	8825
100444	8824
100444	8827
100444	8826
100444	8829
100444	8828
100444	8831
100444	8830
100444	8847
100444	8846
100444	8845
100444	8844
100444	8843
100444	8842
100444	8841
100444	8840
100444	8839
100444	8838
100444	8837
100444	8836
100444	8835
100444	8834
100444	8833
100444	8832
100444	8848
100445	8939
100445	8941
100445	8940
100445	8943
100445	8942
100445	8952
100445	8953
100445	8954
100445	8955
100445	8956
100445	8957
100445	8958
100445	8959
100445	8944
100445	8945
100445	8946
100445	8947
100445	8948
100445	8949
100445	8950
100445	8951
100445	9024
100445	9025
100445	9026
100445	9027
100445	9028
100445	9015
100445	9014
100445	9013
100445	9012
100445	9011
100445	9010
100445	9009
100445	9008
100445	9023
100445	9022
100445	9021
100445	9020
100445	9019
100445	9018
100445	9017
100445	9016
100445	8998
100445	8999
100445	8996
100445	8997
100445	8994
100445	8995
100445	8992
100445	8993
100445	9006
100445	9007
100445	9004
100445	9005
100445	9002
100445	9003
100445	9000
100445	9001
100445	8981
100445	8980
100445	8983
100445	8982
100445	8977
100445	8976
100445	8979
100445	8978
100445	8989
100445	8988
100445	8991
100445	8990
100445	8985
100445	8984
100445	8987
100445	8986
100445	8964
100445	8965
100445	8966
100445	8967
100445	8960
100445	8961
100445	8962
100445	8963
100445	8972
100445	8973
100445	8974
100445	8975
100445	8968
100445	8969
100445	8970
100445	8971
100446	9075
100446	9074
100446	9073
100446	9072
100446	9079
100446	9078
100446	9077
100446	9076
100446	9083
100446	9082
100446	9081
100446	9080
100446	9087
100446	9086
100446	9085
100446	9084
100446	9058
100446	9059
100446	9056
100446	9057
100446	9062
100446	9063
100446	9060
100446	9061
100446	9066
100446	9067
100446	9064
100446	9065
100446	9070
100446	9071
100446	9068
100446	9069
100446	9041
100446	9040
100446	9043
100446	9042
100446	9045
100446	9044
100446	9047
100446	9046
100446	9049
100446	9048
100446	9051
100446	9050
100446	9053
100446	9052
100446	9055
100446	9054
100446	9030
100446	9031
100446	9032
100446	9033
100446	9034
100446	9035
100446	9036
100446	9037
100446	9038
100446	9039
100446	100155
100446	9093
100446	9092
100446	9095
100446	9094
100446	9089
100446	9088
100446	9091
100446	9090
100447	9116
100447	9117
100447	9118
100447	9119
100447	9112
100447	9113
100447	9114
100447	9115
100447	9127
100447	9126
100447	9125
100447	9124
100447	9123
100447	9122
100447	9121
100447	9120
100448	9194
100448	9193
100448	9192
100448	9187
100448	9186
100448	9185
100448	9184
100448	9191
100448	9190
100448	9189
100448	9188
100448	9176
100448	9177
100448	9178
100448	9179
100448	9180
100448	9181
100448	9182
100448	9183
100448	9168
100448	9169
100448	9170
100448	9171
100448	9172
100448	9173
100448	9174
100448	9175
100448	9161
100448	9160
100448	9163
100448	9162
100448	9165
100448	9164
100448	9167
100448	9166
100448	9153
100448	9152
100448	9155
100448	9154
100448	9157
100448	9156
100448	9159
100448	9158
100448	9150
100448	9151
100448	9148
100448	9149
100448	9146
100448	9147
100448	9144
100448	9145
100448	9142
100448	9143
100448	9140
100448	9141
100448	9138
100448	9139
100448	9136
100448	9137
100448	9135
100448	9134
100448	9133
100448	9132
100448	9131
100448	9130
100448	9129
100448	9128
100449	9210
100449	9211
100449	9208
100449	9209
100449	9214
100449	9215
100449	9212
100449	9213
100449	9202
100449	9218
100449	9203
100449	9219
100449	9200
100449	9216
100449	9201
100449	9217
100449	9206
100449	9207
100449	9220
100449	9204
100449	9205
100449	9195
100449	9199
100449	9198
100449	9197
100449	9196
100450	9226
100450	9227
100450	9224
100450	9225
100450	9230
100450	9231
100450	9228
100450	9229
100450	9222
100450	9223
100450	9221
100450	9243
100450	9242
100450	9241
100450	9240
100450	9247
100450	9246
100450	9245
100450	9244
100450	9235
100450	9234
100450	9233
100450	9232
100450	9239
100450	9238
100450	9237
100450	9236
100450	9256
100450	9257
100450	9258
100450	9259
100450	9260
100450	9261
100450	9262
100450	9263
100450	9248
100450	9249
100450	9250
100450	9251
100450	9252
100450	9253
100450	9254
100450	9255
100450	9273
100450	9272
100450	9275
100450	9274
100450	9277
100450	9276
100450	9279
100450	9278
100450	9265
100450	9264
100450	9267
100450	9266
100450	9269
100450	9268
100450	9271
100450	9270
100450	9294
100450	9295
100450	9292
100450	9293
100450	9290
100450	9291
100450	9288
100450	9289
100450	9286
100450	9287
100450	9284
100450	9285
100450	9282
100450	9283
100450	9280
100450	9281
100450	9296
100451	9366
100451	9367
100451	9370
100451	9371
100451	9368
100451	9369
100451	9374
100451	9375
100451	9372
100451	9373
100451	9377
100451	9376
100451	9379
100451	9378
100451	9381
100451	9380
100451	9383
100451	9382
100451	9385
100451	9384
100451	9387
100451	9386
100451	9389
100451	9388
100451	9391
100451	9390
100451	9392
100451	9393
100451	9394
100451	9395
100451	9396
100451	9397
100451	9398
100451	9399
100451	9400
100451	9401
100451	9402
100451	9403
100451	9404
100451	9405
100451	9406
100451	9407
100451	9415
100451	9414
100451	9413
100451	9412
100451	9411
100451	9410
100451	9409
100451	9408
100451	9423
100451	9422
100451	9421
100451	9420
100451	9419
100451	9418
100451	9417
100451	9416
100451	9430
100451	9431
100451	9428
100451	9429
100451	9426
100451	9427
100451	9424
100451	9425
100451	9434
100451	9432
100451	9433
100452	9445
100452	9444
100452	9447
100452	9446
100452	9441
100452	9440
100452	9443
100452	9442
100452	9453
100452	9452
100452	9454
100452	9449
100452	9448
100452	9451
100452	9450
100452	9438
100452	9439
100452	9436
100452	9437
100452	9435
100453	9497
100453	9496
100453	9499
100453	9498
100453	9501
100453	9500
100453	9503
100453	9502
100453	9489
100453	9488
100453	9491
100453	9490
100453	9493
100453	9492
100453	9495
100453	9494
100453	9480
100453	9481
100453	9482
100453	9483
100453	9484
100453	9485
100453	9486
100453	9487
100453	9472
100453	9473
100453	9474
100453	9475
100453	9476
100453	9477
100453	9478
100453	9479
100453	9531
100453	9530
100453	9529
100453	9528
100453	9535
100453	9534
100453	9533
100453	9532
100453	9523
100453	9522
100453	9521
100453	9520
100453	9527
100453	9526
100453	9525
100453	9524
100453	9514
100453	9515
100453	9512
100453	9513
100453	9518
100453	9519
100453	9516
100453	9517
100453	9506
100453	9507
100453	9504
100453	9505
100453	9510
100453	9511
100453	9508
100453	9509
100453	9548
100453	9549
100453	9544
100453	9545
100453	9546
100453	9547
100453	9540
100453	9541
100453	9542
100453	9543
100453	9536
100453	9537
100453	9538
100453	9539
100453	90
100453	9455
100453	9460
100453	9461
100453	9462
100453	9463
100453	9456
100453	9457
100453	9458
100453	9459
100453	9468
100453	9469
100453	9470
100453	9471
100453	9464
100453	9465
100453	9466
100453	9467
100422	100459
100422	100458
100485	100480
100485	100478
100485	100481
100485	100479
100485	100482
100485	100476
100485	100483
100485	100477
100485	100484
\.


--
-- Data for Name: card_set_white_card; Type: TABLE DATA; Schema: public; Owner: cah
--

COPY card_set_white_card (card_set_id, white_card_id) FROM stdin;
1151	1
1151	2
1151	3
1151	4
1151	5
1151	6
1151	7
1151	8
1151	9
1151	10
1151	11
1151	12
1151	13
1151	14
1151	15
1151	17
1151	16
1151	19
1151	18
1151	21
1151	20
1151	23
1151	22
1151	25
1151	24
1151	27
1151	26
1151	29
1151	28
1151	31
1151	30
1151	34
1151	35
1151	32
1151	33
1151	38
1151	39
1151	36
1151	37
1151	42
1151	43
1151	40
1151	41
1151	46
1151	47
1151	44
1151	45
1151	51
1151	50
1151	49
1151	48
1151	55
1151	54
1151	53
1151	52
1151	59
1151	58
1151	57
1151	56
1151	63
1151	62
1151	61
1151	60
1151	68
1151	69
1151	70
1151	71
1151	64
1151	65
1151	66
1151	67
1151	76
1151	77
1151	78
1151	79
1151	72
1151	73
1151	74
1151	75
1151	85
1151	84
1151	87
1151	86
1151	81
1151	80
1151	83
1151	82
1151	93
1151	92
1151	95
1151	94
1151	89
1151	88
1151	91
1151	90
1151	102
1151	103
1151	100
1151	101
1151	98
1151	99
1151	96
1151	97
1151	110
1151	111
1151	108
1151	109
1151	106
1151	107
1151	104
1151	105
1151	119
1151	118
1151	117
1151	116
1151	115
1151	114
1151	113
1151	112
1151	127
1151	126
1151	125
1151	124
1151	123
1151	122
1151	121
1151	120
1151	137
1151	136
1151	139
1151	138
1151	141
1151	140
1151	143
1151	142
1151	129
1151	128
1151	131
1151	130
1151	133
1151	132
1151	135
1151	134
1151	152
1151	153
1151	154
1151	155
1151	156
1151	157
1151	158
1151	159
1151	144
1151	145
1151	146
1151	147
1151	148
1151	149
1151	150
1151	151
1151	171
1151	170
1151	169
1151	168
1151	175
1151	174
1151	173
1151	172
1151	163
1151	162
1151	161
1151	160
1151	167
1151	166
1151	165
1151	164
1151	186
1151	187
1151	184
1151	185
1151	190
1151	191
1151	188
1151	189
1151	178
1151	179
1151	176
1151	177
1151	182
1151	183
1151	180
1151	181
1151	205
1151	204
1151	207
1151	206
1151	201
1151	200
1151	203
1151	202
1151	197
1151	196
1151	199
1151	198
1151	193
1151	192
1151	195
1151	194
1151	220
1151	221
1151	222
1151	223
1151	216
1151	217
1151	218
1151	219
1151	212
1151	213
1151	214
1151	215
1151	208
1151	209
1151	210
1151	211
1151	239
1151	238
1151	237
1151	236
1151	235
1151	234
1151	233
1151	232
1151	231
1151	230
1151	229
1151	228
1151	227
1151	226
1151	225
1151	224
1151	254
1151	255
1151	252
1151	253
1151	250
1151	251
1151	248
1151	249
1151	246
1151	247
1151	244
1151	245
1151	242
1151	243
1151	240
1151	241
1151	275
1151	274
1151	273
1151	272
1151	279
1151	278
1151	277
1151	276
1151	283
1151	282
1151	281
1151	280
1151	287
1151	286
1151	285
1151	284
1151	258
1151	259
1151	256
1151	257
1151	262
1151	263
1151	260
1151	261
1151	266
1151	267
1151	264
1151	265
1151	270
1151	271
1151	268
1151	269
1151	305
1151	304
1151	307
1151	306
1151	309
1151	308
1151	311
1151	310
1151	313
1151	312
1151	315
1151	314
1151	317
1151	316
1151	319
1151	318
1151	288
1151	289
1151	290
1151	291
1151	292
1151	293
1151	294
1151	295
1151	296
1151	297
1151	298
1151	299
1151	300
1151	301
1151	302
1151	303
1151	343
1151	342
1151	341
1151	340
1151	339
1151	338
1151	337
1151	336
1151	351
1151	350
1151	349
1151	348
1151	347
1151	346
1151	345
1151	344
1151	326
1151	327
1151	324
1151	325
1151	322
1151	323
1151	320
1151	321
1151	334
1151	335
1151	332
1151	333
1151	330
1151	331
1151	328
1151	329
1151	373
1151	372
1151	375
1151	374
1151	369
1151	368
1151	371
1151	370
1151	381
1151	380
1151	383
1151	382
1151	377
1151	376
1151	379
1151	378
1151	356
1151	357
1151	358
1151	359
1151	352
1151	353
1151	354
1151	355
1151	364
1151	365
1151	366
1151	367
1151	360
1151	361
1151	362
1151	363
1151	410
1151	411
1151	408
1151	409
1151	414
1151	415
1151	412
1151	413
1151	402
1151	403
1151	400
1151	401
1151	406
1151	407
1151	404
1151	405
1151	395
1151	394
1151	393
1151	392
1151	399
1151	398
1151	397
1151	396
1151	387
1151	386
1151	385
1151	384
1151	391
1151	390
1151	389
1151	388
1151	440
1151	441
1151	442
1151	443
1151	444
1151	445
1151	446
1151	447
1151	432
1151	433
1151	434
1151	435
1151	436
1151	437
1151	438
1151	439
1151	425
1151	424
1151	427
1151	426
1151	429
1151	428
1151	431
1151	430
1151	417
1151	416
1151	419
1151	418
1151	421
1151	420
1151	423
1151	422
1151	460
1151	459
1151	458
1151	457
1151	456
1151	455
1151	454
1151	453
1151	452
1151	451
1151	450
1151	449
1151	448
1152	1
1152	2
1152	3
1152	4
1152	5
1152	6
1152	7
1152	10
1152	11
1152	12
1152	13
1152	14
1152	16
1152	19
1152	18
1152	20
1152	23
1152	22
1152	25
1152	24
1152	27
1152	26
1152	29
1152	28
1152	31
1152	30
1152	34
1152	35
1152	32
1152	33
1152	38
1152	39
1152	36
1152	37
1152	42
1152	40
1152	41
1152	46
1152	47
1152	44
1152	45
1152	51
1152	50
1152	49
1152	48
1152	55
1152	54
1152	53
1152	52
1152	59
1152	58
1152	57
1152	56
1152	63
1152	62
1152	61
1152	60
1152	68
1152	70
1152	71
1152	65
1152	66
1152	67
1152	76
1152	77
1152	78
1152	79
1152	72
1152	73
1152	74
1152	75
1152	85
1152	84
1152	87
1152	86
1152	81
1152	80
1152	83
1152	82
1152	93
1152	92
1152	95
1152	94
1152	89
1152	88
1152	91
1152	90
1152	102
1152	103
1152	101
1152	98
1152	99
1152	96
1152	97
1152	111
1152	108
1152	109
1152	106
1152	107
1152	104
1152	105
1152	119
1152	118
1152	117
1152	116
1152	115
1152	114
1152	113
1152	112
1152	127
1152	126
1152	125
1152	124
1152	122
1152	121
1152	137
1152	136
1152	139
1152	138
1152	141
1152	140
1152	142
1152	129
1152	128
1152	132
1152	135
1152	134
1152	152
1152	153
1152	154
1152	155
1152	157
1152	159
1152	144
1152	145
1152	146
1152	147
1152	148
1152	149
1152	150
1152	151
1152	171
1152	170
1152	169
1152	168
1152	175
1152	174
1152	173
1152	172
1152	163
1152	162
1152	161
1152	160
1152	167
1152	166
1152	165
1152	186
1152	187
1152	184
1152	185
1152	191
1152	189
1152	178
1152	179
1152	176
1152	182
1152	183
1152	180
1152	181
1152	205
1152	204
1152	207
1152	206
1152	201
1152	200
1152	203
1152	202
1152	197
1152	196
1152	199
1152	198
1152	193
1152	192
1152	195
1152	194
1152	220
1152	221
1152	222
1152	223
1152	217
1152	218
1152	219
1152	212
1152	213
1152	214
1152	215
1152	208
1152	209
1152	210
1152	211
1152	239
1152	238
1152	237
1152	236
1152	235
1152	234
1152	233
1152	232
1152	231
1152	230
1152	229
1152	228
1152	227
1152	226
1152	225
1152	224
1152	254
1152	255
1152	252
1152	253
1152	250
1152	251
1152	249
1152	246
1152	244
1152	245
1152	242
1152	243
1152	240
1152	241
1152	275
1152	274
1152	272
1152	279
1152	278
1152	277
1152	276
1152	283
1152	282
1152	280
1152	287
1152	286
1152	284
1152	258
1152	259
1152	256
1152	257
1152	262
1152	263
1152	260
1152	261
1152	266
1152	267
1152	265
1152	270
1152	271
1152	268
1152	269
1152	305
1152	304
1152	306
1152	309
1152	308
1152	311
1152	312
1152	315
1152	314
1152	317
1152	316
1152	319
1152	318
1152	289
1152	290
1152	291
1152	292
1152	293
1152	294
1152	295
1152	296
1152	297
1152	298
1152	299
1152	300
1152	302
1152	303
1152	343
1152	340
1152	339
1152	337
1152	336
1152	351
1152	349
1152	348
1152	347
1152	346
1152	345
1152	344
1152	326
1152	327
1152	324
1152	325
1152	322
1152	323
1152	320
1152	321
1152	334
1152	335
1152	332
1152	330
1152	329
1152	373
1152	372
1152	375
1152	374
1152	369
1152	368
1152	370
1152	381
1152	380
1152	382
1152	377
1152	376
1152	379
1152	378
1152	356
1152	357
1152	358
1152	359
1152	352
1152	354
1152	355
1152	364
1152	365
1152	366
1152	367
1152	360
1152	361
1152	362
1152	410
1152	411
1152	408
1152	409
1152	414
1152	415
1152	412
1152	413
1152	402
1152	400
1152	401
1152	406
1152	407
1152	404
1152	405
1152	395
1152	394
1152	393
1152	392
1152	399
1152	398
1152	397
1152	396
1152	387
1152	386
1152	385
1152	384
1152	391
1152	390
1152	389
1152	388
1152	440
1152	441
1152	442
1152	443
1152	444
1152	445
1152	446
1152	447
1152	432
1152	433
1152	434
1152	435
1152	436
1152	437
1152	438
1152	439
1152	425
1152	427
1152	426
1152	429
1152	431
1152	430
1152	417
1152	416
1152	419
1152	418
1152	421
1152	420
1152	423
1152	422
1152	478
1152	479
1152	476
1152	477
1152	474
1152	475
1152	472
1152	473
1152	470
1152	471
1152	468
1152	469
1152	466
1152	467
1152	464
1152	465
1152	463
1152	462
1152	461
1152	460
1152	459
1152	458
1152	457
1152	456
1152	455
1152	453
1152	452
1152	451
1152	450
1152	449
1152	448
1152	508
1152	504
1152	505
1152	506
1152	507
1152	500
1152	501
1152	502
1152	503
1152	496
1152	497
1152	498
1152	499
1152	493
1152	492
1152	495
1152	494
1152	489
1152	488
1152	491
1152	490
1152	485
1152	484
1152	487
1152	486
1152	481
1152	480
1152	483
1152	482
1153	1016
1153	1017
1153	1018
1153	1019
1153	1020
1153	1021
1153	1022
1153	1023
1153	1024
1153	1025
1153	1026
1153	1010
1153	1027
1153	1011
1153	1028
1153	1012
1153	1029
1153	1013
1153	1030
1153	1014
1153	1015
1154	1034
1154	1035
1154	1036
1154	1037
1154	1038
1154	1039
1154	1041
1154	1040
1154	1042
1155	1100
1155	1101
1155	1102
1155	1103
1155	1096
1155	1097
1155	1098
1155	1099
1155	1092
1155	1093
1155	1094
1155	1095
1155	1088
1155	1089
1155	1090
1155	1091
1155	1117
1155	1116
1155	1119
1155	1118
1155	1113
1155	1112
1155	1115
1155	1114
1155	1109
1155	1108
1155	1111
1155	1110
1155	1105
1155	1104
1155	1107
1155	1106
1155	1134
1155	1135
1155	1132
1155	1133
1155	1130
1155	1131
1155	1128
1155	1129
1155	1126
1155	1127
1155	1124
1155	1125
1155	1122
1155	1123
1155	1120
1155	1121
1155	1145
1155	1144
1155	1143
1155	1142
1155	1141
1155	1140
1155	1139
1155	1138
1155	1137
1155	1136
1155	1066
1155	1067
1155	1070
1155	1071
1155	1068
1155	1069
1155	1083
1155	1082
1155	1081
1155	1080
1155	1087
1155	1086
1155	1085
1155	1084
1155	1075
1155	1074
1155	1073
1155	1072
1155	1079
1155	1078
1155	1077
1155	1076
1256	1221
1256	1220
1256	1223
1256	1222
1256	1217
1256	1216
1256	1219
1256	1218
1256	1229
1256	1228
1256	1231
1256	1230
1256	1225
1256	1224
1256	1227
1256	1226
1256	1236
1256	1237
1256	1238
1256	1239
1256	1232
1256	1233
1256	1234
1256	1235
1256	1244
1256	1245
1256	1246
1256	1247
1256	1240
1256	1241
1256	1242
1256	1243
1256	1255
1256	1254
1256	1253
1256	1252
1256	1251
1256	1250
1256	1249
1256	1248
1256	1181
1256	1182
1256	1183
1256	1187
1256	1186
1256	1185
1256	1184
1256	1191
1256	1190
1256	1189
1256	1188
1256	1195
1256	1194
1256	1193
1256	1192
1256	1199
1256	1198
1256	1197
1256	1196
1256	1202
1256	1203
1256	1200
1256	1201
1256	1206
1256	1207
1256	1204
1256	1205
1256	1210
1256	1211
1256	1208
1256	1209
1256	1214
1256	1215
1256	1212
1256	1213
1488	1464
1488	1465
1488	1466
1488	1467
1488	1468
1488	1469
1488	1470
1488	1471
1488	1479
1488	1478
1488	1477
1488	1476
1488	1475
1488	1474
1488	1473
1488	1487
1488	1486
1488	1485
1488	1484
1488	1483
1488	1482
1488	1481
1488	1480
100001	1368
100001	1367
100001	1364
100001	1362
100001	1360
100001	1358
100001	1357
100001	1351
100001	1348
100001	1349
100001	1346
100001	1344
100001	1405
100001	1404
100001	1407
100001	1406
100001	1401
100001	1400
100001	1403
100001	1402
100001	1397
100001	1396
100001	1399
100001	1398
100001	1393
100001	1392
100001	1395
100001	1394
100001	1388
100001	1389
100001	1390
100001	1391
100001	1384
100001	1385
100001	1386
100001	1387
100001	1380
100001	1381
100001	1382
100001	1383
100001	1379
100001	1307
100001	1304
100001	1310
100001	1308
100001	1299
100001	1298
100001	1296
100001	1302
100001	1300
100001	1290
100001	1288
100001	1294
100001	1293
100001	1282
100001	1280
100001	1286
100001	1284
100001	1337
100001	1336
100001	1339
100001	1338
100001	1341
100001	1340
100001	1343
100001	1342
100001	1328
100001	1331
100001	1333
100001	1332
100001	1335
100001	1334
100001	1320
100001	1322
100001	1324
100001	1326
100001	1312
100001	1314
100001	1316
100001	1318
100001	1263
100001	1261
100001	1259
100001	1258
100001	1271
100001	1269
100001	1266
100001	1278
100001	1276
100001	1274
100001	1272
100001	1426
100001	1427
100001	1424
100001	1425
100001	1430
100001	1431
100001	1428
100001	1429
100001	1435
100001	1432
100001	1433
100001	1438
100001	1439
100001	1436
100001	1437
100001	1411
100001	1410
100001	1409
100001	1408
100001	1415
100001	1414
100001	1413
100001	1412
100001	1419
100001	1418
100001	1417
100001	1416
100001	1423
100001	1422
100001	1421
100001	1420
100001	1441
100001	1440
100001	1443
100001	1442
100001	1445
100001	1444
100001	1447
100001	1446
100001	1449
100001	1448
100001	1451
100001	1450
100001	1453
100001	1452
100001	1455
100001	1454
100002	550
100002	551
100002	548
100002	549
100002	546
100002	547
100002	544
100002	545
100002	558
100002	559
100002	556
100002	557
100002	554
100002	555
100002	552
100002	553
100002	567
100002	566
100002	565
100002	564
100002	563
100002	562
100002	561
100002	560
100002	575
100002	574
100002	573
100002	572
100002	571
100002	570
100002	569
100002	568
100002	516
100002	517
100002	518
100002	519
100002	512
100002	513
100002	514
100002	515
100002	524
100002	525
100002	526
100002	527
100002	520
100002	521
100002	522
100002	523
100002	533
100002	532
100002	535
100002	534
100002	529
100002	528
100002	531
100002	530
100002	541
100002	540
100002	543
100002	542
100002	537
100002	536
100002	539
100002	538
100002	610
100002	611
100002	608
100002	609
100002	614
100002	615
100002	612
100002	613
100002	618
100002	619
100002	616
100002	617
100002	620
100002	621
100002	576
100002	577
100002	578
100002	579
100002	580
100002	581
100002	582
100002	583
100002	584
100002	585
100002	586
100002	587
100002	588
100002	589
100002	590
100002	591
100002	593
100002	592
100002	595
100002	594
100002	597
100002	596
100002	599
100002	598
100002	601
100002	600
100002	603
100002	602
100002	605
100002	604
100002	607
100002	606
100002	509
100002	510
100002	511
100003	610
100003	550
100003	551
100003	608
100003	549
100003	544
100003	545
100003	556
100003	554
100003	553
100003	1288
100003	564
100003	572
100003	568
100003	576
100003	516
100003	509
100003	578
100003	518
100003	510
100003	579
100003	512
100003	581
100003	513
100003	582
100003	514
100003	1263
100003	588
100003	520
100003	589
100003	541
100003	540
100003	1383
100003	605
100003	1274
100003	604
100003	539
100003	606
100017	100014
100017	100015
100017	100012
100017	100013
100017	100011
100017	100008
100017	100009
100017	100018
100049	100026
100049	100025
100049	100024
100049	100023
100049	100022
100049	100021
100049	100020
100049	100019
100050	100031
100050	100030
100050	100029
100050	100032
100050	100033
100050	100034
100050	100035
100050	100036
100051	100040
100051	100041
100051	100042
100051	100043
100051	100044
100051	100045
100051	100046
100051	100039
100017	100052
100017	100057
100154	100091
100154	100090
100154	100088
100154	100083
100154	100082
100154	100081
100154	100080
100154	100087
100154	100086
100154	100084
100154	100075
100154	100072
100154	100073
100154	100079
100154	100076
100154	100077
100154	100067
100154	100064
100154	100071
100154	100068
100154	100069
100154	100056
100154	100061
100154	100060
100154	100063
100154	100062
100154	100053
100154	100055
100154	100133
100154	100132
100154	100135
100154	100134
100154	100129
100154	100128
100154	100131
100154	100130
100154	100141
100154	100140
100154	100143
100154	100142
100154	100137
100154	100136
100154	100139
100154	100138
100154	100148
100154	100149
100154	100150
100154	100151
100154	100144
100154	100145
100154	100146
100154	100147
100154	100152
100154	100153
100154	100102
100154	100101
100154	100099
100154	100111
100154	100109
100154	100107
100154	100118
100154	100119
100154	100116
100154	100117
100154	100114
100154	100115
100154	100112
100154	100126
100154	100127
100154	100124
100154	100125
100154	100122
100154	100123
100154	100120
100154	100121
100003	100011
100003	100008
100003	100057
100017	100156
100157	3004
100157	3005
100157	3006
100157	3007
100157	3001
100157	3002
100157	3003
100157	3049
100157	3048
100157	3051
100157	3050
100157	3053
100157	3052
100157	3055
100157	3054
100157	3041
100157	3040
100157	3043
100157	3042
100157	3045
100157	3044
100157	3047
100157	3046
100157	3064
100157	3065
100157	3066
100157	3067
100157	3068
100157	3069
100157	3070
100157	3071
100157	3056
100157	3057
100157	3058
100157	3059
100157	3060
100157	3061
100157	3062
100157	3063
100157	3019
100157	3018
100157	3017
100157	3016
100157	3023
100157	3022
100157	3021
100157	3020
100157	3011
100157	3010
100157	3009
100157	3008
100157	3015
100157	3014
100157	3013
100157	3012
100157	3034
100157	3035
100157	3032
100157	3033
100157	3038
100157	3039
100157	3036
100157	3037
100157	3026
100157	3027
100157	3024
100157	3025
100157	3030
100157	3031
100157	3028
100157	3029
100157	3097
100157	3096
100157	3099
100157	3098
100157	3101
100157	3100
100157	3103
100157	3102
100157	3089
100157	3088
100157	3091
100157	3090
100157	3093
100157	3092
100157	3095
100157	3094
100157	3080
100157	3081
100157	3082
100157	3083
100157	3084
100157	3085
100157	3086
100157	3087
100157	3072
100157	3073
100157	3074
100157	3075
100157	3076
100157	3077
100157	3078
100157	3079
100157	3131
100157	3130
100157	3129
100157	3128
100157	3123
100157	3122
100157	3121
100157	3120
100157	3127
100157	3126
100157	3125
100157	3124
100157	3114
100157	3115
100157	3112
100157	3113
100157	3118
100157	3119
100157	3116
100157	3117
100157	3106
100157	3107
100157	3104
100157	3105
100157	3110
100157	3111
100157	3108
100157	3109
100157	100158
100003	3006
100003	3007
100003	3054
100003	3094
100003	3065
100003	3085
100003	3070
100003	3117
100160	3776
100160	3766
100160	3767
100160	3764
100160	3765
100160	3762
100160	3763
100160	3760
100160	3761
100160	3774
100160	3775
100160	3772
100160	3773
100160	3770
100160	3771
100160	3768
100160	3769
100160	3751
100160	3750
100160	3749
100160	3748
100160	3747
100160	3746
100160	3745
100160	3744
100160	3759
100160	3758
100160	3757
100160	3756
100160	3755
100160	3754
100160	3753
100160	3752
100160	3732
100160	3733
100160	3734
100160	3735
100160	3728
100160	3729
100160	3730
100160	3731
100160	3740
100160	3741
100160	3742
100160	3743
100160	3736
100160	3737
100160	3738
100160	3739
100160	3717
100160	3716
100160	3719
100160	3718
100160	3713
100160	3712
100160	3715
100160	3714
100160	3725
100160	3724
100160	3727
100160	3726
100160	3721
100160	3720
100160	3723
100160	3722
100160	3707
100160	3706
100160	3705
100160	3704
100160	3711
100160	3710
100160	3709
100160	3708
100160	3699
100160	3698
100160	3697
100160	3696
100160	3703
100160	3702
100160	3701
100160	3700
100160	3690
100160	3691
100160	3688
100160	3689
100160	3694
100160	3695
100160	3692
100160	3693
100160	3682
100160	3683
100160	3680
100160	3681
100160	3686
100160	3687
100160	3684
100160	3685
100160	3673
100160	3672
100160	3675
100160	3674
100160	3677
100160	3676
100160	3679
100160	3678
100160	3665
100160	3664
100160	3667
100160	3666
100160	3669
100160	3668
100160	3671
100160	3670
100160	3662
100160	3663
100003	3709
100003	3708
100003	3688
100003	3687
100003	3684
100003	3676
100003	3667
100003	3666
100003	3671
100003	3670
100003	3663
100003	3762
100003	3763
100003	3100
100003	3761
100003	3773
100003	3770
100003	3084
100003	3744
100003	3059
100003	3754
100003	3740
100003	3011
100003	3742
100003	3121
100003	3009
100003	3736
100003	3014
100003	3719
100003	3104
100003	3723
100161	4131
100161	4065
100161	4130
100161	4064
100161	4129
100161	4067
100161	4128
100161	4066
100161	4135
100161	4069
100161	4134
100161	4068
100161	4133
100161	4071
100161	4132
100161	4070
100161	4073
100161	4139
100161	4138
100161	4072
100161	4075
100161	4137
100161	4074
100161	4136
100161	4077
100161	4143
100161	4076
100161	4142
100161	4079
100161	4141
100161	4078
100161	4140
100161	4080
100161	4146
100161	4081
100161	4147
100161	4082
100161	4144
100161	4083
100161	4145
100161	4084
100161	4150
100161	4085
100161	4151
100161	4086
100161	4148
100161	4087
100161	4149
100161	4088
100161	4154
100161	4089
100161	4155
100161	4090
100161	4152
100161	4091
100161	4153
100161	4092
100161	4158
100161	4093
100161	4159
100161	4094
100161	4156
100161	4095
100161	4157
100161	4097
100161	4035
100161	4096
100161	4034
100161	4099
100161	4033
100161	4098
100161	4032
100161	4101
100161	4039
100161	4100
100161	4038
100161	4103
100161	4037
100161	4102
100161	4036
100161	4105
100161	4043
100161	4104
100161	4042
100161	4107
100161	4041
100161	4106
100161	4040
100161	4109
100161	4047
100161	4108
100161	4046
100161	4111
100161	4045
100161	4110
100161	4044
100161	4112
100161	4050
100161	4113
100161	4051
100161	4114
100161	4048
100161	4115
100161	4049
100161	4116
100161	4054
100161	4117
100161	4055
100161	4118
100161	4052
100161	4119
100161	4053
100161	4120
100161	4058
100161	4121
100161	4059
100161	4122
100161	4056
100161	4123
100161	4057
100161	4124
100161	4062
100161	4125
100161	4063
100161	4126
100161	4060
100161	4127
100161	4061
100161	4199
100161	4005
100161	4004
100161	4197
100161	4007
100161	4196
100161	4006
100161	4195
100161	4001
100161	4194
100161	4000
100161	4193
100161	4003
100161	4192
100161	4002
100161	4207
100161	4013
100161	4206
100161	4012
100161	4205
100161	4015
100161	4204
100161	4014
100161	4203
100161	4009
100161	4202
100161	4008
100161	4201
100161	4011
100161	4200
100161	4010
100161	4214
100161	4020
100161	4215
100161	4021
100161	4212
100161	4022
100161	4213
100161	4023
100161	4210
100161	4016
100161	4211
100161	4017
100161	4018
100161	4209
100161	4019
100161	4222
100161	4028
100161	4223
100161	4029
100161	4220
100161	4030
100161	4221
100161	4031
100161	4218
100161	4024
100161	4219
100161	4025
100161	4216
100161	4026
100161	4217
100161	4027
100161	4165
100161	4164
100161	4167
100161	4166
100161	4161
100161	4163
100161	4162
100161	4173
100161	4172
100161	4175
100161	4174
100161	4169
100161	4168
100161	4171
100161	4170
100161	4180
100161	4181
100161	4182
100161	4183
100161	4176
100161	4177
100161	4178
100161	4179
100161	4188
100161	3998
100161	4189
100161	3999
100161	4190
100161	3996
100161	4191
100161	3997
100161	4184
100161	3994
100161	4185
100161	3995
100161	4186
100161	4187
100161	3993
100161	4224
100161	4225
100161	4226
100161	4227
100161	4228
100003	4084
100003	4085
100003	4148
100003	4088
100003	4089
100003	4090
100003	4096
100003	4044
100003	4053
100003	4120
100003	4121
100003	4207
100003	4201
100003	4011
100003	4021
100003	4023
100003	4029
100003	4030
100003	4031
100003	4161
100003	4175
100003	4170
100003	4180
100003	4183
100003	3998
100003	3996
100003	4191
100003	3994
100003	4045
100157	4229
100017	100162
100003	100162
100211	100193
100211	100192
100211	100195
100211	100194
100211	100197
100211	100196
100211	100199
100211	100198
100211	100201
100211	100200
100211	100202
100211	100205
100211	100204
100211	100167
100211	100166
100211	100165
100211	100164
100211	100170
100211	100168
100211	100175
100211	100174
100211	100173
100211	100172
100211	100178
100211	100179
100211	100176
100211	100177
100211	100182
100211	100183
100211	100180
100211	100181
100211	100186
100211	100187
100211	100184
100211	100185
100211	100190
100211	100191
100211	100188
100211	100189
100211	19
100211	441
100211	308
100211	173
100211	340
100211	85
100211	101
100211	368
100211	380
100211	357
100211	365
100211	272
100211	400
100211	154
100211	100212
100211	145
100211	384
100211	34
100211	169
100211	36
100211	312
100211	167
100211	45
100211	294
100211	295
100211	419
100211	301
100211	77
100211	471
100211	74
100211	456
100211	93
100211	209
100211	102
100211	232
100211	106
100211	358
100211	359
100211	122
100211	6
100211	263
100211	266
100211	31
100211	315
100211	292
100211	303
100211	347
100211	345
100211	103
100211	125
100211	437
100211	427
100211	193
100211	462
100211	451
100211	235
100211	226
100211	488
100211	283
100211	286
100211	23
100211	26
100211	270
100211	305
100211	306
100211	296
100211	70
100211	71
100211	337
100211	1038
100211	336
100211	87
100211	1041
100211	1042
100211	330
100211	355
100211	367
100211	362
100211	138
100211	389
100211	444
100211	446
100211	172
100211	418
100211	420
100211	479
100211	195
100211	222
100211	461
100211	210
100211	448
100211	229
100211	249
100211	245
100211	256
100211	35
100211	33
100211	310
100211	40
100211	44
100211	49
100211	63
100211	1035
100211	65
100211	67
100211	329
100211	98
100211	104
100211	105
100211	360
100211	137
100211	142
100211	394
100211	151
100211	171
100211	443
100211	447
100211	434
100211	161
100211	189
100211	417
100211	478
100211	475
100211	198
100211	463
100211	223
100211	457
100211	504
100211	503
100211	244
100211	481
100211	2
100211	10
100211	27
100211	32
100211	37
100211	42
100211	41
100211	51
100211	56
100211	72
100211	97
100211	118
100211	114
100211	141
100211	140
100211	160
100211	200
100211	202
100211	221
100211	218
100211	246
100211	287
100211	265
100211	297
100211	300
100211	339
100211	325
100211	354
100211	361
100211	405
100211	399
100211	445
100211	436
100211	423
100211	469
100211	484
100211	12
100211	94
100211	166
100211	180
100211	239
100211	274
100211	317
100211	348
100211	334
100211	370
100211	356
100211	395
100211	432
100211	435
100211	426
100211	508
100211	48
100211	90
100211	132
100211	159
100211	146
100211	175
100211	191
100211	205
100211	237
100211	230
100211	241
100211	332
100211	411
100211	425
100211	453
100211	492
100211	495
100211	480
100211	38
100211	50
100211	61
100211	1036
100211	80
100211	117
100211	115
100211	127
100211	126
100211	124
100211	136
100211	135
100211	150
100211	170
100211	204
100211	206
100211	194
100211	208
100211	236
100211	228
100211	255
100211	253
100211	276
100211	298
100211	299
100211	326
100211	327
100211	382
100211	376
100211	440
100211	431
100211	476
100211	477
100211	474
100211	501
100211	496
100211	499
100211	493
100211	485
100211	22
100211	30
100211	47
100211	62
100211	60
100211	73
100211	88
100211	111
100211	147
100211	149
100211	168
100211	185
100211	182
100211	220
100211	213
100211	225
100211	275
100211	277
100211	311
100211	319
100211	349
100211	373
100211	372
100211	375
100211	409
100211	414
100211	415
100211	407
100211	396
100211	391
100211	388
100211	442
100211	421
100211	467
100211	452
100211	500
100211	497
100211	487
100211	24
100211	46
100211	1039
100211	82
100211	128
100211	181
100211	211
100211	252
100211	280
100211	257
100211	322
100211	402
100211	401
100211	404
100211	392
100211	387
100211	385
100211	466
100211	482
100211	3
100211	100213
100211	28
100211	52
100211	59
100211	58
100211	57
100211	83
100211	1040
100211	109
100211	155
100211	144
100211	163
100211	201
100211	199
100211	217
100211	234
100211	231
100211	224
100211	254
100211	261
100211	314
100211	316
100211	343
100211	351
100211	346
100211	364
100211	408
100211	412
100211	406
100211	430
100211	416
100211	472
100211	470
100211	460
100211	494
100211	490
100211	54
100211	53
100211	79
100211	91
100211	112
100211	153
100211	183
100211	197
100211	284
100211	259
100211	413
100211	455
100211	505
100211	506
100211	489
100211	1
100211	11
100211	13
100211	16
100211	100214
100211	100215
100211	25
100211	29
100211	39
100211	55
100211	1037
100211	76
100211	75
100211	108
100211	129
100211	152
100211	157
100211	148
100211	174
100211	165
100211	178
100211	179
100211	203
100211	196
100211	192
100211	216
100211	215
100211	238
100211	233
100211	227
100211	250
100211	242
100211	279
100211	267
100211	271
100211	268
100211	269
100211	304
100211	318
100211	323
100211	377
100211	393
100211	397
100211	386
100211	433
100211	429
100211	473
100211	465
100211	459
100211	458
100211	100216
100211	4
100211	5
100211	7
100211	18
100211	1034
100211	84
100211	95
100211	99
100211	212
100211	214
100211	278
100211	282
100211	290
100211	302
100211	324
100211	374
100211	410
100211	390
100211	187
100211	293
100211	498
100161	4266
100161	4267
100161	4264
100161	4265
100161	4270
100161	4271
100161	4268
100161	4269
100161	4258
100161	4259
100161	4256
100161	4257
100161	4262
100161	4263
100161	4260
100161	4261
100161	4273
100161	4272
100161	4232
100161	4233
100161	4234
100161	4235
100161	4236
100161	4237
100161	4238
100161	4239
100161	4230
100161	4231
100161	4249
100161	4248
100161	4251
100161	4250
100161	4253
100161	4252
100161	4255
100161	4254
100161	4241
100161	4240
100161	4243
100161	4242
100161	4245
100161	4244
100161	4247
100161	4246
100157	4275
100157	4274
100157	4277
100157	4276
100219	4400
100219	4401
100219	4402
100219	4403
100219	4404
100219	4405
100219	4406
100219	4407
100219	4408
100219	4409
100219	4410
100219	4411
100219	4412
100219	4413
100219	4414
100219	4415
100219	4385
100219	4384
100219	4387
100219	4386
100219	4389
100219	4388
100219	4391
100219	4390
100219	4393
100219	4392
100219	4395
100219	4394
100219	4397
100219	4396
100219	4399
100219	4398
100219	4370
100219	4371
100219	4368
100219	4369
100219	4374
100219	4375
100219	4372
100219	4373
100219	4378
100219	4379
100219	4376
100219	4377
100219	4382
100219	4383
100219	4380
100219	4381
100219	4359
100219	4358
100219	4363
100219	4362
100219	4361
100219	4360
100219	4367
100219	4366
100219	4365
100219	4364
100219	4453
100219	4452
100219	4455
100219	4454
100219	4449
100219	4448
100219	4451
100219	4450
100219	4457
100219	4456
100219	4458
100219	4438
100219	4439
100219	4436
100219	4437
100219	4434
100219	4435
100219	4432
100219	4433
100219	4446
100219	4447
100219	4444
100219	4445
100219	4442
100219	4443
100219	4440
100219	4441
100219	4423
100219	4422
100219	4421
100219	4420
100219	4419
100219	4418
100219	4417
100219	4416
100219	4431
100219	4430
100219	4429
100219	4428
100219	4427
100219	4426
100219	4425
100219	4424
100003	4400
100003	4401
100003	4404
100003	4405
100003	4407
100003	4396
100003	4364
100003	4454
100003	4458
100017	100220
100017	100221
100017	100222
100224	4468
100224	4469
100224	4470
100224	4471
100224	4464
100224	4465
100224	4466
100224	4467
100224	4476
100224	4477
100224	4478
100224	4479
100224	4472
100224	4473
100224	4474
100224	4475
100224	4461
100224	4460
100224	4463
100224	4462
100224	4459
100224	4537
100224	4536
100224	4539
100224	4538
100224	4541
100224	4540
100224	4543
100224	4542
100224	4529
100224	4528
100224	4531
100224	4530
100224	4533
100224	4532
100224	4535
100224	4534
100224	4520
100224	4521
100224	4522
100224	4523
100224	4524
100224	4525
100224	4526
100224	4527
100224	4512
100224	4513
100224	4514
100224	4515
100224	4516
100224	4517
100224	4518
100224	4519
100224	4507
100224	4506
100224	4505
100224	4504
100224	4511
100224	4510
100224	4509
100224	4508
100224	4499
100224	4498
100224	4497
100224	4496
100224	4503
100224	4502
100224	4501
100224	4500
100224	4490
100224	4491
100224	4488
100224	4489
100224	4494
100224	4495
100224	4492
100224	4493
100224	4482
100224	4483
100224	4480
100224	4481
100224	4486
100224	4487
100224	4484
100224	4485
100224	4605
100224	4604
100224	4607
100224	4606
100224	4601
100224	4600
100224	4603
100224	4602
100224	4597
100224	4596
100224	4599
100224	4598
100224	4593
100224	4592
100224	4595
100224	4594
100224	4588
100224	4589
100224	4590
100224	4591
100224	4584
100224	4585
100224	4586
100224	4587
100224	4580
100224	4581
100224	4582
100224	4583
100224	4576
100224	4577
100224	4578
100224	4579
100224	4575
100224	4574
100224	4573
100224	4572
100224	4571
100224	4570
100224	4569
100224	4568
100224	4567
100224	4566
100224	4565
100224	4564
100224	4563
100224	4562
100224	4561
100224	4560
100224	4558
100224	4559
100224	4556
100224	4557
100224	4554
100224	4555
100224	4552
100224	4553
100224	4550
100224	4551
100224	4548
100224	4549
100224	4546
100224	4547
100224	4544
100224	4545
100224	4613
100224	4612
100224	4615
100224	4614
100224	4609
100224	4608
100224	4611
100224	4610
100224	4621
100224	4620
100224	4623
100224	4622
100224	4617
100224	4616
100224	4619
100224	4618
100224	4628
100224	4629
100224	4630
100224	4631
100224	4624
100224	4625
100224	4626
100224	4627
100224	4636
100224	4637
100224	4638
100224	4639
100224	4632
100224	4633
100224	4634
100224	4635
100224	4647
100224	4646
100224	4645
100224	4644
100224	4643
100224	4642
100224	4641
100224	4640
100224	4655
100224	4654
100224	4653
100224	4652
100224	4651
100224	4650
100224	4649
100224	4648
100224	4662
100224	4663
100224	4660
100224	4661
100224	4658
100224	4659
100224	4656
100224	4657
100224	4670
100224	4671
100224	4668
100224	4669
100224	4666
100224	4667
100224	4664
100224	4665
100224	4673
100224	4672
100224	4675
100224	4674
100224	4677
100224	4676
100224	4679
100224	4678
100224	4681
100224	4680
100224	4683
100224	4682
100224	4685
100224	4684
100224	4687
100224	4686
100224	4688
100224	4689
100224	4690
100224	4691
100224	4692
100224	4693
100224	4694
100224	4695
100224	4696
100224	4697
100224	4698
100224	4699
100224	4700
100224	4701
100224	4702
100224	4703
100224	4707
100224	4706
100224	4705
100224	4704
100224	4711
100224	4710
100224	4709
100224	4708
100224	4715
100224	4714
100224	4713
100224	4712
100224	4719
100224	4718
100224	4717
100224	4716
100224	4722
100224	4723
100224	4720
100224	4721
100224	4726
100224	4727
100224	4724
100224	4725
100224	4730
100224	4731
100224	4728
100224	4729
100224	4734
100224	4735
100224	4732
100224	4733
100224	4748
100224	4749
100224	4750
100224	4751
100224	4744
100224	4745
100224	4746
100224	4747
100224	4740
100224	4741
100224	4742
100224	4743
100224	4736
100224	4737
100224	4738
100224	4739
100224	4765
100224	4764
100224	4767
100224	4766
100224	4761
100224	4760
100224	4763
100224	4762
100224	4757
100224	4756
100224	4759
100224	4758
100224	4753
100224	4752
100224	4755
100224	4754
100224	4782
100224	4783
100224	4780
100224	4781
100224	4778
100224	4779
100224	4776
100224	4777
100224	4774
100224	4775
100224	4772
100224	4773
100224	4770
100224	4771
100224	4768
100224	4769
100224	4799
100224	4798
100224	4797
100224	4796
100224	4795
100224	4794
100224	4793
100224	4792
100224	4791
100224	4790
100224	4789
100224	4788
100224	4787
100224	4786
100224	4785
100224	4784
100224	4808
100224	4809
100224	4810
100224	4811
100224	4812
100224	4813
100224	4814
100224	4815
100224	4800
100224	4801
100224	4802
100224	4803
100224	4804
100224	4805
100224	4806
100224	4807
100224	4825
100224	4824
100224	4827
100224	4826
100224	4829
100224	4828
100224	4831
100224	4830
100224	4817
100224	4816
100224	4819
100224	4818
100224	4821
100224	4820
100224	4823
100224	4822
100224	4842
100224	4843
100224	4840
100224	4841
100224	4846
100224	4847
100224	4844
100224	4845
100224	4834
100224	4835
100224	4832
100224	4833
100224	4838
100224	4839
100224	4836
100224	4837
100224	4850
100224	4849
100224	4848
100225	4886
100225	4887
100225	4884
100225	4885
100225	4882
100225	4883
100225	4880
100225	4881
100225	4894
100225	4895
100225	4892
100225	4893
100225	4890
100225	4891
100225	4888
100225	4889
100225	4871
100225	4870
100225	4869
100225	4868
100225	4867
100225	4866
100225	4865
100225	4864
100225	4879
100225	4878
100225	4877
100225	4876
100225	4875
100225	4874
100225	4873
100225	4872
100225	4916
100225	4917
100225	4918
100225	4919
100225	4912
100225	4913
100225	4914
100225	4915
100225	4924
100225	4925
100225	4926
100225	4927
100225	4920
100225	4921
100225	4922
100225	4923
100225	4901
100225	4900
100225	4903
100225	4902
100225	4897
100225	4896
100225	4899
100225	4898
100225	4909
100225	4908
100225	4911
100225	4910
100225	4905
100225	4904
100225	4907
100225	4906
100225	4946
100225	4947
100225	4944
100225	4945
100225	4948
100225	4949
100225	4931
100225	4930
100225	4929
100225	4928
100225	4935
100225	4934
100225	4933
100225	4932
100225	4939
100225	4938
100225	4937
100225	4936
100225	4943
100225	4942
100225	4941
100225	4940
100225	4859
100225	4858
100225	4857
100225	4856
100225	4863
100225	4862
100225	4861
100225	4860
100225	4851
100225	4855
100225	4854
100225	4853
100225	4852
100003	4886
100003	4880
100003	4894
100003	4893
100003	4888
100003	4618
100003	4869
100003	4877
100003	4876
100003	4644
100003	4914
100003	4926
100003	4923
100003	4901
100003	4900
100003	4903
100003	4897
100003	4658
100003	4659
100003	4905
100003	4947
100003	4944
100003	4471
100003	4948
100003	4466
100003	4477
100003	4682
100003	4687
100003	4930
100003	4929
100003	4690
100003	4461
100003	4462
100003	4942
100003	4941
100003	4707
100003	4727
100003	4738
100003	4535
100003	4739
100003	4534
100003	4764
100003	4522
100003	4523
100003	4524
100003	4517
100003	4506
100003	4510
100003	4489
100003	4494
100003	4493
100003	4482
100003	4480
100003	4808
100003	4602
100003	4803
100003	4805
100003	4584
100003	4577
100003	4859
100003	4858
100003	4863
100003	4862
100003	4861
100003	4552
100003	4851
100003	4548
100003	4854
100003	4853
100003	4852
100228	10047
100228	10046
100228	10045
100228	10044
100228	10043
100228	10042
100228	10041
100228	10040
100228	10039
100228	10038
100228	10037
100228	10036
100228	10035
100228	10034
100228	10033
100228	10032
100228	10030
100228	10031
100228	10028
100228	10029
100228	10026
100228	10027
100228	10024
100228	10025
100228	10022
100228	10023
100228	10020
100228	10021
100228	10018
100228	10019
100228	10016
100228	10017
100228	10013
100228	10012
100228	10015
100228	10014
100228	10009
100228	10008
100228	10011
100228	10010
100228	10005
100228	10004
100228	10007
100228	10006
100228	10001
100228	10003
100228	10002
100228	10107
100228	10106
100228	10105
100228	10104
100228	10111
100228	10110
100228	10109
100228	10108
100228	10099
100228	10098
100228	10097
100228	10096
100228	10103
100228	10102
100228	10101
100228	10100
100228	10090
100228	10091
100228	10088
100228	10089
100228	10094
100228	10095
100228	10092
100228	10093
100228	10082
100228	10083
100228	10080
100228	10081
100228	10086
100228	10087
100228	10084
100228	10085
100228	10073
100228	10072
100228	10075
100228	10074
100228	10077
100228	10076
100228	10079
100228	10078
100228	10065
100228	10064
100228	10067
100228	10066
100228	10069
100228	10068
100228	10071
100228	10070
100228	10056
100228	10057
100228	10058
100228	10059
100228	10060
100228	10061
100228	10062
100228	10063
100228	10048
100228	10049
100228	10050
100228	10051
100228	10052
100228	10053
100228	10054
100228	10055
100228	10166
100228	10167
100228	10164
100228	10165
100228	10162
100228	10163
100228	10160
100228	10161
100228	10174
100228	10175
100228	10172
100228	10173
100228	10170
100228	10171
100228	10168
100228	10169
100228	10151
100228	10150
100228	10149
100228	10148
100228	10147
100228	10146
100228	10145
100228	10144
100228	10159
100228	10158
100228	10157
100228	10156
100228	10155
100228	10154
100228	10153
100228	10152
100228	10132
100228	10133
100228	10134
100228	10135
100228	10128
100228	10129
100228	10130
100228	10131
100228	10140
100228	10141
100228	10142
100228	10143
100228	10136
100228	10137
100228	10138
100228	10139
100228	10117
100228	10116
100228	10119
100228	10118
100228	10113
100228	10112
100228	10115
100228	10114
100228	10125
100228	10124
100228	10127
100228	10126
100228	10121
100228	10120
100228	10123
100228	10122
100228	10177
100228	10176
100228	10178
100229	10701
100229	10700
100229	10703
100229	10702
100229	10697
100229	10696
100229	10699
100229	10698
100229	10693
100229	10692
100229	10695
100229	10694
100229	10689
100229	10688
100229	10691
100229	10690
100229	10716
100229	10717
100229	10718
100229	10719
100229	10712
100229	10713
100229	10714
100229	10715
100229	10708
100229	10709
100229	10710
100229	10711
100229	10704
100229	10705
100229	10706
100229	10707
100229	10723
100229	10722
100229	10721
100229	10720
100229	10633
100229	10632
100229	10635
100229	10634
100229	10637
100229	10636
100229	10639
100229	10638
100229	10625
100229	10624
100229	10627
100229	10626
100229	10629
100229	10628
100229	10631
100229	10630
100229	10648
100229	10649
100229	10650
100229	10651
100229	10652
100229	10653
100229	10654
100229	10655
100229	10640
100229	10641
100229	10642
100229	10643
100229	10644
100229	10645
100229	10646
100229	10647
100229	10667
100229	10666
100229	10665
100229	10664
100229	10671
100229	10670
100229	10669
100229	10668
100229	10659
100229	10658
100229	10657
100229	10656
100229	10663
100229	10662
100229	10661
100229	10660
100229	10682
100229	10683
100229	10680
100229	10681
100229	10686
100229	10687
100229	10684
100229	10685
100229	10674
100229	10675
100229	10672
100229	10673
100229	10678
100229	10679
100229	10676
100229	10677
100229	10564
100229	10565
100229	10566
100229	10567
100229	10560
100229	10561
100229	10562
100229	10563
100229	10572
100229	10573
100229	10574
100229	10575
100229	10568
100229	10569
100229	10570
100229	10571
100229	10581
100229	10580
100229	10583
100229	10582
100229	10577
100229	10576
100229	10579
100229	10578
100229	10589
100229	10588
100229	10591
100229	10590
100229	10585
100229	10584
100229	10587
100229	10586
100229	10598
100229	10599
100229	10596
100229	10597
100229	10594
100229	10595
100229	10592
100229	10593
100229	10606
100229	10607
100229	10604
100229	10605
100229	10602
100229	10603
100229	10600
100229	10601
100229	10615
100229	10614
100229	10613
100229	10612
100229	10611
100229	10610
100229	10609
100229	10608
100229	10623
100229	10622
100229	10621
100229	10620
100229	10619
100229	10618
100229	10617
100229	10616
100229	10509
100229	10510
100229	10511
100229	10513
100229	10512
100229	10515
100229	10514
100229	10517
100229	10516
100229	10519
100229	10518
100229	10521
100229	10520
100229	10523
100229	10522
100229	10525
100229	10524
100229	10527
100229	10526
100229	10530
100229	10531
100229	10528
100229	10529
100229	10534
100229	10535
100229	10532
100229	10533
100229	10538
100229	10539
100229	10536
100229	10537
100229	10542
100229	10543
100229	10540
100229	10541
100229	10547
100229	10546
100229	10545
100229	10544
100229	10551
100229	10550
100229	10549
100229	10548
100229	10555
100229	10554
100229	10553
100229	10552
100229	10559
100229	10558
100229	10557
100229	10556
100161	14930
100161	14931
100161	14928
100161	14929
100161	14934
100161	14935
100161	14932
100161	14933
100161	14938
100161	14939
100161	14936
100161	14937
100161	14942
100161	14943
100161	14940
100161	14941
100161	14915
100161	14914
100161	14913
100161	14912
100161	14919
100161	14918
100161	14917
100161	14916
100161	14923
100161	14922
100161	14921
100161	14920
100161	14927
100161	14926
100161	14925
100161	14924
100161	14960
100161	14961
100161	14962
100161	14963
100161	14964
100161	14945
100161	14944
100161	14947
100161	14946
100161	14949
100161	14948
100161	14951
100161	14950
100161	14953
100161	14952
100161	14955
100161	14954
100161	14957
100161	14956
100161	14959
100161	14958
100161	14870
100161	14871
100161	14868
100161	14869
100161	14866
100161	14867
100161	14864
100161	14865
100161	14878
100161	14879
100161	14876
100161	14877
100161	14874
100161	14875
100161	14872
100161	14873
100161	14855
100161	14854
100161	14853
100161	14852
100161	14851
100161	14850
100161	14849
100161	14848
100161	14863
100161	14862
100161	14861
100161	14860
100161	14859
100161	14858
100161	14857
100161	14856
100161	14900
100161	14901
100161	14902
100161	14903
100161	14896
100161	14897
100161	14898
100161	14899
100161	14908
100161	14909
100161	14910
100161	14911
100161	14904
100161	14905
100161	14906
100161	14907
100161	14885
100161	14884
100161	14887
100161	14886
100161	14881
100161	14880
100161	14883
100161	14882
100161	14893
100161	14892
100161	14895
100161	14894
100161	14889
100161	14888
100161	14891
100161	14890
100161	14830
100161	14831
100161	14828
100161	14829
100161	14826
100161	14827
100161	14824
100161	14825
100161	14822
100161	14823
100161	14820
100161	14821
100161	14818
100161	14819
100161	14847
100161	14846
100161	14845
100161	14844
100161	14843
100161	14842
100161	14841
100161	14840
100161	14839
100161	14838
100161	14837
100161	14836
100161	14835
100161	14834
100161	14833
100161	14832
100157	14998
100157	14997
100157	14996
100157	14995
100157	14994
100157	14993
100157	14992
100157	14990
100157	14991
100157	14988
100157	14989
100157	14986
100157	14987
100157	14984
100157	14985
100157	14982
100157	14983
100157	14980
100157	14981
100157	14978
100157	14979
100157	14976
100157	14977
100157	14965
100157	14966
100157	14967
100157	14968
100157	14969
100157	14970
100157	14971
100157	14972
100157	14973
100157	14974
100157	14975
100231	15067
100231	15066
100231	15065
100231	15064
100231	15071
100231	15070
100231	15069
100231	15068
100231	15059
100231	15058
100231	15057
100231	15056
100231	15063
100231	15062
100231	15061
100231	15060
100231	15050
100231	15051
100231	10028
100231	15048
100231	15049
100231	15054
100231	15055
100231	15052
100231	15053
100231	15042
100231	15043
100231	15040
100231	15041
100231	15046
100231	15047
100231	15044
100231	15045
100231	15097
100231	15096
100231	15099
100231	15098
100231	15101
100231	15100
100231	15103
100231	15102
100231	15089
100231	15088
100231	15091
100231	15090
100231	15093
100231	15092
100231	15095
100231	15094
100231	15080
100231	15081
100231	15082
100231	15083
100231	15084
100231	15085
100231	15086
100231	15087
100231	15072
100231	15073
100231	15074
100231	15075
100231	15076
100231	15077
100231	15078
100231	15079
100231	15007
100231	15006
100231	15005
100231	15004
100231	15003
100231	15002
100231	15001
100231	15000
100231	14999
100231	15037
100231	15036
100231	15039
100231	15038
100231	15033
100231	15032
100231	15035
100231	15034
100231	15029
100231	15028
100231	15031
100231	15030
100231	15025
100231	15024
100231	15027
100231	15026
100231	15020
100231	15021
100231	15022
100231	15023
100231	15016
100231	15017
100231	15018
100231	15019
100231	15012
100231	15013
100231	15014
100231	15015
100231	15008
100231	15009
100231	15010
100231	15011
100231	15169
100231	15168
100231	15171
100231	15170
100231	15173
100231	15172
100231	15175
100231	15174
100231	15109
100231	15108
100231	15111
100231	15110
100231	15105
100231	15104
100231	15107
100231	15106
100231	15117
100231	15116
100231	15119
100231	15118
100231	15113
100231	15112
100231	15115
100231	15114
100231	15124
100231	15125
100231	15126
100231	15127
100231	15120
100231	15121
100231	15122
100231	15123
100231	15132
100231	15133
100231	15134
100231	15135
100231	15128
100231	15129
100231	15130
100231	15131
100231	15143
100231	15142
100231	15141
100231	15140
100231	15139
100231	15138
100231	15137
100231	15136
100231	15151
100231	15150
100231	15149
100231	15148
100231	15147
100231	15146
100231	15145
100231	15144
100231	15158
100231	15159
100231	15156
100231	15157
100231	15154
100231	15155
100231	15152
100231	15153
100231	15166
100231	15167
100231	15164
100231	15165
100231	15162
100231	15163
100231	15160
100231	15161
100232	15304
100232	15305
100232	15306
100232	15307
100232	15308
100232	15309
100232	15310
100232	15311
100232	15296
100232	15297
100232	15298
100232	15299
100232	15300
100232	15301
100232	15302
100232	15303
100232	15321
100232	15320
100232	15323
100232	15322
100232	15325
100232	15324
100232	15327
100232	15326
100232	15313
100232	15312
100232	15315
100232	15314
100232	15317
100232	15316
100232	15319
100232	15318
100232	15330
100232	15328
100232	15329
100232	15244
100232	15245
100232	15246
100232	15247
100232	15240
100232	15241
100232	15242
100232	15243
100232	15236
100232	15237
100232	15238
100232	15239
100232	15232
100232	15233
100232	15234
100232	15235
100232	15261
100232	15260
100232	15263
100232	15262
100232	15257
100232	15256
100232	15259
100232	15258
100232	15253
100232	15252
100232	15255
100232	15254
100232	15249
100232	15248
100232	15251
100232	15250
100232	15278
100232	15279
100232	15276
100232	15277
100232	15274
100232	15275
100232	15272
100232	15273
100232	15270
100232	15271
100232	15268
100232	15269
100232	15266
100232	15267
100232	15264
100232	15265
100232	15295
100232	15294
100232	15293
100232	15292
100232	15291
100232	15290
100232	15289
100232	15288
100232	15287
100232	15286
100232	15285
100232	15284
100232	15283
100232	15282
100232	15281
100232	15280
100232	15177
100232	15176
100232	15179
100232	15178
100232	15181
100232	15180
100232	15183
100232	15182
100232	15184
100232	15185
100232	15186
100232	15187
100232	15188
100232	15189
100232	15190
100232	15191
100232	15192
100232	15193
100232	15194
100232	15195
100232	15196
100232	15197
100232	15198
100232	15199
100232	15203
100232	15202
100232	15201
100232	15200
100232	15207
100232	15206
100232	15205
100232	15204
100232	15211
100232	15210
100232	15209
100232	15208
100232	15215
100232	15214
100232	15213
100232	15212
100232	15218
100232	15219
100232	15216
100232	15217
100232	15222
100232	15223
100232	15220
100232	15221
100232	15226
100232	15227
100232	15224
100232	15225
100232	15230
100232	15231
100232	15228
100232	15229
100233	15338
100233	15339
100233	15336
100233	15337
100233	15342
100233	15343
100233	15340
100233	15341
100233	15331
100233	15334
100233	15335
100233	15332
100233	15333
100233	15355
100233	15354
100233	15353
100233	15352
100233	15359
100233	15358
100233	15357
100233	15356
100233	15363
100233	15347
100233	15362
100233	15346
100233	15361
100233	15345
100233	15360
100233	15344
100233	15367
100233	15351
100233	15366
100233	15350
100233	15365
100233	15349
100233	15364
100233	15348
100161	14817
100003	15303
100003	15333
100003	15210
100003	15131
100003	10036
100003	10028
100003	10027
100003	10025
100003	10013
100003	10014
100003	15102
100003	10560
100003	14942
100003	14940
100003	10581
100003	14971
100003	10120
100003	10510
100003	10525
100003	10524
100003	10527
100003	10526
100003	10528
100003	10529
100003	10543
100234	15490
100234	15491
100234	15488
100234	15489
100234	15494
100234	15495
100234	15492
100234	15493
100234	15416
100234	15417
100234	15418
100234	15419
100234	15420
100234	15421
100234	15422
100234	15423
100234	15408
100234	15409
100234	15410
100234	15411
100234	15412
100234	15413
100234	15414
100234	15415
100234	15401
100234	15400
100234	15403
100234	15402
100234	15405
100234	15404
100234	15407
100234	15406
100234	15393
100234	15392
100234	15395
100234	15394
100234	15397
100234	15396
100234	15399
100234	15398
100234	15386
100234	15387
100234	15384
100234	15385
100234	15390
100234	15391
100234	15388
100234	15389
100234	15378
100234	15379
100234	15376
100234	15377
100234	15382
100234	15383
100234	15380
100234	15381
100234	15371
100234	15370
100234	15369
100234	15368
100234	15375
100234	15374
100234	15373
100234	15372
100234	15484
100234	15485
100234	15486
100234	15487
100234	15480
100234	15481
100234	15482
100234	15483
100234	15476
100234	15477
100234	15478
100234	15479
100234	15472
100234	15473
100234	15474
100234	15475
100234	15469
100234	15468
100234	15471
100234	15470
100234	15465
100234	15464
100234	15467
100234	15466
100234	15461
100234	15460
100234	15463
100234	15462
100234	15457
100234	15456
100234	15459
100234	15458
100234	15454
100234	15455
100234	15452
100234	15453
100234	15450
100234	15451
100234	15448
100234	15449
100234	15446
100234	15447
100234	15444
100234	15445
100234	15442
100234	15443
100234	15440
100234	15441
100234	15439
100234	15438
100234	15437
100234	15436
100234	15435
100234	15434
100234	15433
100234	15432
100234	15431
100234	15430
100234	15429
100234	15428
100234	15427
100234	15426
100234	15425
100234	15424
100236	15537
100236	15536
100236	15539
100236	15538
100236	15541
100236	15540
100236	15543
100236	15542
100236	15545
100236	15544
100236	15547
100236	15546
100236	15548
100236	15522
100236	15523
100236	15524
100236	15525
100236	15526
100236	15527
100236	15528
100236	15529
100236	15530
100236	15531
100236	15532
100236	15533
100236	15534
100236	15535
100257	100238
100257	100239
100257	100237
100257	100256
100257	100255
100257	100254
100257	100253
100257	100252
100257	100251
100257	100250
100257	100249
100257	100248
100257	100247
100257	100246
100257	100245
100257	100244
100257	100243
100257	100242
100257	100241
100257	100240
100312	100268
100312	100269
100312	100270
100312	100271
100312	100285
100312	100284
100312	100287
100312	100286
100312	100281
100312	100280
100312	100283
100312	100282
100312	100277
100312	100276
100312	100279
100312	100278
100312	100273
100312	100272
100312	100275
100312	100274
100312	100296
100312	100297
100312	100290
100312	100291
100312	100288
100312	100289
100312	100294
100312	100295
100312	100292
100312	100293
100312	100307
100312	100306
100312	100305
100312	100311
100312	100310
100312	100309
100312	100308
100017	100414
100003	100414
100415	100328
100415	100361
100415	100360
100415	100329
100415	100330
100415	100363
100415	100331
100415	100362
100415	100332
100415	100365
100415	100333
100415	100364
100415	100367
100415	100334
100415	100366
100415	100335
100415	100320
100415	100353
100415	100321
100415	100352
100415	100322
100415	100355
100415	100354
100415	100323
100415	100357
100415	100324
100415	100356
100415	100325
100415	100326
100415	100359
100415	100358
100415	100327
100415	100376
100415	100345
100415	100377
100415	100344
100415	100378
100415	100347
100415	100379
100415	100346
100415	100380
100415	100349
100415	100381
100415	100348
100415	100382
100415	100351
100415	100383
100415	100350
100415	100368
100415	100337
100415	100336
100415	100369
100415	100370
100415	100339
100415	100371
100415	100338
100415	100372
100415	100341
100415	100373
100415	100340
100415	100374
100415	100343
100415	100375
100415	100342
100415	100315
100415	100314
100415	100319
100415	100318
100415	100317
100415	100316
100017	100416
100003	100416
100003	15180
100003	15209
100003	15119
100003	15051
100003	15007
100003	15004
100003	15001
100003	15000
100003	15012
100003	15009
100422	100420
100422	100417
100422	100419
100422	100418
100422	100429
100422	100428
100422	100431
100422	100430
100422	100425
100422	100424
100422	100423
100422	100436
100422	100433
100422	100434
100422	100435
100422	100440
100422	100438
100422	100439
100234	15601
100234	15600
100234	15603
100234	15602
100234	15598
100234	15599
100443	15549
100443	15551
100443	15550
100443	15588
100443	15589
100443	15590
100443	15591
100443	15584
100443	15585
100443	15586
100443	15587
100443	15596
100443	15597
100443	15592
100443	15593
100443	15594
100443	15595
100443	15575
100443	15574
100443	15573
100443	15572
100443	15571
100443	15570
100443	15569
100443	15568
100443	15583
100443	15582
100443	15581
100443	15580
100443	15579
100443	15578
100443	15577
100443	15576
100443	15558
100443	15559
100443	15556
100443	15557
100443	15554
100443	15555
100443	15552
100443	15553
100443	15566
100443	15567
100443	15564
100443	15565
100443	15562
100443	15563
100443	15560
100443	15561
100444	15659
100444	15658
100444	15657
100444	15656
100444	15663
100444	15662
100444	15661
100444	15660
100444	15651
100444	15650
100444	15649
100444	15648
100444	15655
100444	15654
100444	15653
100444	15652
100444	15674
100444	15675
100444	15672
100444	15673
100444	15678
100444	15679
100444	15676
100444	15677
100444	15666
100444	15667
100444	15664
100444	15665
100444	15670
100444	15671
100444	15668
100444	15669
100444	15625
100444	15624
100444	15627
100444	15626
100444	15629
100444	15628
100444	15631
100444	15630
100444	15617
100444	15616
100444	15619
100444	15618
100444	15621
100444	15620
100444	15623
100444	15622
100444	15640
100444	15641
100444	15642
100444	15643
100444	15644
100444	15645
100444	15646
100444	15647
100444	15632
100444	15633
100444	15634
100444	15635
100444	15636
100444	15637
100444	15638
100444	15639
100444	15605
100444	15604
100444	15607
100444	15606
100444	15613
100444	15612
100444	15615
100444	15614
100444	15609
100444	15608
100444	15611
100444	15610
100444	15680
100445	16930
100445	16931
100445	16928
100445	16929
100445	16934
100445	16935
100445	16932
100445	16933
100445	16938
100445	16939
100445	16936
100445	16937
100445	16942
100445	16943
100445	16940
100445	16941
100445	16947
100445	16946
100445	16945
100445	16944
100445	16951
100445	16950
100445	16949
100445	16948
100445	16955
100445	16954
100445	16953
100445	16952
100445	16959
100445	16958
100445	16957
100445	16956
100445	16896
100445	16897
100445	16898
100445	16899
100445	16900
100445	16901
100445	16902
100445	16903
100445	16904
100445	16905
100445	16906
100445	16907
100445	16908
100445	16909
100445	16910
100445	16911
100445	16913
100445	16912
100445	16915
100445	16914
100445	16917
100445	16916
100445	16919
100445	16918
100445	16921
100445	16920
100445	16923
100445	16922
100445	16925
100445	16924
100445	16927
100445	16926
100445	16964
100445	16965
100445	16966
100445	16967
100445	16960
100445	16961
100445	16962
100445	16963
100445	16972
100445	16973
100445	16974
100445	16975
100445	16968
100445	16969
100445	16970
100445	16971
100445	16980
100445	16977
100445	16976
100445	16979
100445	16978
100445	16798
100445	16799
100445	16796
100445	16797
100445	16794
100445	16795
100445	16792
100445	16793
100445	16790
100445	16791
100445	16788
100445	16789
100445	16786
100445	16787
100445	16784
100445	16785
100445	16783
100445	16782
100445	16781
100445	16780
100445	16779
100445	16778
100445	16777
100445	16776
100445	16775
100445	16774
100445	16773
100445	16772
100445	16771
100445	16770
100445	16769
100445	16768
100445	16828
100445	16829
100445	16830
100445	16831
100445	16824
100445	16825
100445	16826
100445	16827
100445	16820
100445	16821
100445	16822
100445	16823
100445	16816
100445	16817
100445	16818
100445	16819
100445	16813
100445	16812
100445	16815
100445	16814
100445	16809
100445	16808
100445	16811
100445	16810
100445	16805
100445	16804
100445	16807
100445	16806
100445	16801
100445	16800
100445	16803
100445	16802
100445	16858
100445	16859
100445	16856
100445	16857
100445	16862
100445	16863
100445	16860
100445	16861
100445	16850
100445	16851
100445	16848
100445	16849
100445	10629
100445	16854
100445	16855
100445	16852
100445	10630
100445	16853
100445	16843
100445	16842
100445	16841
100445	16840
100445	16847
100445	16846
100445	16845
100445	16844
100445	16835
100445	16834
100445	16833
100445	16832
100445	16839
100445	16838
100445	16837
100445	16836
100445	16888
100445	16889
100445	16890
100445	16891
100445	16892
100445	16893
100445	16894
100445	16895
100445	16880
100445	16881
100445	16882
100445	16883
100445	16884
100445	16885
100445	16886
100445	16887
100445	16873
100445	16872
100445	16875
100445	16874
100445	16877
100445	16876
100445	16879
100445	16878
100445	16865
100445	16864
100445	16867
100445	16866
100445	16869
100445	16868
100445	16871
100445	16870
100445	10586
100445	16723
100445	16722
100445	16721
100445	16720
100445	16727
100445	16726
100445	16725
100445	16724
100445	16731
100445	16730
100445	16729
100445	16728
100445	16735
100445	16734
100445	16733
100445	16732
100445	16718
100445	16719
100445	16753
100445	16752
100445	16755
100445	16754
100445	16757
100445	16756
100445	16759
100445	16758
100445	16761
100445	16760
100445	16763
100445	16762
100445	16765
100445	16764
100445	16767
100445	10540
100445	16766
100445	16736
100445	16737
100445	16738
100445	16739
100445	16740
100445	16741
100445	16742
100445	16743
100445	16744
100445	16745
100445	16746
100445	16747
100445	16748
100445	16749
100445	16750
100445	16751
100446	16998
100446	16999
100446	16996
100446	16997
100446	16994
100446	16995
100446	16992
100446	16993
100446	17006
100446	17007
100446	17004
100446	17005
100446	17002
100446	17003
100446	17000
100446	17001
100446	17015
100446	17014
100446	17013
100446	17012
100446	17011
100446	17010
100446	17009
100446	17008
100446	17021
100446	17020
100446	17019
100446	17018
100446	17017
100446	17016
100446	16981
100446	16983
100446	16982
100446	16989
100446	16988
100446	16991
100446	16990
100446	16985
100446	16984
100446	16987
100446	16986
100447	4534
100447	17082
100447	17083
100447	17080
100447	17081
100447	17086
100447	17087
100447	17084
100447	17085
100447	17075
100447	17078
100447	17079
100447	17076
100447	17077
100447	17135
100447	17134
100447	17133
100447	17132
100447	17131
100447	17130
100447	17129
100447	17128
100447	17127
100447	17126
100447	17125
100447	17124
100447	17123
100447	17122
100447	17121
100447	17120
100447	17101
100447	17100
100447	17103
100447	17102
100447	17097
100447	17096
100447	17099
100447	17098
100447	17093
100447	17092
100447	17095
100447	17094
100447	17089
100447	17088
100447	17091
100447	17090
100447	17116
100447	17117
100447	17118
100447	17119
100447	17112
100447	17113
100447	17114
100447	17115
100447	17108
100447	17109
100447	17110
100447	17111
100447	17104
100447	17105
100447	17106
100447	17107
100448	18453
100448	18452
100448	18455
100448	18454
100448	18449
100448	18448
100448	18451
100448	18450
100448	18461
100448	18460
100448	18463
100448	18462
100448	18457
100448	18456
100448	18459
100448	18458
100448	18436
100448	18437
100448	18438
100448	18439
100448	18432
100448	18433
100448	18434
100448	18435
100448	18444
100448	18174
100448	18445
100448	18175
100448	18446
100448	18172
100448	18447
100448	18173
100448	18440
100448	18170
100448	18441
100448	18171
100448	18442
100448	18168
100448	18443
100448	18169
100448	18487
100448	18486
100448	18485
100448	18484
100448	18483
100448	18482
100448	18481
100448	18480
100448	18495
100448	18494
100448	18493
100448	18492
100448	18491
100448	18490
100448	18489
100448	18488
100448	18470
100448	18471
100448	18468
100448	18469
100448	18466
100448	18467
100448	18464
100448	18465
100448	18478
100448	18479
100448	18476
100448	18477
100448	18474
100448	18475
100448	18472
100448	18473
100448	18496
100448	18497
100448	18498
100448	18499
100448	18500
100448	18501
100448	18502
100448	18503
100448	18504
100448	18505
100448	18506
100448	18507
100448	18420
100448	18421
100448	18422
100448	18423
100448	18416
100448	18417
100448	18418
100448	18419
100448	18428
100448	18429
100448	18430
100448	18431
100448	18424
100448	18425
100448	18426
100448	18427
100448	18405
100448	18404
100448	18407
100448	18406
100448	18401
100448	18400
100448	18403
100448	18402
100448	18413
100448	18412
100448	18415
100448	18414
100448	18409
100448	18408
100448	18411
100448	18410
100448	18390
100448	18391
100448	18388
100448	18389
100448	18386
100448	18387
100448	18384
100448	18385
100448	18398
100448	18399
100448	18396
100448	18397
100448	18394
100448	18395
100448	18392
100448	18393
100448	18375
100448	18374
100448	18373
100448	18372
100448	18371
100448	18370
100448	18369
100448	18368
100448	18383
100448	18382
100448	18381
100448	18380
100448	18379
100448	18378
100448	18377
100448	18376
100448	18352
100448	18353
100448	18354
100448	18355
100448	18356
100448	18357
100448	18358
100448	18359
100448	18360
100448	18361
100448	18362
100448	18363
100448	18364
100448	18365
100448	18366
100448	18367
100448	18337
100448	18336
100448	18339
100448	18338
100448	18341
100448	18340
100448	18343
100448	18342
100448	18345
100448	18344
100448	18347
100448	18346
100448	18349
100448	18348
100448	18351
100448	18350
100448	18322
100448	18323
100448	18320
100448	18321
100448	18326
100448	18327
100448	18324
100448	18325
100448	18330
100448	18331
100448	18328
100448	18329
100448	18334
100448	18335
100448	18332
100448	18333
100448	18307
100448	18306
100448	18305
100448	18304
100448	18311
100448	18310
100448	18309
100448	18308
100448	18315
100448	18314
100448	18313
100448	18312
100448	18319
100448	18318
100448	18317
100448	18316
100448	18301
100448	18300
100448	18303
100448	18302
100448	18297
100448	18296
100448	18299
100448	18298
100448	18293
100448	18292
100448	18295
100448	18294
100448	18289
100448	18288
100448	18291
100448	18290
100448	18284
100448	18285
100448	18286
100448	18287
100448	18280
100448	18281
100448	18282
100448	18283
100448	18276
100448	18277
100448	18278
100448	18279
100448	18272
100448	18273
100448	18274
100448	18275
100448	18271
100448	18270
100448	18269
100448	18268
100448	18267
100448	18266
100448	18265
100448	18264
100448	18263
100448	18262
100448	18261
100448	18260
100448	18259
100448	18258
100448	18257
100448	18256
100448	18254
100448	18255
100448	18252
100448	18253
100448	18250
100448	18251
100448	18248
100448	18249
100448	18246
100448	18247
100448	18244
100448	18245
100448	18242
100448	18243
100448	18240
100448	18241
100448	18233
100448	18232
100448	18235
100448	18234
100448	18237
100448	18236
100448	18239
100448	18238
100448	18225
100448	18224
100448	18227
100448	18226
100448	18229
100448	18228
100448	18231
100448	18230
100448	18216
100448	18217
100448	18218
100448	18219
100448	18220
100448	18221
100448	18222
100448	18223
100448	18208
100448	18209
100448	18210
100448	18211
100448	18212
100448	18213
100448	18214
100448	18215
100448	18203
100448	18202
100448	18201
100448	18200
100448	18207
100448	18206
100448	18205
100448	18204
100448	18195
100448	18194
100448	18193
100448	18192
100448	18199
100448	18198
100448	18197
100448	18196
100448	18186
100448	18187
100448	18184
100448	18185
100448	18190
100448	18191
100448	18188
100448	18189
100448	18178
100448	18179
100448	18176
100448	18177
100448	18182
100448	18183
100448	18180
100448	18181
100449	18576
100449	18577
100449	18578
100449	18573
100449	18572
100449	18575
100449	18574
100449	18569
100449	18568
100449	18571
100449	18570
100449	18565
100449	18564
100449	18567
100449	18566
100449	18561
100449	18560
100449	18563
100449	18562
100449	18513
100449	18512
100449	18515
100449	18514
100449	18517
100449	18516
100449	18519
100449	18518
100449	18521
100449	18520
100449	18523
100449	18522
100449	18525
100449	18524
100449	18527
100449	18526
100449	18508
100449	18509
100449	18510
100449	18511
100449	18547
100449	18546
100449	18545
100449	18544
100449	18551
100449	18550
100449	18549
100449	18548
100449	18555
100449	18554
100449	18553
100449	18552
100449	18559
100449	18558
100449	18557
100449	18556
100449	18530
100449	18531
100449	18528
100449	18529
100449	18534
100449	18535
100449	18532
100449	18533
100449	18538
100449	18539
100449	18536
100449	18537
100449	18542
100449	18543
100449	18540
100449	18541
100450	18588
100450	18589
100450	18590
100450	18591
100450	18584
100450	18585
100450	18586
100450	18587
100450	18580
100450	18581
100450	18582
100450	18583
100450	18622
100450	18623
100450	18620
100450	18621
100450	18618
100450	18619
100450	18616
100450	18617
100450	18614
100450	18615
100450	18612
100450	18613
100450	18610
100450	18611
100450	18608
100450	18609
100450	18607
100450	18606
100450	18605
100450	18604
100450	18603
100450	18602
100450	18601
100450	18600
100450	18599
100450	18598
100450	18597
100450	18596
100450	18595
100450	18594
100450	18593
100450	18592
100450	18648
100450	18649
100450	18650
100450	18651
100450	18652
100450	18653
100450	18654
100450	18655
100450	18640
100450	18641
100450	18642
100450	18643
100450	18644
100450	18645
100450	18646
100450	18647
100450	18633
100450	18632
100450	18635
100450	18634
100450	18637
100450	18636
100450	18639
100450	18638
100450	18625
100450	18624
100450	18627
100450	18626
100450	18629
100450	18628
100450	18631
100450	18630
100450	18667
100450	18666
100450	18665
100450	18664
100450	18669
100450	18668
100450	18659
100450	18658
100450	18657
100450	18656
100450	18663
100450	18662
100450	18661
100450	18660
100451	18779
100451	18778
100451	18777
100451	18783
100451	18782
100451	18781
100451	18780
100451	18784
100451	18785
100451	18786
100451	18787
100451	18788
100451	18789
100451	18790
100451	18791
100451	18792
100451	18793
100451	18794
100451	18795
100451	18796
100451	18797
100451	18798
100451	18799
100451	18801
100451	18800
100451	18803
100451	18802
100451	18805
100451	18804
100451	18807
100451	18806
100451	18809
100451	18808
100451	18811
100451	18810
100451	18813
100451	18812
100451	18815
100451	18814
100451	18831
100451	18830
100451	18829
100451	18828
100451	18827
100451	18826
100451	18825
100451	18824
100451	18823
100451	18822
100451	18821
100451	18820
100451	18819
100451	15655
100451	18818
100451	18817
100451	18816
100451	18846
100451	18847
100451	18844
100451	18845
100451	18842
100451	18843
100451	18840
100451	18841
100451	18838
100451	18839
100451	18836
100451	18837
100451	18834
100451	18835
100451	18832
100451	18833
100451	18861
100451	18860
100451	18863
100451	18862
100451	18857
100451	18856
100451	18859
100451	18858
100451	18853
100451	18852
100451	18855
100451	18854
100451	18849
100451	18848
100451	18851
100451	18850
100451	18876
100451	18877
100451	18878
100451	18879
100451	18872
100451	18873
100451	18874
100451	18875
100451	18868
100451	18869
100451	18870
100451	18871
100451	18864
100451	18865
100451	18866
100451	18867
100451	18891
100451	18890
100451	18889
100451	18888
100451	18895
100451	18894
100451	18893
100451	18892
100451	18883
100451	18882
100451	18881
100451	18880
100451	18887
100451	18886
100451	18885
100451	18884
100451	18906
100451	18907
100451	18904
100451	18905
100451	18910
100451	18911
100451	18908
100451	18909
100451	18898
100451	18899
100451	18896
100451	18897
100451	18902
100451	18903
100451	18900
100451	18901
100451	18921
100451	18920
100451	18923
100451	18922
100451	18925
100451	18924
100451	18927
100451	18926
100451	18913
100451	18912
100451	18915
100451	18914
100451	18917
100451	18916
100451	18919
100451	18918
100451	18936
100451	18937
100451	18938
100451	18928
100451	18929
100451	18930
100451	18931
100451	18932
100451	18933
100451	18934
100451	18935
100452	18944
100452	18945
100452	18946
100452	18939
100452	18947
100452	18940
100452	18948
100452	18941
100452	18949
100452	18942
100452	18950
100452	18943
100452	18951
100452	18952
100452	18953
100452	18954
100452	18955
100452	18956
100452	18957
100452	18958
100453	22001
100453	22000
100453	22003
100453	22002
100453	22005
100453	22004
100453	22007
100453	22006
100453	22009
100453	22008
100453	22011
100453	22010
100453	22013
100453	22012
100453	22015
100453	22014
100453	21984
100453	21985
100453	21986
100453	21987
100453	21988
100453	21989
100453	21990
100453	21991
100453	21992
100453	21993
100453	21994
100453	21995
100453	21996
100453	21997
100453	21998
100453	21999
100453	21971
100453	21970
100453	21969
100453	21968
100453	21975
100453	21974
100453	21973
100453	21972
100453	21979
100453	21978
100453	21977
100453	21976
100453	21983
100453	21982
100453	21981
100453	21980
100453	21954
100453	21955
100453	21952
100453	21953
100453	21958
100453	21959
100453	21956
100453	21957
100453	59
100453	21962
100453	21963
100453	21960
100453	21961
100453	21966
100453	21967
100453	21964
100453	21965
100453	21941
100453	21940
100453	21943
100453	21942
100453	21937
100453	21936
100453	21939
100453	21938
100453	21949
100453	21948
100453	21951
100453	21950
100453	21945
100453	21944
100453	21947
100453	21946
100453	21924
100453	21925
100453	21926
100453	21927
100453	21920
100453	21921
100453	21922
100453	21923
100453	21932
100453	21933
100453	21934
100453	21935
100453	21928
100453	21929
100453	21930
100453	21931
100453	21911
100453	21910
100453	21909
100453	21908
100453	21907
100453	21906
100453	21905
100453	21904
100453	21919
100453	21918
100453	21917
100453	21916
100453	21915
100453	21914
100453	21913
100453	21912
100453	105
100453	21894
100453	21895
100453	21892
100453	21893
100453	21890
100453	21891
100453	21888
100453	21889
100453	21902
100453	21903
100453	21900
100453	21901
100453	21898
100453	21899
100453	21896
100453	21897
100453	21880
100453	21881
100453	21882
100453	21883
100453	21884
100453	21885
100453	21886
100453	21887
100453	21872
100453	21873
100453	21874
100453	21875
100453	21876
100453	21877
100453	21878
100453	21879
100453	152
100453	21865
100453	21864
100453	21867
100453	21866
100453	155
100453	21869
100453	21868
100453	157
100453	21871
100453	21870
100453	21857
100453	21856
100453	21859
100453	21858
100453	21861
100453	21860
100453	21863
100453	21862
100453	21850
100453	21851
100453	21848
100453	21849
100453	21854
100453	21855
100453	21852
100453	21853
100453	21842
100453	21843
100453	21840
100453	21841
100453	21846
100453	21847
100453	21844
100453	21845
100453	21835
100453	21834
100453	21833
100453	21832
100453	21839
100453	21838
100453	21837
100453	21836
100453	21827
100453	21826
100453	21825
100453	21824
100453	21831
100453	21830
100453	21829
100453	21828
100453	21820
100453	21821
100453	21822
100453	21823
100453	21816
100453	21817
100453	21818
100453	21819
100453	21812
100453	21813
100453	21814
100453	21815
100453	21808
100453	21809
100453	21810
100453	21811
100453	21805
100453	21804
100453	21807
100453	21806
100453	21801
100453	21800
100453	21803
100453	21802
100453	21797
100453	21796
100453	21799
100453	21798
100453	21793
100453	21792
100453	21795
100453	21794
100453	21790
100453	21791
100453	21788
100453	21789
100453	21786
100453	21787
100453	21784
100453	232
100453	21785
100453	21782
100453	21783
100453	21780
100453	21781
100453	336
100453	321
100453	359
100453	462
100453	493
100453	22144
100453	22145
100453	22146
100453	22147
100453	22148
100453	22149
100453	22150
100453	22151
100453	22152
100453	22153
100453	22154
100453	22155
100453	22156
100453	22157
100453	22158
100453	22159
100453	22161
100453	22160
100453	22163
100453	22162
100453	22093
100453	22092
100453	22095
100453	22094
100453	22089
100453	22088
100453	22091
100453	22090
100453	22085
100453	22084
100453	22087
100453	22086
100453	22081
100453	22080
100453	22083
100453	22082
100453	22108
100453	22109
100453	22110
100453	22111
100453	22104
100453	22105
100453	22106
100453	22107
100453	22100
100453	22101
100453	22102
100453	22103
100453	22096
100453	22097
100453	22098
100453	22099
100453	22127
100453	22126
100453	22125
100453	22124
100453	22123
100453	22122
100453	22121
100453	22120
100453	22119
100453	22118
100453	22117
100453	22116
100453	22115
100453	22114
100453	22113
100453	22112
100453	22142
100453	22143
100453	22140
100453	22141
100453	22138
100453	22139
100453	22136
100453	22137
100453	22134
100453	22135
100453	22132
100453	22133
100453	22130
100453	22131
100453	22128
100453	22129
100453	22025
100453	22024
100453	22027
100453	22026
100453	22029
100453	22028
100453	22031
100453	22030
100453	22017
100453	22016
100453	22019
100453	22018
100453	22021
100453	22020
100453	22023
100453	22022
100453	22040
100453	22041
100453	22042
100453	22043
100453	22044
100453	22045
100453	22046
100453	22047
100453	22032
100453	22033
100453	22034
100453	22035
100453	22036
100453	22037
100453	22038
100453	22039
100453	22059
100453	22058
100453	22057
100453	22056
100453	22063
100453	22062
100453	22061
100453	22060
100453	22051
100453	22050
100453	22049
100453	22048
100453	22055
100453	22054
100453	22053
100453	22052
100453	22074
100453	22075
100453	22072
100453	22073
100453	22078
100453	22079
100453	22076
100453	22077
100453	22066
100453	22067
100453	22064
100453	22065
100453	22070
100453	22071
100453	22068
100453	22069
100017	100454
100422	100457
100422	100456
100422	100455
100257	100057
100485	100463
100485	100462
100485	100461
100485	100460
100485	100474
100485	100475
100485	100472
100485	100473
100485	100470
100485	100471
100485	100468
100485	100469
100485	100466
100485	100467
100485	100464
100485	100465
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: cah
--

SELECT pg_catalog.setval('hibernate_sequence', 100485, true);


--
-- Data for Name: white_cards; Type: TABLE DATA; Schema: public; Owner: cah
--

COPY white_cards (id, text, watermark) FROM stdin;
282	Michelle Obama's arms.	\N
124	White people.	\N
393	An erection that lasts longer than four hours.	\N
141	Panda sex.	\N
121	Stifling a giggle at the mention of Hutus and Tutsis.	\N
269	A middle-aged man on roller skates.	\N
1	Coat hanger abortions.	\N
138	Scrubbing under the folds.	\N
275	Wearing underwear inside-out to avoid doing laundry.	\N
3662	Canadian Kindness.	RS
1146	end First Expansion	\N
3663	The world's tallest midget.	RS
462	MechaHitler.	1.2
463	Getting naked and watching Nickelodeon.	1.2
464	Charisma.	1.2
465	Morgan Freeman's voice.	1.2
466	Breaking out into song and dance.	1.2
467	Soup that is too hot.	1.2
468	Chutzpah.	1.2
469	Unfathomable stupidity.	1.2
470	Horrifying laser hair removal accidents.	1.2
471	Boogers.	1.2
473	Expecting a burp and vomiting on the floor.	1.2
474	A defective condom.	1.2
475	Teenage pregnancy.	1.2
476	Hot cheese.	1.2
477	A mopey zoo lion.	1.2
478	Shapeshifters.	1.2
479	The Care Bear Stare.	1.2
480	Erectile dysfunction.	1.2
481	The chronic.	1.2
483	"Tweeting."	1.2
484	Firing a rifle into the air while balls deep in a squealing hog.	1.2
485	Nicolas Cage.	1.2
3665	Master Chief.	RS
1110	Leveling up.	X1
1111	Literally eating shit.	X1
1112	Making the penises kiss.	X1
1113	Media coverage.	X1
3666	Four Loko.	RS
1115	Moral ambiguity.	X1
1116	My machete.	X1
1117	One thousand Slim Jims.	X1
1118	Ominous background music.	X1
1119	Overpowering your father.	X1
1120	Pistol-whipping a hostage.	X1
1121	Quiche.	X1
1122	Quivering jowls.	X1
1123	Revenge fucking.	X1
1124	Ripping into a man's chest and pulling out his still-beating heart.	X1
1125	Ryan Gosling riding in on a white horse.	X1
1126	Santa Claus.	X1
1127	Scrotum tickling.	X1
1128	Sexual humiliation.	X1
1129	Sexy Siamese twins.	X1
1130	Slow motion.	X1
1131	Space muffins.	X1
1132	Statistically validated stereotypes.	X1
1133	Sudden Poop Explosion Disease.	X1
1134	The boners of the elderly.	X1
1135	The economy.	X1
225	Dropping a chandelier on your enemies and riding the rope up.	\N
297	Public ridicule.	\N
265	A snapping turtle biting the tip of your penis.	\N
218	Vehicular manslaughter.	\N
3667	Xyzzy playing around with gender roles.	RS
160	The token minority.	\N
3668	Walt Disney's frozen head.	RS
3669	Sponge baths.	RS
488	A gentle caress of the inner thigh.	1.2
489	Poor life choices.	1.2
490	Embryonic stem cells.	1.2
491	Customer service representatives.	1.2
492	The Little Engine That Could.	1.2
493	Lady Gaga.	1.2
494	A death ray.	1.2
495	Vigilante justice.	1.2
496	Exactly what you'd expect.	1.2
497	Natural male enhancement.	1.2
498	Passive-aggressive Post-it notes.	1.2
499	Inappropriate yodeling.	1.2
500	A homoerotic volleyball montage.	1.2
501	Actually taking candy from a baby.	1.2
502	Jibber-jabber.	1.2
503	Crystal meth.	1.2
504	My inner demons.	1.2
505	Pac-Man uncontrollably guzzling cum.	1.2
506	My vagina.	1.2
3670	Sonic brutally murdering Mario.	RS
508	The true meaning of Christmas.	1.2
3671	Mario brutally murdering Sonic.	RS
1137	The Gulags.	X1
1138	The harsh light of day.	X1
1139	The hiccups.	X1
1140	The shambling corpse of Larry King.	X1
1141	The four arms of Vishnu.	X1
1142	Being a busy adult with many important things to do.	X1
1143	Tripping balls.	X1
1144	Words, words, words.	X1
1145	Zeus's sexual appetites.	X1
1066	A big black dick.	X1
1067	A beached whale.	X1
1068	A bloody pacifier.	X1
1069	A crappy little hand.	X1
1070	A low standard of living.	X1
1071	A nuanced critique.	X1
1072	Panty raids.	X1
1073	A passionate Latino lover.	X1
1074	A rival dojo.	X1
1075	A web of lies.	X1
1076	A woman scorned.	X1
1078	Apologizing.	X1
1079	Appreciative snapping.	X1
1080	Neil Patrick Harris.	X1
1081	Beating your wives.	X1
1082	Being a dinosaur.	X1
1083	Shaft.	X1
1217	A soulful rendition of "Ol' Man River."	X2
1218	Intimacy problems.	X2
1219	A sweaty, panting leather daddy.	X2
1220	Spring break!	X2
1221	Being awesome at sex.	X2
1222	Dining with cardboard cutouts of the cast of "Friends."	X2
461	Flying sex snakes.	1.2
1077	Clams.	X1
1223	Another shot of morphine.	X2
1226	Bullshit.	X2
1227	The Google.	X2
3672	Getting high on bath salts.	RS
1229	The new Radiohead album.	X2
1230	An army of skeletons.	X2
1231	A man in yoga pants with a ponytail and feather earrings.	X2
1232	Mild autism.	X2
1233	Nunchuck moves.	X2
1234	Whipping a disobedient slave.	X2
1235	An ether-soaked rag.	X2
1236	A sweet spaceship.	X2
1237	A 55-gallon drum of lube.	X2
1238	Special musical guest, Cher.	X2
1239	The human body.	X2
1240	Boris the Soviet Love Hammer.	X2
1241	The grey nutrient broth that sustains Mitt Romney.	X2
1242	Tiny nipples.	X2
1243	Power.	X2
1244	Oncoming traffic.	X2
1245	A dollop of sour cream.	X2
1246	A slightly shittier parallel universe.	X2
1247	My first kill.	X2
1248	Graphic violence, adult language, and some sexual content.	X2
1249	Fetal alcohol syndrome.	X2
1250	The day the birds attacked.	X2
1251	One Ring to rule them all.	X2
1252	Grandpa's ashes.	X2
1253	Basic human decency.	X2
1254	A Burmese tiger pit.	X2
1255	Death by Steven Seagal.	X2
1002	testtest	\N
1031	End Canadian White Cards	\N
1010	Mr. Dressup.	CAN
1011	Being Canadian.	CAN
1012	The Famous Five.	CAN
1013	Stephen Harper.	CAN
1014	The Royal Canadian Mounted Police.	CAN
1015	An icy handjob from an Edmonton hooker.	CAN
1016	Poutine.	CAN
1017	Newfies.	CAN
1018	The Official Languages Act. La Loi sur les langues officielles.	CAN
1019	Terry Fox's prosthetic leg.	CAN
1020	The FLQ.	CAN
1021	Canada: America's Hat.	CAN
1022	Don Cherry's wardrobe.	CAN
1023	Burning down the White House.	CAN
1024	Heritage minutes.	CAN
1025	Homo milk.	CAN
1026	Naked News.	CAN
1027	Syrupy sex with a maple tree.	CAN
1028	Snotsicles.	CAN
1029	Schmirler the Curler.	CAN
1030	A Molson muscle.	CAN
1181	A bigger, blacker dick.	X2
3673	Snorting Pixie Stix.	RS
1183	A sad fat dragon with no friends.	X2
1184	Catastrophic urethral trauma.	X2
1185	Hillary Clinton's death stare.	X2
1186	Existing.	X2
1188	Mooing.	X2
1189	Swiftly achieving orgasm.	X2
1190	Daddy's belt.	X2
1191	Double penetration.	X2
1192	Weapons-grade plutonium.	X2
1193	Some really fucked-up shit.	X2
1194	Subduing a grizzly bear and making her your wife.	X2
1195	Rising from the grave.	X2
1196	The mixing of the races.	X2
1197	Taking a man's eyes and balls out and putting his eyes where his balls go and then his balls in the eye holes.	X2
1198	Scrotal frostbite.	X2
1199	All of this blood.	X2
1200	Loki, the trickster god.	X2
1201	Whining like a little bitch.	X2
1202	Pumping out a baby every nine months.	X2
1203	Tongue.	X2
1204	Finding Waldo.	X2
1205	Upgrading homeless people to mobile hotspots.	X2
1206	Wearing an octopus for a hat.	X2
1207	An unhinged ferris wheel rolling toward the sea.	X2
1208	Living in a trashcan.	X2
1209	The corporations.	X2
1210	A magic hippie love cloud.	X2
1211	Fuck Mountain.	X2
1212	Survivor's guilt.	X2
1213	Me.	X2
1214	Getting hilariously gang-banged by the Blue Man Group.	X2
1215	Jeff Goldblum.	X2
1216	Making a friend.	X2
44	German dungeon porn.	\N
40	Praying the gay away.	\N
63	Dying.	\N
41	Same-sex ice dancing.	\N
70	Dying of dysentery.	\N
19	Roofies.	\N
22	The Big Bang.	\N
23	Amputees.	\N
74	Men.	\N
18	Concealing a boner.	\N
87	Agriculture.	\N
51	Making a pouty face.	\N
98	YOU MUST CONSTRUCT ADDITIONAL PYLONS.	\N
60	Hormone injections.	\N
55	Tom Cruise.	\N
56	Object permanence.	\N
92	Consultants.	\N
26	Being marginalized.	\N
54	The profoundly handicapped.	\N
96	Party poopers.	\N
48	Nickelback.	\N
7	Doing the right thing.	\N
65	The invisible hand.	\N
49	Heteronormativity.	\N
29	Cuddling.	\N
84	Raptor attacks.	\N
38	Fear itself.	\N
91	Sniffing glue.	\N
58	An icepick lobotomy.	\N
109	Being rich.	\N
79	The clitoris.	\N
71	Sexy pillow fights.	\N
105	Michael Jackson.	\N
101	Sexting.	\N
33	Horse meat.	\N
8	Hunting accidents.	\N
9	A cartoon camel enjoying the smooth, refreshing taste of a cigarette.	\N
15	Abstinence.	\N
17	Mountain Dew Code Red.	\N
21	Tweeting.	\N
43	Making sex at her.	\N
64	Stunt doubles.	\N
69	Flavored condoms.	\N
100	Heath Ledger.	\N
110	Muzzy.	\N
97	Sunshine and rainbows.	\N
68	Flash flooding.	\N
57	Goblins.	\N
13	Spectacular abs.	\N
72	The Three-Fifths compromise.	\N
4	Vigorous jazz hands.	\N
106	Skeletor.	\N
80	Vikings.	\N
34	Genital piercings.	\N
3675	The final circle of Hell.	RS
67	A really cool hat.	\N
102	An Oedipus complex.	\N
82	The Underground Railroad.	\N
77	Heartwarming orphans.	\N
47	Cheating in the Special Olympics.	\N
108	Sharing needles.	\N
46	Ethnic cleansing.	\N
103	Eating all of the cookies before the AIDS bake-sale.	\N
93	My humps.	\N
10	The violation of our most basic human rights.	\N
35	Fingering.	\N
53	The placenta.	\N
5	Flightless birds.	\N
37	Stranger danger.	\N
107	Chivalry.	\N
76	Sean Penn.	\N
73	A sad handjob.	\N
66	Jew-fros.	\N
12	Self-loathing.	\N
61	A falcon with a cap on its head.	\N
75	Historically black colleges.	\N
30	Aaron Burr.	\N
25	Former President George W. Bush.	\N
94	Geese.	\N
99	Mutually-assured destruction.	\N
88	Bling.	\N
27	Smegma.	\N
90	The South.	\N
83	Pretending to care.	\N
59	Arnold Schwarzenegger.	\N
20	Glenn Beck convulsively vomiting as a brood of crab spiders hatches in his brain and erupts from his tear ducts.	\N
104	A sausage festival.	\N
62	Foreskin.	\N
95	Being a dick to children.	\N
52	Chainsaws for hands.	\N
86	A Gypsy curse.	\N
31	The Pope.	\N
16	A balanced breakfast.	\N
36	Elderly Japanese men.	\N
6	Pictures of boobs.	\N
39	Science.	\N
32	A bleached asshole.	\N
3	Autocannibalism.	\N
50	William Shatner.	\N
85	A micropenis.	\N
78	Waterboarding.	\N
45	Bingeing and purging.	\N
89	A clandestine butt scratch.	\N
2	Man meat.	\N
28	Laying an egg.	\N
14	An honest cop with nothing left to lose.	\N
42	The terrorists.	\N
81	Friends who eat all the snacks.	\N
1043	end misprint bonus card	\N
1034	A bitch slap.	B
1035	One trillion dollars.	B
1036	Chunks of dead prostitute.	B
1037	The entire Mormon Tabernacle Choir.	B
1038	The female orgasm.	B
1039	Extremely tight pants.	B
1040	Stormtroopers.	B
1041	The Boy Scouts of America.	B
1042	Throwing a virgin into a volcano.	B
120	Cookie Monster devouring the Eucharist wafers.	\N
123	Letting yourself go.	\N
3676	The Bible.	RS
131	A LAN party.	\N
133	A grande sugar-free iced soy caramel macchiato.	\N
143	Will Smith.	\N
156	Marky Mark and the Funky Bunch.	\N
158	Dave Matthews Band.	\N
164	Substitute teachers.	\N
177	Garth Brooks.	\N
188	Keeping Christ in Christmas.	\N
190	That one gay Teletubby.	\N
216	Passive-agression.	\N
3677	Borat's one piece.	RS
248	The People's Elbow.	\N
230	Guys who don't call.	\N
152	AIDS.	\N
187	The Rapture.	\N
244	Eugenics.	\N
181	Taking off your shirt.	\N
139	A drive-by shooting.	\N
217	Ronald Reagan.	\N
195	Jewish fraternities.	\N
198	All-you-can-eat shrimp for $4.99.	\N
233	Scalping.	\N
196	Edible underpants.	\N
154	Figgy pudding.	\N
240	Intelligent design.	\N
207	Nocturnal emissions.	\N
119	Uppercuts.	\N
180	The American Dream.	\N
226	Testicular torsion.	\N
201	The folly of man.	\N
153	The KKK.	\N
241	The taint; the grundle; the fleshy fun-bridge.	\N
237	Saxophone solos.	\N
200	That thing that electrocutes your abs.	\N
176	Oversized lollipops.	\N
161	Friends with benefits.	\N
137	Teaching a robot to love.	\N
205	Me time.	\N
250	The heart of a child.	\N
252	Smallpox blankets.	\N
127	Yeast.	\N
214	Full frontal nudity.	\N
175	Authentic Mexican cuisine.	\N
253	Licking things to claim them as your own.	\N
174	Genghis Khan.	\N
209	The hardworking Mexican.	\N
189	RoboCop.	\N
112	Spontaneous human combustion.	\N
128	Natural selection.	\N
245	A good sniff.	\N
212	Nipple blades.	\N
126	Leaving an awkward voicemail.	\N
213	Assless chaps.	\N
191	Sweet, sweet vengeance.	\N
243	Keg stands.	\N
232	Darth Vader.	\N
114	Necrophilia.	\N
144	Toni Morrison's vagina.	\N
159	Preteens.	\N
185	A cooler full of organs.	\N
178	Keanu Reeves.	\N
166	A thermonuclear detonation.	\N
186	A moment of silence.	\N
142	Catapults.	\N
118	Emotions.	\N
151	Balls.	\N
234	Homeless people.	\N
173	Old-people smell.	\N
117	Farting and walking away.	\N
206	The inevitable heat death of the universe.	\N
24	The Rev. Dr. Martin Luther King, Jr.	\N
136	Sperm whales.	\N
204	A murder most foul.	\N
208	Daddy issues.	\N
199	Britney Spears at 55.	\N
210	Natalie Portman.	\N
223	The Holy Bible.	\N
3678	LOOK AT THIS PHOTOGRAPH!	RS
220	Pulling out.	\N
163	Pixelated bukkake.	\N
168	Waiting 'til marriage.	\N
235	The World of Warcraft.	\N
116	Global warming.	\N
224	World peace.	\N
170	A can of whoop-ass.	\N
148	A zesty breakfast burrito.	\N
221	Picking up girls at the abortion clinic.	\N
146	Land mines.	\N
113	College.	\N
228	A time travel paradox.	\N
155	Seppuku.	\N
211	Waking up half-naked in a Denny's parking lot.	\N
149	Christopher Walken.	\N
236	Gloryholes.	\N
169	A tiny horse.	\N
184	Child abuse.	\N
219	Menstruation.	\N
135	A sassy black woman.	\N
162	Re-gifting.	\N
122	Penis envy.	\N
179	Drinking alone.	\N
215	Hulk Hogan.	\N
3679	A 1971 Ford Pinto.	RS
140	Whipping it out.	\N
171	Dental dams.	\N
157	Gandhi.	\N
239	God.	\N
150	Friction.	\N
147	A sea of troubles.	\N
197	Poor people.	\N
183	Flesh-eating bacteria.	\N
125	Dick Cheney.	\N
246	Lockjaw.	\N
165	Take-backsies.	\N
132	Opposable thumbs.	\N
222	The homosexual agenda.	\N
202	Fiery poops.	\N
203	Cards Against Humanity.	\N
3680	Shitting on the White House lawn.	RS
238	Sean Connery.	\N
227	The milk man.	\N
115	The Chinese gymnastics team.	\N
231	Eating the last known bison.	\N
134	Soiling oneself.	\N
182	Giving 110%.	\N
242	Friendly fire.	\N
111	Count Chocula.	\N
172	Feeding Rosie O'Donnell.	\N
251	Seduction.	\N
194	Being a motherfucking sorcerer.	\N
264	Eastern European Turbo-Folk music.	\N
273	Douchebags on their iPhones.	\N
281	The deformed.	\N
285	Donald Trump.	\N
288	This answer is postmodern.	\N
301	African children.	\N
307	Have some more kugel.	\N
310	Crippling debt.	\N
313	Shorties and blunts.	\N
328	(I am doing Kegels right now.)	\N
331	Bestiality.	\N
333	Drum circles.	\N
338	Inappropriate yelling.	\N
341	The Thong Song.	\N
342	A vajazzled vagina.	\N
3682	Nessie.	RS
363	Tiger Woods.	\N
371	PCP.	\N
383	Mr. Snuffleupagus.	\N
394	A disappointing birthday party.	\N
319	Puppies!	\N
308	A windmill full of corpses.	\N
340	Being on fire.	\N
372	A lifetime of sadness.	\N
258	Pterodactyl eggs.	\N
289	Crumpets with the Queen.	\N
344	Exchanging pleasantries.	\N
276	Republicans.	\N
321	Kim Jong-il.	\N
366	Glenn Beck being harried by a swarm of buzzards.	\N
254	A salty surprise.	\N
330	The Jews.	\N
324	Incest.	\N
3683	Princess Peach's Cake.	RS
391	Nazis.	\N
292	Repression.	\N
287	Attitude.	\N
361	Passable transvestites.	\N
395	Puberty.	\N
374	Swooping.	\N
4221	Rob Liefeld.	TGWTG
379	A look-see.	\N
348	Lactation.	\N
266	Pabst Blue Ribbon.	\N
357	The gays.	\N
278	A foul mouth.	\N
377	A hot mess.	\N
268	My collection of high-tech sex toys.	\N
318	Bees?	\N
388	Getting drunk on mouthwash.	\N
277	The glass ceiling.	\N
286	Sarah Palin.	\N
291	Team-building exercises.	\N
290	Frolicking.	\N
380	Not giving a shit about the Third World.	\N
345	My relationship status.	\N
384	Barack Obama.	\N
302	Mouth herpes.	\N
386	Wiping her butt.	\N
263	Pedophiles.	\N
373	Doin' it in the butt.	\N
347	Being fabulous.	\N
389	An M. Night Shyamalan plot twist.	\N
294	A bag of magic beans.	\N
296	Dead parents.	\N
257	My sex life.	\N
343	Riding off into the sunset.	\N
364	Dick fingers.	\N
362	The Virginia Tech Massacre.	\N
387	Queefing.	\N
339	Tangled Slinkys.	\N
337	Civilian casualties.	\N
316	Leprosy.	\N
325	Grave robbing.	\N
376	Tentacle porn.	\N
304	Bill Nye the Science Guy.	\N
370	New Age music.	\N
261	72 virgins.	\N
322	Hope.	\N
314	Passing a kidney stone.	\N
299	A mime having a stroke.	\N
368	Classist undertones.	\N
298	A mating display.	\N
382	The Kool-Aid Man.	\N
349	Not reciprocating oral sex.	\N
352	Date rape.	\N
306	Italians.	\N
256	My soul.	\N
3684	Two midgets stacked up pretending to be one person.	RS
312	A stray pube.	\N
279	Jerking off into a pool of children's tears.	\N
280	Getting really high.	\N
378	Too much hair gel.	\N
303	Overcompensation.	\N
272	Free samples.	\N
346	Shaquille O'Neal's acting career.	\N
271	Half-assed foreplay.	\N
283	Explosions.	\N
392	White privilege.	\N
293	Road head.	\N
255	Poorly-timed Holocaust jokes.	\N
323	8 oz. of sweet Mexican black-tar heroin.	\N
355	Judge Judy.	\N
259	Altar boys.	\N
358	Scientology.	\N
329	Justin Bieber.	\N
327	Alcoholism.	\N
351	My genitals.	\N
332	Winking at old people.	\N
385	Golden showers.	\N
365	Racism.	\N
336	Auschwitz.	\N
262	Raping and pillaging.	\N
334	Kids with ass cancer.	\N
274	Hurricane Katrina.	\N
356	Lumberjack fantasies.	\N
381	American Gladiators.	\N
295	An asymmetric boob job.	\N
326	Asians who aren't good at math.	\N
335	Loose lips.	\N
270	The Blood of Christ.	\N
317	A brain tumor.	\N
315	Prancing.	\N
375	The Hamburglar.	\N
360	Police brutality.	\N
260	Forgetting the Alamo.	\N
369	Booby-trapping the house to foil burglars.	\N
359	Estrogen.	\N
390	A robust mongoloid.	\N
309	Her Royal Highness, Queen Elizabeth II.	\N
193	Pooping back and forth. Forever.	\N
320	Cockfights.	\N
305	Bitches.	\N
300	Stephen Hawking talking dirty.	\N
403	Those times when you get sand in your vagina.	\N
424	Faith healing.	\N
428	Impotence.	\N
454	Bananas in Pajamas.	\N
399	Getting so angry that you pop a boner.	\N
414	Tasteful sideboob.	\N
396	Two midgets shitting into a bucket.	\N
406	Racially-biased SAT questions.	\N
449	Glenn Beck catching his scrotum on a curtain hook.	\N
398	The forbidden fruit.	\N
459	Anal beads.	\N
367	Surprise sex!	\N
426	Dead babies.	\N
129	Masturbation.	\N
452	The Hustle.	\N
409	Obesity.	\N
429	Child beauty pageants.	\N
422	Goats eating coins.	\N
457	Kamikaze pilots.	\N
443	Powerful thighs.	\N
450	A big hoopla about nothing.	\N
433	Women's suffrage.	\N
442	John Wilkes Booth.	\N
425	Parting the Red Sea.	\N
435	Harry Potter erotica.	\N
416	Grandma.	\N
407	Porn stars.	\N
423	A monkey smoking a cigar.	\N
439	Mathletes.	\N
437	Lance Armstrong's missing testicle.	\N
434	Children on leashes.	\N
445	Multiple stab wounds.	\N
411	Oompa-Loompas.	\N
451	Peeing a little bit.	\N
421	The miracle of childbirth.	\N
448	Another goddamn vampire movie.	\N
3686	The tears of a college student.	RS
455	Active listening.	\N
402	A gassy antelope.	\N
412	BATMAN!!!	\N
413	Black people.	\N
447	Serfdom.	\N
418	The Trail of Tears.	\N
453	Ghosts.	\N
436	The Dance of the Sugar Plum Fairy.	\N
420	Finger painting.	\N
249	Robert Downey, Jr.	\N
405	Muhammed (Praise Be Unto Him).	\N
419	Famine.	\N
431	AXE Body Spray.	\N
458	The Force.	\N
446	Cybernetic enhancements.	\N
444	Mr. Clean, right behind you.	\N
401	Third base.	\N
438	Dwarf tossing.	\N
408	A fetus.	\N
441	Women in yogurt commercials.	\N
417	Copping a feel.	\N
400	Sexual tension.	\N
456	Dry heaving.	\N
430	Centaurs.	\N
397	Wifely duties.	\N
415	Hot people.	\N
432	Kanye West.	\N
427	The Amish.	\N
410	When you fart and a little bit comes out.	\N
1084	Bosnian chicken farmers.	X1
1085	Nubile slave boys.	X1
1086	Carnies.	X1
1087	Coughing into a vagina.	X1
1088	Suicidal thoughts.	X1
1089	Dancing with a broom.	X1
1090	Deflowering the princess.	X1
1091	Dorito breath.	X1
1092	Eating an albino.	X1
1093	Enormous Scandinavian women.	X1
1094	Fabricating statistics.	X1
1095	Finding a skeleton.	X1
1096	Gandalf.	X1
1097	Genetically engineered super-soldiers.	X1
1098	George Clooney's musk.	X1
1099	Getting abducted by Peter Pan.	X1
1100	Getting in her pants, politely.	X1
1101	Gladiatorial combat.	X1
1102	Good grammar.	X1
1103	Hipsters.	X1
1104	Historical revisionism.	X1
1105	Insatiable bloodlust.	X1
1106	Jafar.	X1
1107	Jean-Claude Van Damme.	X1
1108	Just the tip.	X1
1109	Mad hacky-sack skills.	X1
1224	Beefin' over turf.	X2
1225	A squadron of moles wearing aviator goggles.	X2
1464	Santa's heavy sack.	❄
1465	Clearing a bloody path through Walmart with a scimitar.	❄
1466	Another shitty year.	❄
1467	Whatever Kwanzaa is supposed to be about.	❄
1468	A Christmas stocking full of coleslaw.	❄
1469	Elf cum.	❄
1470	The tiny, calloused hands of the Chinese children that made this card.	❄
1471	Taking down Santa with a surface-to-air missle.	❄
1473	Socks. 	❄
1474	Pretending to be happy.	❄
1475	Krampus, the Austrian Christmas monster.	❄
1476	The Star Wars Holiday Special.	❄
1478	Mall Santa.	❄
1479	Several intertwining love stories featuring Hugh Grant.	❄
1481	Gift-wrapping a live hamster.	❄
1482	Space Jam on VHS.	❄
1483	Immaculate conception.	❄
1484	Fucking up "Silent Night" in front of 300 parents.	❄
1485	A visually arresting turtleneck.	❄
1486	A toxic family environment.	❄
1487	Eating an entire snowman.	❄
3687	Mr. Hankey the Christmas Poo.	RS
509	Show me your tits!	VS
510	Thanking your sex slaves.	VS
511	Dickcheese.	VS
512	Googly eyes on a cock.	VS
513	Typing with your genitals.	VS
514	Pirate hookers.	VS
515	Poopcake.	VS
516	Mandatory Sex Party.	VS
517	A WHOLE GALLON.	VS
518	Games you can play with bricks.	VS
519	Lewhora.	VS
520	Fancy tampons.	VS
521	Very Serious Island.	VS
522	COLLIN.	VS
523	Ferngully.	VS
524	Velociraptor.	VS
525	Thundercunting.	VS
526	Werewolf.	VS
527	Cultist.	VS
528	Vejazzled vagina.	VS
529	HODOR.	VS
530	Simple dog.	VS
531	Butt oranges.	VS
532	Sweater kittens.	VS
533	Baby batter.	VS
534	Meat curtains.	VS
535	Strawberry Shortcake sexing up a Carebear and giving birth to NyanCat.	VS
536	Blowjob Jesus.	VS
537	GOATS.	VS
538	Welcome Taco.	VS
539	Boobs.	VS
540	Moobs.	VS
541	Tinychat.	VS
542	Centaur Therapist Jesus.	VS
543	LOUD NOISES.	VS
544	THE GODDAMN BATMAN.	VS
545	Swinging an axe in the air while cornholing a bear.	VS
546	WIIINES.	VS
547	A Wende head tilt.	VS
548	Chris Gaines.	VS
549	Fuck you, I'm a bear.	VS
550	Doctor Who.	VS
551	EXTERMINATE.	VS
552	Landshark.	VS
553	Bearshark.	VS
554	SCIENCE!!1!	VS
555	The Great Dildo, Thor.	VS
556	Just the tip!	VS
557	Daddy foam.	VS
558	PooooooP!	VS
10001	Dragon dildos.	Furry
560	Buttpirate Pokemon.	VS
561	A really good booby weight.	VS
562	Tubemonster.	VS
563	Bevis.	VS
564	Trouser snakes.	VS
565	A WHOLE GALLON OF BOOBS.	VS
566	Barfstab.	VS
567	LYNCH LUPUS.	VS
568	Drinking on live TV.	VS
569	Shooting heroin into my eyeballs.	VS
570	Skittering ovaries.	VS
571	Ricardo.	VS
572	The Power of Greyskull.	VS
573	The revolution.	VS
574	The establishment.	VS
575	Queer Lesbian Jesus.	VS
576	Hello Kitty.	VS
577	Readying my torch for burnination.	VS
578	Tots.	VS
579	Getting drunk before noon.	VS
580	In a sneaky hate spiral.	VS
581	Clown strippers.	VS
582	KERMIT FLAIL.	VS
583	Certified Breast Maintenance Engineer.	VS
584	A test tube baby.	VS
585	Dancing naked.	VS
586	Moist and Juicy.	VS
587	Orgy.	VS
588	Premature ejaculation.	VS
589	Bounty, the Quicker Picker Upper.	VS
590	Lotion.	VS
591	Rapey dolphin.	VS
592	Werepoo.	VS
593	Handbra.	VS
594	A moose giving birth in Maggly's yard.	VS
595	More bandaids.	VS
596	Fuckweasel.	VS
597	Curious hands.	VS
598	Spagbag.	VS
599	Tears of manly pain.	VS
600	Cthulu.	VS
601	Surprise penis.	VS
602	SEX.	VS
603	Mr. Tinycheeks.	VS
604	A spoon that is too big.	VS
605	Bleeding Anuses.	VS
606	Not being pregnant.	VS
607	An Olive Ewe.	VS
608	Hookers and blow.	VS
609	Dropbears.	VS
610	Standing next to short people to use them as armrests.	VS
611	Making a random guess in Werewolf that gets you killed later.	VS
612	INTERNET FOREVER!	VS
613	The jitters you get before a meetup.	VS
614	Shenaniganty.	VS
615	I AM HOW BABIES ARE MADE.	VS
616	Noble whore.	VS
617	Kangaroo stripper.	VS
618	Droopums.	VS
619	Nonni's mantis.	VS
620	Ginger baby.	VS
621	Drunk foruming.	VS
1477	My hot cousin.	❄
100009	The Chilled Knife.	SG
100011	Dr. Phil.	SG
100012	Paul and Storm.	SG
100013	Jonathan Coulton.	SG
100014	MC Frontalot.	SG
100015	Pretending you're Xyzzy.	SG
130	Twinkies®.	\N
145	Five-Dollar Footlongs™.	\N
100018	Cleveland (it's not Detroit!).	SG
100019	An immediately regrettable $9 hot dog from the Boston Convention Center.	PAX A
100020	Running out of stamina.	PAX A
100021	Casting Magic Missile at a bully.	PAX A
100022	Getting bitch slapped by Dhalsim.	PAX A
100023	Firefly: Season 2.	PAX A
100024	Rotating shapes in mid-air so that they fit into other shapes when they fall.	PAX A
100025	Jiggle physics.	PAX A
100026	Paying the iron price.	PAX A
100029	Loading from a previous save.	PAX B
100030	Sharpening a foam broadsword on a foam whetstone.	PAX B
100031	The rocket launcher.	PAX B
100032	The depression that ensues after catching 'em all.	PAX B
100033	Violating the First Law of Robotics.	PAX B
100034	Getting inside the Horadric Cube with a hot babe and pressing the transmute button.	PAX B
100035	Punching a tree to gather wood.	PAX B
100036	Spending the year's insulin budget on Warhammer 40k figurines.	PAX B
100039	Achieving 500 actions per minute.	PAX C
100040	Forgetting to eat, and consequently dying.	PAX C
100041	Wil Wheaton crashing an actual spaceship.	PAX C
100042	The Klobb.	PAX C
100043	Charging up all the way.	PAX C
100044	Vespene gas.	PAX C
100045	Judging elves by the color of their skin and not by the content of their character.	PAX C
100046	Smashing all the pottery in a Pottery Barn in search of rupees.	PAX C
100052	The best card in my hand.	SG
100053	The primal, ball-slapping sex your parents are having right now.	X3
100055	A cat video so cute that your eyes roll back and your spine slides out of your anus.	X3
100056	Cock.	X3
100057	The biggest, blackest dick.	SG
100060	A cop who is also a dog.	X3
100061	Dying alone and in pain.	X3
100062	Gay aliens.	X3
100063	The way white people is.	X3
100064	Reverse cowgirl.	X3
100068	Actually getting shot, for real.	X3
100069	Not having sex.	X3
100071	Vietnam flashbacks.	X3
100072	Running naked through a mall, pissing and shitting everywhere.	X3
100073	Nothing.	X3
100075	Warm, velvety muppet sex.	X3
100076	Self-flagellation.	X3
100077	The systematic destruction of an entire people and their way of life.	X3
100079	Samuel L. Jackson.	X3
100080	A boo-boo.	X3
100081	Going around punching people.	X3
100082	The entire Internet.	X3
100083	Some kind of bird-man.	X3
100084	Chugging a lava lamp.	X3
100086	Having sex on top of a pizza.	X3
100087	Indescribable loneliness.	X3
100088	An ass disaster.	X3
100090	Shutting the fuck up.	X3
100091	All my friends dying.	X3
100099	Putting an entire peanut butter and jelly sandwich into the VCR.	X3
100101	Spending lots of money.	X3
100102	Some douche with an acoustic guitar.	X3
100107	Flying robots that kill people.	X3
100109	A greased-up Matthew McConaughey.	X3
100111	An unstoppable wave of fire ants.	X3
100112	Not contributing to society in any meaningful way.	X3
100114	An all-midget production of Shakespeare's <i>Richard III</i>.	X3
100115	Screaming like a maniac.	X3
100116	The moist, demanding chasm of his mouth.	X3
100117	Filling every orifice with butterscotch pudding.	X3
100118	Unlimited soup, salad, and breadsticks.	X3
100119	Crying into the pages of Sylvia Plath.	X3
10002	Adam Wan.	Furry
100121	A PowerPoint presentation.	X3
100122	A surprising amount of hair.	X3
100123	Eating Tom Selleck's mustache to gain his powers.	X3
100124	Roland the Farter, flatulist to the king.	X3
100125	That ass.	X3
100126	A pile of squirming bodies.	X3
100127	Buying the right pants to be cool.	X3
100128	Blood farts.	X3
100129	Three months in the hole.	X3
100130	A botched circumcision.	X3
100131	The Land of Chocolate.	X3
100132	Slapping a racist old lady.	X3
100133	A lamprey swimming up the toilet and latching onto your taint.	X3
100134	Jumping out at people.	X3
100135	A black male in his early 20s, last seen wearing a hoodie.	X3
100136	Mufasa's death scene.	X3
100137	Bill Clinton, naked on a bearskin rug with a saxophone.	X3
100138	Demonic possession.	X3
100139	The Harlem Globetrotters.	X3
100140	Vomiting mid-blowjob.	X3
100141	My manservant, Claude.	X3
100142	Having shotguns for legs.	X3
100143	Letting everyone down.	X3
100144	A spontaneous conga line.	X3
100145	A vagina that leads to another dimension.	X3
100146	Disco fever.	X3
100147	Getting your dick stuck in a Chinese finger trap with another dick.	X3
100148	Fisting.	X3
100149	The thin veneer of situational causality that underlies porn.	X3
100150	Girls that always be textin'.	X3
100151	Blowing some dudes in an alley.	X3
3688	The Columbine Shooting.	RS
100153	Sneezing, farting, and coming at the same time.	X3
167	The Tempur-Pedic® Swedish Sleep System™.	\N
192	Fancy Feast®.	\N
229	Hot Pockets®.	\N
247	A neglected Tamagotchi™.	\N
267	Domino's™ Oreo™ Dessert Pizza.	\N
284	The Übermensch.	\N
311	Adderall™.	\N
350	Sobbing into a Hungry-Man® Frozen Dinner.	\N
353	Ring Pops™.	\N
354	GoGurt®.	\N
3689	Shag carpeting.	RS
100156	Suddenly realizing you're retarded.	SG
3001	Steven Docking.	NL
3002	/r/Letsplay.	NL
3003	/r/sloths.	NL
3004	#Krazymike.	NL
3005	A Bane impression.	NL
3006	A big wet pink laser sword.	NL
3007	A brief moment of aptitude.	NL
3008	A bunch of jabronies.	NL
3009	A butt egg.	NL
15368	Rock-hard, glistening abs.	ANX1
3011	A delicious baby.	NL
3012	A docking sleeve.	NL
3013	A little bit of added defense.	NL
3014	A street cleaning simulator.	NL
3015	An old man carrying a box of glass down stairs.	NL
3016	Anything from http://www.thenorthernlionstory.com/.	NL
3017	Beating it on camera.	NL
3018	Being terrible at games.	NL
3019	Bejeweed.	NL
3020	Big Hat Logan.	NL
3021	Blondes, brunettes, and redheads.	NL
3022	Blue Baby.	NL
3023	BOOYAH!	NL
3024	Bow to your sensei!	NL
3025	Brimstone.	NL
3026	Butt meat.	NL
3027	Checking the wiki.	NL
3028	Cheeseysaurus Rex.	NL
3029	Classic Northernlion.	NL
3030	Coming on Milhouse.	NL
3031	Corner fucking.	NL
3032	Crazy Mike.	NL
3033	Cross-dimensional fucking.	NL
3034	Dark holes.	NL
3035	Detroit Dock City.	NL
3036	Docking.	NL
3037	DockLeeSmile.	NL
3038	Dung pies.	NL
3039	Dying in a hang gliding accident. 	NL
3040	Excuse me?	NL
3041	Eyeless ooze guys.	NL
3042	Falling down the stairs with a bag full of glass.	NL
3043	Fat Robert Downey Jr.	NL
3044	Feline eugenics.	NL
3045	Fuck tables.	NL
3046	Fucking during a Diphtheria epidemic.	NL
3047	Garglebutts.	NL
3048	Getting corner fucked.	NL
3049	Getting wood.	NL
3050	Greed.	NL
3051	Harry Potter and the Chamber of a Salty Surprise.	NL
3052	Hookers, blow, and JSmithOTI.	NL
3053	Infomercials.	NL
3054	John Madden.	NL
3055	JSmithOTI.	NL
3056	Kate's Mario Party skills.	NL
3057	Krazy Mike doing a backflip, throwing a talking nut, and chanting "Hello!"	NL
3058	Krazy Mike.	NL
3060	Like you, but not rogue-like you.	NL
3061	Losing to Monstro after 300 hours of experience.	NL
3062	The backroom casting couch.	NL
3063	The fuck zone.	NL
3064	Losing to Quelaag 12 times in 72 minutes.	NL
3065	Maple syrup.	NL
3066	Michael Caine's spider collection.	NL
3067	Michaelalfox.	NL
3068	Michaelalfox's love of cheese.	NL
3069	Michaelalfox's muscles.	NL
3070	A mile-long penis.	NL
3071	Milking the poop for red hearts.	NL
3072	Mom's knife.	NL
3073	Mom's pad.	NL
3074	Monty.	NL
3075	A motherfucker.	NL
3076	Motherfucking.	NL
3077	Nipple hair.	NL
3078	Northernlion.	NL
3079	Northernlion's cancelled Assassin's Creed II let's play.	NL
3080	Northernlion's coffee maker.	NL
3081	Northernlion's hair.	NL
3082	Northernlion's pooping album.	NL
3083	Not Satan, I promise.	NL
3084	Novelty Twitter accounts.	NL
3085	Olmec.	NL
3086	Permanent Polaroid invincibility.	NL
3087	Poison Mushroom.	NL
3088	Poutine-induced diabetes.	NL
3089	Pretending youtube let's playing is a real job.	NL
3090	Projectile annoyance.	NL
3091	Putting your balls in her butt.	NL
3092	Puzzle platformers with rogue-like elements.	NL
3093	Quelaag's Furysword.	NL
3094	Reddit.	NL
3095	Residue.	NL
3096	RockLeeSmile.	NL
3097	Rogue-like likes.	NL
3098	Roll Fizzlebeef.	NL
3099	Ronald McDonald.	NL
3100	Sex.	NL
3101	Shit happens.	NL
3102	Shooting the poop.	NL
3103	Solaire of Astora.	NL
3104	South Korea.	NL
3105	Stream lag.	NL
3106	Stupid damage.	NL
3107	A tactical backflip.	NL
3108	The Northernlion Story.	NL
3109	Whispering sweet nothings into your rear.	NL
3110	The notorious Grey's Anatomy let's play.	NL
3111	The Binding of Isaac wiki.	NL
3112	Thornforg.	NL
3113	When you fuck a dog in the ass and it shits all over your dick.	NL
440	Lunchables™.	\N
460	The Make-A-Wish® Foundation.	\N
472	A Bop It™.	1.2
486	Euphoria™ by Calvin Klein.	1.2
487	Switching to Geico®.	1.2
507	The Donald Trump Seal of Approval™.	1.2
1114	Medieval Times® Dinner & Tournament.	X1
1136	The Fanta® girls.	X1
1182	The mere concept of Applebee's®.	X2
1187	A piñata full of scorpions.	X2
1228	Pretty Pretty Princess Dress-Up Board Game®.	X2
1480	A Hungry-Man™ Frozen Christmas Dinner for One.	❄
100152	Drinking ten 5-hour ENERGYs® to get fifty continuous hours of energy.	X3
3114	The USS Buttfucker.	NL
3115	Vaginal silk worms.	NL
3116	The Anor Londo Archers.	NL
3117	YouTube.	NL
3118	The saga of Krazy Mike.	NL
3119	A urination break.	NL
3120	The World Docking Champion.	NL
3121	Type-C Tetris music.	NL
3122	The Thug of Porn.	NL
3123	That damned HDPVR.	NL
3124	The NLSS: drawing unwanted attention from the actual docking community.	NL
3125	Patrick Dempsey thrusting violently into my midsection.	NL
3126	Well, what is it?	NL
3127	The Four Horsemen of The Apocolypse.	NL
3128	Talking nuts.	NL
3129	The Ozymandias head.	NL
3130	A total scumbag.	NL
3131	Striking fear into the hearts of your enemies.	NL
100158	Using the tears of an abused toddler to conquer my foes.	NL
3690	The Eiffel Tower.	RS
3691	Chicken and Waffles.	RS
3692	The Oculus Rift.	RS
3693	Banana Hammocks.	RS
3694	Dirty hippies.	RS
3695	Hey Arnold!	RS
3696	Air Bud.	RS
3697	Yankee Stadium.	RS
3698	Hump Day.	RS
3699	Sheepskin Condoms.	RS
3700	Cranky Kong.	RS
3701	The DK Rap.	RS
3702	Donkey Shows.	RS
3703	Hordes of zombies.	RS
3704	Monkeys throwing shit.	RS
3705	Rainbows and magic.	RS
3706	Tits.	RS
3707	The brown note.	RS
3708	Hentai.	RS
3709	Indiana Jones.	RS
3710	ALL the things!	RS
3711	Hitler's mustache.	RS
3712	Gerudo Valley.	RS
3713	Song of Storms.	RS
3714	Bill Gates pissing on Steve Jobs's grave.	RS
3715	A giant purple dildo sword.	RS
3716	Hipsters on their iPhones at Starbucks.	RS
3717	Catdog.	RS
3718	A boat load of cocaine.	RS
3719	Smooth jazz.	RS
3720	Lemon grenades.	RS
3721	Blue Waffles.	RS
3722	360 no scopes.	RS
3723	Soviet Russia.	RS
3724	The Mushroom Kingdom.	RS
3725	Outsourcing jobs to India.	RS
3726	Hooters.	RS
3727	The Hokey Pokey.	RS
3728	Kaizo Mario.	RS
3729	FrankerZ.	RS
3730	Spontaneous Combustion.	RS
3731	Kappa.	RS
3732	Insane Clown Posse.	RS
3733	Nu Metal.	RS
3734	The Wiggles.	RS
3735	Blue's Clues.	RS
3736	Using hot sauce as lube.	RS
3737	Mating season.	RS
3738	The Ouya.	RS
3739	Jew-Fros.	RS
3740	Fruit Fuckers.	RS
3741	Blowing your hand off with a firework.	RS
3742	Beer Pong.	RS
3743	Duke Nukem Forever.	RS
3744	Rule 34.	RS
3745	Made-for-TV movies.	RS
3746	Spanish soap operas.	RS
3747	Teh Urn.	RS
3748	Viking Metal.	RS
3749	Tickle Me Elmo.	RS
3750	Barney's rape dungeon.	RS
3751	Nurse Joy.	RS
3752	Canadian tuxedo.	RS
3753	Hungry Hungry Hippos.	RS
3754	The smallest, whitest dick.	RS
3755	Abusive fathers.	RS
3757	Ringworm.	RS
3758	The hero of time.	RS
3759	Terabytes of horse porn.	RS
3760	Blowing the President.	RS
3761	Skullcrusher Mountain.	RS
3762	Mr. Fancy Pants.	RS
3763	TotalBiscuit's top hat.	RS
3764	Demi Moore's bush.	RS
3766	A walrus with a beret.	RS
3767	Speedrunning life.	RS
3769	The truffle shuffle.	RS
3770	An 8-ball.	RS
3772	Bong hits for Jesus.	RS
3773	Penn and Teller.	RS
3774	Indentured servants.	RS
3775	Sex in your mouth.	RS
3776	Hoola hoops.	RS
4109	Literally drinking bottled fangirl tears.	TGWTG
4110	LordKaT's used nipple tassles.	TGWTG
4111	Luke's curly hair.	TGWTG
4112	Lupa's brand of hair dye.	TGWTG
4113	Ma-Ti being castrated and having his balls shipped to Oancitizen in the mail by Diamanda Hagan.	TGWTG
4114	Magical fairy sex.	TGWTG
4115	Making angry love to a DVD copy of "Neverending Story III".	TGWTG
4116	Mako.	TGWTG
4117	Malachite's Hand.	TGWTG
4118	Maven's secret sparkling vampire dildo.	TGWTG
4119	Melvin, brother of the Joker.	TGWTG
4120	My mom.	TGWTG
4121	My penis catching fire.	TGWTG
4122	Naked crazy.	TGWTG
4123	Nash breaking his ass.	TGWTG
4124	Nash dressed in drag.	TGWTG
4125	Nash in a gimp suit.	TGWTG
4126	Nash popping a blood vessel over Florida.	TGWTG
4127	Nash.	TGWTG
4128	Nash's long, long hair.	TGWTG
4129	Newborn porn.	TGWTG
4130	Nun fuckery.	TGWTG
4131	Oancitizen.	TGWTG
4132	Over-intrusive fanboys.	TGWTG
4133	Having sex at a screening of Mr. Popper's Penguins.	TGWTG
4134	Phelous making love to his Turtles collection.	TGWTG
4135	Poop, as a plan.	TGWTG
4136	Punching your foe in the stomach and screaming "I AM A MAN!"	TGWTG
4137	PushingUpRoses' bird tattoos.	TGWTG
3765	Eating 120 White Castle burgers®.	RS
3771	Quiznos®.	RS
4138	Putting sexy pantyhose on your dog.	TGWTG
4139	Radio Dead Air.	TGWTG
10003	Non-consensual sex with Zaush.	Furry
4141	Reading fan fiction on a live stream.	TGWTG
4142	Reading the comments.	TGWTG
4143	Requesting John Cage's "4'33" on Radio Dead Air.	TGWTG
4144	Reviewer dibs.	TGWTG
4145	Robotic sex slaves that are made to feel sadness.	TGWTG
4146	Rule 34 of Linkara and a lamp.	TGWTG
4147	Sad Panda.	TGWTG
4148	Santa Christ.	TGWTG
4149	Santa Christ's raging boner.	TGWTG
10004	My tailhole.	Furry
4151	Sharkleberry Finn-flavored Kool-Aid.	TGWTG
4152	Shooting colored corn syrup up your nose.	TGWTG
4153	Slightly creepy comments about Tara's hair.	TGWTG
4154	Smoking kittens.	TGWTG
4155	Snowdicking.	TGWTG
4156	Snowflame, feeling no pain.	TGWTG
4157	Sodomizing a loved one with a baseball bat.	TGWTG
4158	Space Guy.	TGWTG
4159	Spoony's fans.	TGWTG
4160	Spoony's sexy goth pixie girlfriend.	TGWTG
4161	Stick figure porn.	TGWTG
4162	Stickboy.	TGWTG
4163	Storing your dead friend's ashes into a Quaker Oats can.	TGWTG
4164	Suggestively eating a banana at the sight of David Bowie.	TGWTG
4165	SYMBOLISM!	TGWTG
4166	Taking someone by the shoulders, throwing them on the bed and riding them like a stallion.	TGWTG
4167	That Aussie Guy.	TGWTG
4168	That goddamned Colossus roar.	TGWTG
4169	That one guy with snails.	TGWTG
4170	The Angry Video Game Nerd.	TGWTG
4171	The Blockbuster Buster.	TGWTG
4172	The Cinema Snob Movie DVD.	TGWTG
4173	THE COCK.	TGWTG
4174	The Continuity Alarm.	TGWTG
4175	The elephant in the room.	TGWTG
4176	The Film Renegado.	TGWTG
4177	The five months when the Nostalgia Critic was dead.	TGWTG
4178	The LAAAAAAAAAAAAAAAAAAAAAW!	TGWTG
4179	The Makeover Fairy.	TGWTG
4180	The Nostalgia Critic.	TGWTG
4181	The pig fucking movie.	TGWTG
4182	The plot hole.	TGWTG
4183	The Power Glove.	TGWTG
4184	The RDA drinking game.	TGWTG
4185	The RDA IRC channel.	TGWTG
4186	The Spocker.	TGWTG
4187	The TGWTG site redesign.	TGWTG
4188	The Wunder Boner.	TGWTG
4189	This fecal matter you call "Fluttershy".	TGWTG
4190	Throwing a Baby Tumbles Surprise down a staircase.	TGWTG
4191	Time travel.	TGWTG
4192	Timing.	TGWTG
4193	Todd's unmasked visage.	TGWTG
4194	Using Crystal Pepsi as a substitute for lube.	TGWTG
4195	Using your underwear to shoplift raw meat from your local Wal-Mart.	TGWTG
4196	Vigorously shagging your sister while holding a mug of warm tea.	TGWTG
4197	Welshy.	TGWTG
4199	Whatever the hell Barfiesta was supposed to be.	TGWTG
4200	Yet another Thunderdome reference.	TGWTG
4201	Your mom.	TGWTG
4202	Zodan The Unbouncable.	TGWTG
4203	90's Kid's comic collection.	TGWTG
4204	A Linkara cameo.	TGWTG
4205	A plushie cybermat.	TGWTG
4206	ALL THE COCAINE!!!	TGWTG
4207	Bees!	TGWTG
4208	Being fed up with reviewing lamps, what obscure topic did Linkara review next?	TGWTG
4209	Harvey Finevoice's fine voice.	TGWTG
4210	Killing clowns.	TGWTG
4211	Linkara crying in his Gatorade made of cybermat tears.	TGWTG
4212	Linkara stalking Gail Simone on Twitter.	TGWTG
4213	Linkara's cybermat invasion force.	TGWTG
4214	Linkara's fangirl support group.	TGWTG
4215	Linkara's magic gun.	TGWTG
4216	Linkara's masculine arms.	TGWTG
4217	MAGfest.	TGWTG
4218	Marzkara fanfiction.	TGWTG
4219	Mechakara's phallic drill.	TGWTG
4220	Reviews of $20 lamps.	TGWTG
4198	What did the commenters bitch about next to Doug?	TGWTG
15369	A diet consisting almost entirely of potatoes.	ANX1
3994	A baseball to the nuts.	TGWTG
3995	A bat credit card.	TGWTG
3996	A Big Lipped Alligator Moment.	TGWTG
3997	A big long pink ding dong penis.	TGWTG
3998	A bird fucking a horse.	TGWTG
3999	A Blip check.	TGWTG
4000	A bootleg ninja turtle action figure possessed by Satan.	TGWTG
4001	A car landing on a roof.	TGWTG
4002	A case of disappearing bears.	TGWTG
4003	A Chia-Child.	TGWTG
4004	A congregation of bums.	TGWTG
10005	Adoptables with visible genitalia.	Furry
10006	An embarrassingly long F-List profile.	Furry
4008	A drugged Oancitizen in a schoolgirl outfit.	TGWTG
4009	A greased-up meth guy.	TGWTG
10007	Catching STDs at conventions.	Furry
4011	A killer rabbit.	TGWTG
4012	A mexican car wash.	TGWTG
4013	A misguided Tumblr activism campaign.	TGWTG
4014	A mobile meth lab in your pants.	TGWTG
10008	Fursuit adventures.	Furry
4016	A novelty slot machine.	TGWTG
4017	A Pan-Galactic Gargle Blaster.	TGWTG
4018	A poorly-written ugly mess.	TGWTG
4019	A really pimped out DeLorean.	TGWTG
4020	A talking snail in a suit.	TGWTG
4021	A tiny white dick.	TGWTG
4022	A titanic, undead, six-headed space dragon spewing bubbles.	TGWTG
4023	A zombie fisherman.	TGWTG
4024	Accidentally punching your cohost in the face.	TGWTG
4025	ALL OF THE DICKS.	TGWTG
4026	Almost dying at Sesame Street.	TGWTG
4027	An art film Kyle's reviewed.	TGWTG
4028	An autoclitorodectomy.	TGWTG
10009	A semen-stained fursuit.	Furry
4030	An obscure reference only two people will get.	TGWTG
4031	Anal tearing.	TGWTG
4032	Andrew Dickman.	TGWTG
4033	Angrily playing piano.	TGWTG
4034	Ash.	TGWTG
4035	Ash and Checkers.	TGWTG
4036	Ask That Guy raped by Ma-Ti live.	TGWTG
4037	ASS ASS ASS ASS ASS ASS ASS ASS.	TGWTG
4038	Ass demons.	TGWTG
4039	Awkward pity sex with a sparkly teenage Cthulu.	TGWTG
10010	Fake furry girls.	Furry
4041	Because no one wants to see your dick.	TGWTG
4042	Because the Kool-Aid Man is red.	TGWTG
4043	Because there's nothing sexy at the Wal-Mart.	TGWTG
4044	Bees. My God.	TGWTG
4045	Being frozen today.	TGWTG
4046	Beppo the Invisible Monkey.	TGWTG
4047	BETRAYAL!	TGWTG
4048	Big Jim Slade.	TGWTG
4049	Blockbuster Buster busting a nut.	TGWTG
4050	Breaking someone's spine by fucking.	TGWTG
4051	Carl Copenhagen.	TGWTG
4052	Casper.	TGWTG
4053	Chuck Norris.	TGWTG
4054	Confusing The Last Angry Geek and Linkara.	TGWTG
4055	CR's collection of My Little Pony pins.	TGWTG
4056	Creepy fans at cons buying expensive stuff for MarzGurl.	TGWTG
4057	Creepy guys in the RDA chat hitting on Tara.	TGWTG
4058	Nash's creepy face.	TGWTG
4059	Crying your eyes out at a bunch of online reviewers.	TGWTG
4061	Dark Nella.	TGWTG
4062	David Bowie's package.	TGWTG
10011	That one straight guy at the party.	Furry
4064	Diamanda Hagan's sexbot.	TGWTG
4065	Diamanda's copy of Cockhammer.	TGWTG
4066	Disney's Anne Frank.	TGWTG
4067	Dogs wearing pantyhose.	TGWTG
4068	Dolphin rape.	TGWTG
4069	A douchequake.	TGWTG
4070	Dr. Insano.	TGWTG
4071	Dr. Wiki.	TGWTG
4072	Explosively masturbating with Malachite's Hand.	TGWTG
4073	Ferdinand Von Turrell.	TGWTG
4074	Film Brain's lovely accent.	TGWTG
4075	Finding out that "it's not Pop Tarts!"	TGWTG
4076	Firing a blue shell at the opposing house ship.	TGWTG
4077	Florida.	TGWTG
4078	Florida Man.	TGWTG
4079	Flying sex snakes in monocles and bow ties.	TGWTG
4080	Fort Super-Awesome.	TGWTG
4081	FOUR HOURS?!	TGWTG
10012	An apartment full of internet-obsessed losers.	Furry
4083	Fuck yeah, SPARKLE SPARKLE SPARKLE!	TGWTG
4084	Fuck you, I do what I want.	TGWTG
4085	FUCK YOU, I'M SPIDERMAN!	TGWTG
4086	Fucking bubbles.	TGWTG
4087	Getting buggered by a giant hamster.	TGWTG
4088	Getting mauled by a mountain lion AND a grizzly bear at the same time.	TGWTG
4089	Glenn Beck being torn apart by zombies.	TGWTG
4090	Going full retard.	TGWTG
4091	Going through the effort to build a wall in your back yard just to bash your head into it over and over again.	TGWTG
4092	Gooby.	TGWTG
4093	Hagan's dictator tendencies.	TGWTG
4094	Hagan's make up artist.	TGWTG
4095	Hagan's masturbating minion.	TGWTG
4096	Ham?	TGWTG
4097	Hippo Queen Tara.	TGWTG
4098	Hitler without the mustache.	TGWTG
15370	Mamoru Oshii's dog love.	ANX1
4100	Humping a can of trash.	TGWTG
4101	I AM A MAN!	TGWTG
4102	Invading a micronation in Nevada and making it your own.	TGWTG
4103	JewWario's solar penis.	TGWTG
4104	Kickassia.	TGWTG
4105	Kitler.	TGWTG
4106	Kyle humping a trashcan.	TGWTG
4107	Linkara's 'special' comic books.	TGWTG
4108	Linkara's hat.	TGWTG
4222	Superboy Prime.	TGWTG
4223	The Entity.	TGWTG
4224	The legendary MAGFest orgy.	TGWTG
4225	The most important job, reviewing a crappy comic book.	TGWTG
4226	The next History of Power Rangers.	TGWTG
4227	Youngblood's disease.	TGWTG
4228	Twin clones of Hitler.	TGWTG
559	Thundercunt.	VS
4006	A disembodied orgasm hippo.	TGWTG
4007	A doppelganger in black leather with a sword.	TGWTG
4010	A guest appearance by Giovanni Jones, the talking lobster.	TGWTG
4015	A naked rampage.	TGWTG
4029	An awkward slash fic between The Nostalgia Critic and The Angry Video Game Nerd.	TGWTG
4040	Bath salts.	TGWTG
4063	Diamanda Hagan.	TGWTG
4082	Frying the Coke.	TGWTG
4140	Rapidly pounding themselves in the face with a hammer.	TGWTG
4150	Sci-Fi Guy's ponytail.	TGWTG
4229	A beef swarm.	NL
3010	A butt pooping upwards an egg.	NL
100162	The League of Legends.	SG
100164	Advice from a wise, old black man.	1.3
100165	The Devil himself.	1.3
100166	The art of seduction.	1.3
100167	Funky fresh rhymes.	1.3
100168	The light of a billion suns.	1.3
10013	A tub of Vaseline.	Furry
100170	Destroying the evidence.	1.3
10014	Sex with strangers.	Furry
100172	Silence.	1.3
100173	Growing a pair.	1.3
100174	Synergistic management solutions.	1.3
100175	Wet dreams.	1.3
100120	Velcro™.	X3
100176	A live studio audience.	1.3
100177	The Great Depression.	1.3
100178	An M16 assault rifle.	1.3
100179	Poopy diapers.	1.3
100180	Tickling Sean Hannity, even after he tells you to stop.	1.3
100181	Stalin.	1.3
100182	A spastic nerd.	1.3
100183	Rush Limbaugh's soft, shitty body.	1.3
100184	Capturing Newt Gingrich and forcing him to dance in a monkey suit.	1.3
100185	Battlefield amputations.	1.3
100186	Brown people.	1.3
100187	Rehab.	1.3
100188	An ugly face.	1.3
100189	Menstrual rage.	1.3
100190	An uppercut.	1.3
100191	Shiny objects.	1.3
100192	50,000 volts straight to the nipples.	1.3
100193	A bucket of fish heads.	1.3
100194	Hospice care.	1.3
100195	Being fat and stupid.	1.3
100196	Getting married, having a few kids, buying some stuff, retiring to Florida, and dying.	1.3
100197	A pyramid of severed heads.	1.3
100198	Crucifixion.	1.3
100199	A subscription to Men's Fitness.	1.3
100200	Some god-damn peace and quiet.	1.3
100201	A micropig wearing a tiny raincoat and booties.	1.3
100202	Used panties.	1.3
100204	The penny whistle solo from "My Heart Will Go On."	1.3
100205	A tribe of warrior women.	1.3
100212	An oversized lollipop.	1.3
100213	Helplessly giggling at the mention of Hutus and Tutsis.	1.3
100214	Not wearing pants.	1.3
100215	Consensual sex.	1.3
100216	Her Majesty, Queen Elizabeth II.	1.3
4230	Angry Joe.	TGWTG
4231	Marzgurl.	TGWTG
4232	Chester A. Bum.	TGWTG
4233	Ask That Guy With The Glasses.	TGWTG
4234	Dominic the Bartender.	TGWTG
4235	Obscurus Lupa.	TGWTG
4236	ChaosD1.	TGWTG
4237	Skitch.	TGWTG
4238	Y Ruler Of Time.	TGWTG
4239	Linkara.	TGWTG
4240	Mechakara.	TGWTG
4241	Lord Vyce.	TGWTG
4242	90's Kid.	TGWTG
4243	Corporate Commander.	TGWTG
4244	JewWario.	TGWTG
4245	A demonic Teddy Ruxpin doll.	TGWTG
4246	Luke.	TGWTG
4247	Luke's inners.	TGWTG
4248	PhelousD1.	TGWTG
4249	Phelous.	TGWTG
4250	Filmbrain.	TGWTG
4251	Iron Liz.	TGWTG
4252	Malachite.	TGWTG
4253	Zodd.	TGWTG
4254	The Executor.	TGWTG
4255	PhilBuni.	TGWTG
4256	Ven Gethenian.	TGWTG
4257	That Sci-Fi Guy.	TGWTG
4258	Black Lantern Spoony.	TGWTG
4259	The Trousers Cosmic.	TGWTG
4260	Nash's folksy, velvety voice.	TGWTG
4261	Australia, Florida of the Pacific.	TGWTG
4262	Angrily eating lettuce.	TGWTG
4263	Mary Sewage.	TGWTG
4264	A legion of mechawolves.	TGWTG
4265	Linkara's futon.	TGWTG
4266	The Gooby Curse.	TGWTG
4267	ANCIENT EGYPT!	TGWTG
4268	An obligatory cameo.	TGWTG
4269	Dodger of Zion.	TGWTG
4270	An elevator party.	TGWTG
4271	Pants that need to be darkened.	TGWTG
4272	Only being on the site because of the influence of famous acquaintences.	TGWTG
4273	Enoby Dark'ness Dementia Raven TARA Way.	TGWTG
4274	JSmith's salty nuts.	NL
4275	#ShotsFired.	NL
4276	Banana bread.	NL
4277	Butterjail.	NL
10015	People who cosplay at furry conventions.	Furry
10016	Fursuiters at anime conventions.	Furry
10017	Embarrassing craigslist ads.	Furry
10018	Pounced.org.	Furry
10019	A large, flared Chance.	Furry
10020	Stretching your anus in preparation for horse cock.	Furry
10021	A hermaphrodite foxtaur.	Furry
10022	Babyfurs.	Furry
10023	Uncomfortably attractive animals.	Furry
10024	Confusing feelings about cartoon characters.	Furry
10025	PetSmart.	Furry
10026	Krystal, the fox.	Furry
10027	StarFox.	Furry
10028	Sonic the Hedgehog.	Furry
10029	Bowser's sweaty balls.	Furry
10030	A furpile.	Furry
10031	The stench of half a dozen unwashed bronies.	Furry
10032	Intimacy with the family dog.	Furry
10033	Horses.	Furry
10034	Fursecution.	Furry
10035	Chakats.	Furry
10036	DeviantArt.	Furry
10037	Otherkin.	Furry
10038	Heated debates about human genitalia versus animal genitalia.	Furry
10039	Taking the knot.	Furry
10040	Really, really liking Disney's Robin Hood.	Furry
10041	Applying your obscure, unrealistic fetishes to 90's cartoon characters.	Furry
10042	The texture and color of raw meat.	Furry
10043	An oversized clitoris that acts as a functional penis.	Furry
10044	A hermaphrodite snow leopard.	Furry
10045	Drawing furry porn.	Furry
10046	Lovingly rendered dragon anus.	Furry
10047	Cloaca.	Furry
10048	Animal genitalia.	Furry
10049	Motherfucking wolves.	Furry
10050	Christian furries.	Furry
10051	Barbed penises.	Furry
10052	Two knots.	Furry
10053	A really attractive wolf.	Furry
10054	A slutty gay fox.	Furry
10055	A surprisingly attractive anteater.	Furry
10056	FUCK YOU, I'M A DRAGON.	Furry
10057	Tumbles, the Stair Dragon.	Furry
10058	Furry Weekend Atlanta.	Furry
10059	Further Confusion.	Furry
10060	AnthroCon.	Furry
10061	Literally a bucket of semen.	Furry
10062	Sexual interest in pretty much anything with a hole.	Furry
10063	Attraction to pretty much anything with a penis.	Furry
10064	Transformation porn.	Furry
10065	Anatomically incorrect genitalia.	Furry
10066	When you catch yourself glancing at the crotches of animated characters.	Furry
10067	Belly rubs leading to awkward boners.	Furry
10068	Scritches.	Furry
10069	Lifting your tail.	Furry
10070	Experimenting with fisting.	Furry
10071	Bad decisions.	Furry
10072	A little bitch.	Furry
10073	A lime Citra.	Furry
10074	Sergals.	Furry
10075	An autistic knife fight.	Furry
10076	The noises red pandas make during sex.	Furry
10077	About 16 ounces of horse semen.	Furry
10078	Dog cum.	Furry
10079	Oral knotting.	Furry
10080	Leaving your orifices bloody and sore.	Furry
10081	Rubbing peanut butter on your genitals.	Furry
10083	Piss.	Furry
10084	Smells.	Furry
10085	When "blowing ten bucks" makes you think of a long night with a bunch of deer.	Furry
10086	Forgetting which set of fursuit paws you use for handjobs.	Furry
10087	A strategically placed hole.	Furry
10088	Shitting on my face.	Furry
10089	Barking at strangers.	Furry
10090	Sitting on your face.	Furry
10091	Spending more money on commissions than food in a given week.	Furry
10092	A dick so big you have to give it a hugjob.	Furry
10093	The fine line between feral and outright bestiality.	Furry
10094	Anal training.	Furry
10095	Discovering monster porn.	Furry
10096	Realizing that rimming is pretty cool.	Furry
10097	Endearing social ineptitude.	Furry
10098	All this lube.	Furry
10099	That thing that gives your dick a knot IRL.	Furry
10100	Gay.	Furry
10101	Really, truly heterosexual.	Furry
10102	Drenching your fursuit in Febreeze.	Furry
10103	That time you let your dog go a little further than just sniffing your crotch.	Furry
10104	Poodles with afros.	Furry
10105	Offensively stereotyped African animals.	Furry
10106	A sassy lioness.	Furry
10107	Surprise hermaphrodites.	Furry
10152	Taking special interest in nature documentaries.	Furry
10153	Becoming a veterinarian for all the wrong reasons.	Furry
10154	The premise of every furry comic ever.	Furry
10155	Anal sex you didn't know you wanted.	Furry
10156	The incredibly satisfying sound it makes when you pull it out.	Furry
10157	Bear tits.	Furry
10158	Big cute paws.	Furry
10159	Paws.	Furry
10160	Furry porn, shamelessly taped to the walls.	Furry
10161	Grabby-paws.	Furry
10162	Masturbating, with claws.	Furry
10163	Pawing-off.	Furry
10164	Tail-sex.	Furry
10165	Mary, the anthro mare.	Furry
10166	Natascha, the anthro husky.	Furry
10167	Nipple buffet.	Furry
10168	Crotch-tits.	Furry
10169	The tailstar tango.	Furry
10170	Furries in heat.	Furry
10171	Fantasizing about sex with just about every monster you encounter in your video game.	Furry
10172	Impure thoughts about Kobolds.	Furry
10173	Erotic roleplay.	Furry
10174	Monsters with bedroom eyes.	Furry
10175	Accurate avian anatomy.	Furry
10176	Getting fur stuck in your teeth.	Furry
10177	Getting feathers stuck in your teeth.	Furry
10178	Ignoring a person's faults because their character is hot.	Furry
4099	A legion of spiders.	TGWTG
3993	A secret goat porn stash.	TGWTG
15371	An 8 million yen debt to a club of rich pretty boys.	ANX1
15372	Hideaki Anno's poor, tortured therapist.	ANX1
4360	Golby.	GFC
15373	Fucking postcards as a cheap-ass pack-in gift.	ANX1
15374	Wild Tiger's Hundred Power.	ANX1
15375	Totoro.	ANX1
15376	Traps.	ANX1
15377	Korean Jesus.	ANX1
15378	Astro Boy.	ANX1
15379	Jacking off into a bottle of formaldehyde and calling it our firstborn.	ANX1
15380	Valvrape the Dominator.	ANX1
15381	Piles of dead children.	ANX1
15382	An unending, unquenchable thirst for orange Fanta.	ANX1
15383	Breaking the fourth wall to kill the mangaka.	ANX1
15384	Hentai voice acting.	ANX1
15385	A vampire ninja.	ANX1
15386	A potato committing seppuku.	ANX1
15387	A giant robot German suplex.	ANX1
4358	Benchpressing.	GFC
4359	Mother's debit card.	GFC
4361	Kevin Golby.	GFC
4362	That Kevin Golby.	GFC
4363	The Golbies: like the jitters but with a concern towards stabbings.	GFC
4364	STEAL ALL THE FARM.	GFC
4365	Norwegian Oil.	GFC
4366	Grandiosa.	GFC
4367	Drilling.	GFC
4368	Barta's glorious hair.	GFC
4369	BENCH ALL THE MOTHERS.	GFC
4370	Taking the second and third blue buff.	GFC
4371	Invisible stabwounds.	GFC
4372	Lulu's double E.	GFC
4373	A blurry picture.	GFC
4374	The Merchant Navy.	GFC
4375	Extensive research by Trygve.	GFC
4376	The Trygvipedia.	GFC
4377	Chak looking like Ross Kemp on a good day.	GFC
4378	Manny's epic laugh.	GFC
4379	Clearly jealous.	GFC
4380	A very tight vest from Primark.	GFC
4381	Fisting a nun.	GFC
4382	Teabagging a siamese midget while benchpressing a cybernetically enhanced bear.	GFC
4383	From Primark.	GFC
4384	smoochy moochy.	GFC
4385	A Superman tattoo.	GFC
4386	Gary Glitter.	GFC
4387	Blanda Upp!.	GFC
4388	Hestkuk.	GFC
4389	A nice guy.	GFC
4390	My 6.3 KDA ratio.	GFC
4391	bronze scrub.	GFC
4392	Get on my level.	GFC
4393	Fucking tryhard.	GFC
4394	Those moments when you're bored and pucker your anus to a good beat.	GFC
4395	An undetermined but significant quantity of penis.	GFC
4396	PEEEEEEEEEEEEEEEENIIIISSSSSSSS.	GFC
4397	The Shawk.	GFC
4398	They're taking the hobbits to Isengard!	GFC
4399	Confounding jerry at every turn.	GFC
4400	Jumanji.	GFC
4401	Wards.	GFC
4402	Build an Aegis!	GFC
4403	Wildturtle's vast range of emotions.	GFC
4404	K-Pop.	GFC
4405	Doing Gangnam Style at a funeral.	GFC
4406	joseph gordon-Levitt wearing nothing but a kitten.	GFC
4407	125% Reccomended Daily Allowance of cock.	GFC
4408	Barta not being sarcastic.	GFC
4409	Golby's itchy testicles.	GFC
4410	Surgery to move the male g-spot to the naval.	GFC
4411	The Kirk vs Spock fight scene music.	GFC
4412	Golby not jungling.	GFC
4413	Feeling a fart pushing against your prostate.	GFC
4414	I'm Batman. WHERE ARE THEY?!?	GFC
4415	Band Camp.	GFC
4416	A corgi wearing a hat.	GFC
4417	A corgi wearing a sailor moon outfit.	GFC
4418	a corgi dressed as a viking.	GFC
4419	A corgi.	GFC
4420	Chak's bald spot.	GFC
4421	THE HAWK!	GFC
4422	When Aunt Erma visits.	GFC
4423	Jamiroquai.	GFC
4424	BAWNJOURNO.	GFC
4425	Black people's nostrils.	GFC
4426	LOOK AT MY HORSE.	GFC
4427	MY HORSE IS AMAZING.	GFC
4428	XPEKE!	GFC
4429	Because Froggen did it.	GFC
4430	Meowing Ride of the Valkyries during intercourse.	GFC
4431	CACAW!	GFC
4432	Dryhumping.	GFC
4433	Gilbert Gotfried.	GFC
4434	50 Shades of Gay.	GFC
4435	Maple Bourbon Bacon Jam.	GFC
4436	Chak making a sandwich.	GFC
4437	Jealous.	GFC
4438	Frozen Heart Ashe.	GFC
4439	Yorick Ult on Anivia Egg.	GFC
4440	David.	GFC
4441	A healthy dose of Vitamin Cock and Vitamin Dick.	GFC
4442	Questioning my sexuality.	GFC
4445	Tons of Damage.	GFC
15388	A Godzilla attack.	ANX1
15389	Eating KFC on Christmas day.	ANX1
15390	Hello Kitty! pregnancy doujins.	ANX1
15391	Waving it around all willy-nilly.	ANX1
15392	Hot anime moms.	ANX1
15393	Pissing yourself.	ANX1
15394	GAO! GAI! GAR!!!	ANX1
15395	Vocaloid death metal.	ANX1
15396	The Dark Lord Shawne Kleckner.	ANX1
15397	Yaoi paddles.	ANX1
15398	Bad Steven Foster dubs.	ANX1
15399	Mr. Satan.	ANX1
15400	An actual, honest-to-God black guy.	ANX1
15401	4,000 tacos, and one Diet Coke.	ANX1
15402	Sick with the cancer.	ANX1
15403	Black and white samurai movies.	ANX1
15404	A promotional crossover with Pizza Hut.	ANX1
15405	Transvestite police officers.	ANX1
15406	Con funk.	ANX1
15407	Star-shaped nipples.	ANX1
15408	A laser horse.	ANX1
15409	Girls with guns AND glasses.	ANX1
15410	Teenaged miniskirt-wearing space pirates.	ANX1
15411	Gas station sushi.	ANX1
4443	Deman making a racist pun.	GFC
4444	Phreak staring at you and never blinking.	GFC
4446	PENTAFAIL!	GFC
4447	I Can't Believe It's Not Butter.	GFC
4448	A Wanksock.	GFC
4449	An arsehole like a wellington top.	GFC
4450	Emma Watson dressed as a crab dancing to K-Pop.	GFC
4451	BORK.	GFC
4452	Handicapped people on Takeshi's Castle.	GFC
4453	The Chuckle Brothers at their mother's funeral.	GFC
4454	A 3am phone call.	GFC
4455	A cardboard cutout of Jennifer Lawrence.	GFC
4456	Robert Pattinson with Freddy Mercury's moustache and Gilbert.	GFC
4457	Gotfried's voice.	GFC
4458	Ezreal's hot sugary ass.	GFC
100220	A Canadian penny.	SG
100221	dho's penis.	SG
100222	Griffy's tits.	SG
4459	Kyubey.	AN
4460	Weeaboos.	AN
4461	Narutards.	AN
4462	Dead catgirls.	AN
4463	Aniplex of America.	AN
4464	Steve Motherfuckin' Blum.	AN
4465	Norio Wakamoto.	AN
4466	Tentacle rape.	AN
4467	Eating an entire box of Pocky in a single bite.	AN
4468	Lolis.	AN
4469	Hot-blooded shonen protagonists.	AN
4470	Crispin Freeman.	AN
4471	A fuck-mothering vampire.	AN
4472	A big-breasted 14-year-old wearing a bikini and sucking on a popsicle.	AN
4473	Henry Goto being savagely raped by a bear.	AN
4474	Yet another goddamn Goku vs. Superman argument.	AN
4475	FANSERVICE!!!	AN
4476	Gen Fukunaga counting his money.	AN
4477	FUNimation.	AN
4478	Hatsune Miku.	AN
4479	Strangling hardcore otaku nerds with razor wire.	AN
4480	Aya Hirano being gang-banged by her entire band.	AN
4481	Bukkake.	AN
4482	OVER 9000!!	AN
4483	Little Kuriboh.	AN
4484	Bulma's panties.	AN
4485	Mami getting her head bitten off.	AN
4486	A Captain Harlock body pillow.	AN
4487	Onii-chan.	AN
4488	MAWNING LESCUE!!!	AN
4489	Idiots who don't seem to realize that Avatar: The Last Airbender isn't really an anime.	AN
4490	Christopher R. Sabat.	AN
4491	PASTAAAAA!!!!	AN
4492	Johnny Yong Bosch.	AN
4493	Yu-Gi-Oh! The Abridged Series.	AN
4494	A fat middle-aged man in a Sailor Moon costume.	AN
4495	$300 anime bluray boxsets.	AN
4496	Man-Faye.	AN
4497	DAN GREEN.	AN
4498	"WE UNDERSTAND ANIME FAN WANTS!!"	AN
4499	Dio Brando.	AN
4500	Hokuto! Hyakurestu-ken!	AN
4501	Vic Micderpaderp.	AN
4502	Goku.	AN
4503	Soldier A.	AN
4504	Red-headed tsunderes.	AN
4505	That sound effect in every hentai when the guy ejaculates.	AN
4506	Sarah Fuckin' Palin.	AN
4507	Edward Wong Hau Pepelu Tivruski IV.	AN
4508	"Bang."	AN
4509	Prof's legs.	AN
4510	Naruto.	AN
4511	Wendee Lee.	AN
4512	Rice balls.	AN
4513	Monkey D. Luffy.	AN
4514	JesuOtaku's ginormous lips.	AN
4515	Princess Tutu.	AN
4516	Fujiko's boobs.	AN
4517	Vash the Stampede.	AN
4518	Shinji being a whiny little bitch.	AN
4519	Third Impact.	AN
4520	Kenshiro.	AN
4521	Puella Magi Madoka Magica.	AN
4522	Cowboy Bebop.	AN
4523	Fullmetal Alchemist.	AN
4524	Futanari.	AN
4525	Taking a potato chip... and EATING IT.	AN
4526	Unreasonably long transformation sequences.	AN
4527	Ass dance!! Ass dance!!	AN
4528	Stupid fucking Kululu.	AN
4529	CENTURY SOOOOUUUP!!!!!	AN
4530	The Gripper.	AN
4532	Garzey's Wing.	AN
4533	Reverse harems.	AN
4534	Mewtwo.	AN
4535	Tengen Toppa Gurren Lagann.	AN
4536	Sir Integra Fairbrook Wingates Hellsing.	AN
4537	Wearing panties on the head.	AN
4538	Brina Palencia as an angsty teenage boy, Monica Rial as his bratty little sister, and Shelley Calene-Black as their hot mom.	AN
4539	CARD GAMES ON MOTORCYCLES.	AN
4540	Nice boat.	AN
4541	Boku no Pico.	AN
4542	The One Piece rap.	AN
4543	A Bleach hentai doujin where Rukia rapes Ichigo.	AN
4544	Walpurgisnacht.	AN
4545	Bludgeoning Haruhi Suzumiya to death with a tire iron.	AN
4546	Girls with glasses.	AN
4547	Eating the wrong end of a chocolate cornet.	AN
4548	Being eaten by a titan.	AN
4549	Casca's hairy unshaven vag.	AN
4550	Tits on your hand.	AN
4551	That little fat kid from Accel World.	AN
4552	The Death Note.	AN
4553	A "read the manga" style ending.	AN
4554	Giant robots.	AN
4555	Osamu Tezuka.	AN
4556	Studio Ghibli.	AN
4557	Masa! <3	AN
4558	THE MAN-POLE OF <i>DOOOOOOOOOM!!!</i>	AN
4559	Ladd Russo.	AN
4560	Home For Infinite Losers (HFIL).	AN
4561	Moe Moe Kyun!	AN
4562	El Psy Congroo.	AN
4563	Sailor Moon and the 7 Ballz.	AN
4564	Gratuitous panty shots.	AN
4565	Sucking Kyle Hebert's dick for hamburgers.	AN
4566	Cartoon buttholes.	AN
4567	Muscle-bound shirtless MEN.	AN
4568	Recap episodes.	AN
4569	An overly defensive fanbase.	AN
4570	Fuckin' Bronies.	AN
4571	Groping strangers on a train.	AN
4572	My Cresta.	AN
4573	Nerdy kids in Speedos.	AN
4574	Bad K-on! fanart.	AN
4575	That stupid opening song from Steel Angel Kurumi getting stuck in your head.	AN
4576	Mamoru Miyano.	AN
4577	A Hello Kitty! vibrator.	AN
4578	TETSUOOOOOO!!!	AN
4579	Wibble.	AN
4580	Black cosplayers.	AN
4581	Fake Nendoroids.	AN
4582	Eating ramen noodles for a month because you HAD to have that out of print Macross boxset.	AN
4583	Showing Serial Experiments Lain to toddlers.	AN
4584	A mindfuck.	AN
4585	A puppy being beaten to death with a flower pot.	AN
4586	Gantz. Just.... Gantz.	AN
4587	Snapping the nipple off of a prostitute's breast and eating it.	AN
4589	Punching a man so hard his clothes fly off.	AN
4590	Banana sushi.	AN
4591	Oro?	AN
4592	Creamy Mami.	AN
4593	Whatever the hell the Utena movie was about.	AN
4594	Carl Macek.	AN
4595	The ungodly abomination that is Robotech.	AN
4596	Kira worshippers.	AN
4597	The thousands upon thousands of women that Golgo 13 has slept with.	AN
4598	Uguu...	AN
4599	Old man dragon dick.	AN
4600	Apocalypse Zero.	AN
4601	Ikki Tousen.	AN
4602	". . . ."	AN
4603	The inevitable beach episode.	AN
4604	A Japanese schoolgirl covered head-to-toe in semen.	AN
4605	Satoshi Kon.	AN
4606	Kigurumi.	AN
4588	Panty & Stocking with Garterbelt.	AN
4607	Good ol' fashioned Japanese sexism.	AN
4608	Guro.	AN
4609	Dr. Who fans showing up at anime cons despite not being invited.	AN
4610	Plot armor.	AN
4611	Nekomimi.	AN
4612	Pure grade-A opium.	AN
4613	Banging 1,000 dudes.	AN
4614	A drunken Japanese businessman.	AN
4615	Maid cafes.	AN
4616	Host clubs.	AN
4617	Shooting out nearly an entire liter of cum.	AN
4618	The Hare Hare Yukai dance.	AN
4619	Shining Finger!	AN
4620	The inkvasion.	AN
4621	School swimsuits.	AN
4622	Underpants. Underpants. Underpants. Underpants. Under-	AN
4623	Acidic breast milk.	AN
4624	Kamen Rider.	AN
4625	The Major's hips and bust.	AN
4626	Captain Bravo.	AN
4627	Kirino's ass.	AN
4628	Crystal Boy's creepy smile.	AN
4629	Gackt.	AN
4630	Used panty vending machines.	AN
4631	Butt sniffing.	AN
4632	Vegeta's sweet goatee.	AN
4633	Sub-only releases.	AN
4634	Getting drunk on sake.	AN
4635	Flying Vortex of Fear.	AN
4636	Fishcake.	AN
4637	Go Nagai sideburns.	AN
4638	<i>CHIIIIIIIIN.</i>	AN
4639	Getting the bad ending of a visual novel.	AN
4640	The Tsukihime anime.	AN
4641	Jacuzzi Splot.	AN
4642	Juvijuvibro.	AN
4644	Getting your penis cut in half.	AN
4645	Stupid sexy Johan.	AN
4646	Naoki Urasawa.	AN
4647	Tachikoma-kun.	AN
4648	Dancin' on the Planet Dance.	AN
4649	Super Milk-chan.	AN
4650	You dumbass!	AN
4651	Being the uke.	AN
4652	The power of friendship.	AN
4653	An arm and a leg.	AN
4654	The entire cast of School Days.	AN
4655	Giant naked Rei.	AN
4656	Masturbating over Asuka's comatose body.	AN
4657	Let's Fighting Love!	AN
4658	Cousin marriage.	AN
4659	4Kids.	AN
4660	Making someone's head explode.	AN
4662	Calling out the name of your attack.	AN
4663	Multi-episode fights.	AN
4664	M.D. Geist.	AN
4665	Blue Water Studios.	AN
4666	Darrel Guilbeau trying to act.	AN
4667	Highschool of the Dead.	AN
4668	Girls with guns.	AN
4669	The goddamn Maho.	AN
4670	Fat, sweaty otaku.	AN
4671	Ganguro girls.	AN
4672	Magical girls.	AN
4673	Hot female bass players.	AN
4674	Goku, Luffy, Toriko, and Lina Inverse in an eating contest.	AN
4675	BlackStar	AN
4677	You cactus bastard!	AN
4678	Underwater Ray Romano.	AN
4679	Sexy schoolteacher types.	AN
4680	Tig ol' bitties.	AN
4681	Lesbian subtext.	AN
4682	Watching FLCL while tripping on acid.	AN
4683	Inspector Zenigata.	AN
4684	Pure fighting spirit.	AN
4685	The GARtender.	AN
4686	Mad Bull 34.	AN
4687	Sticking your finger up her ass.	AN
4688	Freddie riding to school on a wild black stallion.	AN
4689	Whatever turns you on, big guy.	AN
4690	Standing outside the gates of the White House completely naked with a revolver in your hand.	AN
4691	I'LL ANSWER THE PHONE FROM NOW ON, LILY!!	AN
4692	KITTEH. :3	AN
4693	Manly tears of manliness.	AN
4694	Zetman.	AN
4695	Giant mutant cockroaches.	AN
4696	Bible Black.	AN
4697	Rape fantasies.	AN
4698	Keith David's voice.	AN
4699	Scott McNeil.	AN
4700	The eternal pervert, Eric Vale.	AN
4701	The Irresponsible Captain Tylor.	AN
4702	Birdy the Mighty.	AN
4703	Prying SpacemanHardy's Master Keaton boxset from his cold, dead hands.	AN
4704	Satan worshipping Christians.	AN
4705	Hunting down every single copy of Ninja Resurrection and setting them on fire.	AN
4706	R-R-R-R-R-REDLINE!!!	AN
4707	Catholic priests who drink, smoke, and carry guns.	AN
4708	Badass 15-year-olds.	AN
4709	Losing 20 gallons of blood... and surviving.	AN
4710	One HELL of a butler.	AN
4711	Being beaten to a bloody pulp by a middle school student.	AN
4712	Anime News Network.	AN
4713	Having blackmail sex with your teacher.	AN
4714	A large paper fan.	AN
4715	The Shikon Jewel.	AN
4717	Sneaking a peek at the girls' open bath.	AN
4718	Revy Two-Hands.	AN
4719	A Claymore swimsuit issue.	AN
4720	A samurai terminator.	AN
4721	Physics.	AN
4722	Gangnam Style.	AN
4724	A talking motorcycle.	AN
4725	Rie Kugimiya.	AN
4726	The Animatrix.	AN
4727	Your virgin soul.	AN
4728	Franky's awesome Speedo dance.	AN
4729	Soul traveling.	AN
4730	Production I.G.	AN
4731	GONZO.	AN
4732	Really shitty CGI effects.	AN
4733	The hot buttered sex voice of Patrick Seitz.	AN
4661	Michelle Ru-\ner, I mean... "Sophie Roberts."	AN
4676	KING!!! KING!!! KING GAINER!!!\n<i>*does the Monkey*</i>	AN
4716	"INUYASHA!!"\n"KAGOME!!"	AN
4723	MUNGLE!!\n<i>*shakes fist*</i>	AN
4734	Sticking a chopstick in your pee-hole.	AN
4735	A copy of Trigun signed by Micah Solusod.	AN
4736	Gilgamesh.	AN
4737	That one guy who always dresses up as the Red Ranger.	AN
4738	Engrish.	AN
4739	A dead meme.	AN
4740	Madhouse.	AN
4741	ARMS.	AN
4742	Mr. Tadakichi.	AN
4743	Showing episodes of Toriko to starving children.	AN
4744	Governor Ishihara.	AN
4745	Shrine maidens.	AN
4746	Taking a shit in the shrine's donation box.	AN
4747	Farting... tadpoles?	AN
4748	Heavily-tattooed yakuza henchmen.	AN
4749	The life-sized Gundam statue.	AN
4750	Forcing someone to watch every episode of Dragon Ball GT.	AN
4751	ZA WARUDO.	AN
4752	Eating a banana all sexy-like.	AN
4753	Awesome Prussia.	AN
4754	Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora! Ora!	AN
4755	A shitload of yen.	AN
4756	Johannes Krauser II.	AN
4757	Raccoon testicles.	AN
4758	Beautiful bishonen boys.	AN
4759	Rule 63'd Death the Kid.	AN
4760	Hetalia porn.	AN
4761	1,000 years of pain.	AN
4762	Rally Vincent firing a gun in her underwear.	AN
4763	A Maka Chop.	AN
4764	Twincest.	AN
4765	Broken-ass Aizen.	AN
4766	The Garden of Sinners.	AN
4767	Romi Paku.	AN
4768	My Johnny!	AN
4769	Petite Princess Yucie.	AN
4771	Me wearing a penguin suit.	AN
4772	Farting on your cat.	AN
4773	Combat afros.	AN
4774	A brand new, mint condition copy of JoJo's Bizarre Adventure vol. 4, still in shrinkwrap.	AN
4775	Grave of the Fireflies.	AN
4776	Strapping hand grenades to your pubes.	AN
4777	Toilet worship.	AN
4778	My badass numchucks.	AN
4779	Trying to get your die-cast Gundam model through airport security.	AN
4781	Octopus balls.	AN
4782	Getting in a fistfight with an earthquake.	AN
4783	WcDonald's.	AN
4784	Undead body-swapping space vampire teens.	AN
4785	The alpha bitch.	AN
4786	Eating someone else's drool.	AN
4787	My hot zombie girlfriend..	AN
4788	Puppets made from the skin of children.	AN
4789	Swallowing an entire carton of cigarettes before barfing them back up.	AN
4790	Giving a girl an orgasm using only your shoulderpads.	AN
4791	Being accidentally turned into a girl by aliens.	AN
4792	Ghosts that come out of your asscrack.	AN
4793	#DesuDes4Life.	AN
4794	Fucking a nun.	AN
4795	Raping Tokyo Tower.	AN
4796	A succubus living inside your testes.	AN
4797	Saber Starblast.	AN
4799	Kotetsu T. Kaburagi, aka. "The D.I.L.F."	AN
4800	Japanese Spider-Man.	AN
4801	A bass guitar straight to the face.	AN
4802	Sonny Strait's manly parts.	AN
4803	Asian cock.	AN
4804	Guts.	AN
4805	Holy dildos.	AN
4806	Finger nigiri.	AN
4807	Dragon Balls.	AN
4808	Drills for hands.	AN
4809	Suplexing your teacher.	AN
4810	A leopard print fundoshi.	AN
4811	Breast envy.	AN
4812	The entire last episode of Blood-C.	AN
4813	Origami sex toys.	AN
4814	ALL OF THE HOMO!	AN
4815	Japanese rope bondage.	AN
4816	Griffith's mysterious disappearing penis.	AN
4817	Naughty geishas.	AN
4818	Ninjas!	AN
4819	Pubic hair needle attack.	AN
4820	Sexy jutsu.	AN
4821	Getting your fingernails ripped out.	AN
4822	Shinichiro Watanabe single-handedly curing cancer, ending world hunger, and bringing peace to the Middle East.	AN
4823	Love Machine.	AN
4824	Rapping samurai.	AN
4825	Putting all the condiments on your steak. ALL OF THEM.	AN
4826	Naga's extremely annoying laugh.	AN
4827	A dolphin in a mech suit.	AN
4828	Flying Nimbus.	AN
4829	Strikeman and his "Balls of Justice".	AN
4830	A busty, blonde, blue-eyed, dumb-as-rocks American.	AN
4831	Running during the credits.	AN
4832	Red bean paste.	AN
4833	Gender-swapped Oda Nobunaga.	AN
4834	Cutting off a finger to restore your honor.	AN
4835	Robots with tits.	AN
4836	Henry Goto.	AN:HG
4837	Henry Goto having an accident in his pants during the live Aniplex of America panel.	AN:HG
4839	Henry Goto, John Sirabella, and Stu Levy in a three man fight to the death.	AN:HG
4840	Henry Goto fapping to a photograph of himself.	AN:HG
4841	Henry Goto being eaten by a group of backwoods hillbilly cannibals.	AN:HG
4842	Henry Goto ending up homeless on the streets and sucking dick for coke.	AN:HG
4843	Two gallons of elephant shit being dropped on Henry Goto's desk.	AN:HG
4844	Henry Goto falling down the stairs, receiving a massive head injury, and believing he's really Sailor Moon.	AN:HG
4845	A Henry Goto joke that no one will laugh at other than SpacemanHardy.	AN:HG
4846	Henry Goto bleeding profusely from his groin after having his penis bitten off by a 15-year-old Vietnamese prostitute.	AN:HG
4780	Black★Star	AN
4838	Henry Goto's massive peyote & wine cooler addiction.	AN:HG
4770	Ice cold water\n(and it's only a dollar).	AN
4847	A 30-year-old man who's obsessed with K-on!	AN
4848	LAZAR!	AN
4849	I AM AWESOME!!	AN
4850	Getting kicked in the nuts by a mermaid.	AN
4851	Taking a seat with Chris Hansen.	MrMan
4852	The Village People.	MrMan
4853	A Cleveland steamer.	MrMan
4854	A big floppy donkey dick.	MrMan
4855	Pooping in the bathtub.	MrMan
4856	Bathing the homeless.	MrMan
4857	An awkward sponge bath.	MrMan
4858	Toilet paper.	MrMan
4859	Getting off on anime porn.	MrMan
4860	Enemas.	MrMan
4861	The Teenage Mutant Ninja Turtles.	MrMan
4862	Mining for nose gold.	MrMan
4863	Laxatives.	MrMan
4864	Putting the fucking lotion in the basket.	MrMan
4865	The tears of a clown.	MrMan
4866	Gangrene.	MrMan
4867	Gingivitis.	MrMan
4868	Two dogs humping.	MrMan
4869	Genital warts.	MrMan
4870	Suppositories.	MrMan
4871	Face painting.	MrMan
4872	A prolapse.	MrMan
4873	Digital piracy.	MrMan
4874	A poop sandwich.	MrMan
4875	Executive parking.	MrMan
4876	A dead hooker.	MrMan
4877	A skeptical sheriff.	MrMan
4878	A chatroom predator.	MrMan
4879	A loud mouth-breather.	MrMan
4880	The crushed dreams of a stripper.	MrMan
4881	Anorexia.	MrMan
4882	Gobots.	MrMan
4883	A Motown group.	MrMan
4884	a classy smoking jacket.	MrMan
4885	Giant areolas.	MrMan
4886	Peanutbutter jelly time.	MrMan
4887	A sexy senior citizen.	MrMan
4888	Granny panties.	MrMan
4889	A stuttering auctioneer.	MrMan
4890	Farting into a fancy handkerchief.	MrMan
4891	Lot lizards.	MrMan
4892	A LARPing sleeper cell.	MrMan
4894	A molotov cocktail.	MrMan
4895	A cockblocker.	MrMan
4896	Public schooling.	MrMan
4897	The end of the world.	MrMan
4898	Dickjitsu.	MrMan
4899	A mushy tushy.	MrMan
4900	Don Knotts.	MrMan
4901	Morbid obesity.	MrMan
4902	Geriatric diaper rash.	MrMan
4903	A MILF.	MrMan
4904	Bigfoot.	MrMan
4905	Yellow snow.	MrMan
4906	A limp wrist.	MrMan
4907	An angry leprechaun.	MrMan
4908	The Tin Man.	MrMan
4909	Giving yourself a stranger.	MrMan
4910	Shitting into someone's hat for revenge.	MrMan
4911	Learning hypnosis to get laid.	MrMan
4912	The War of Northern Aggression.	MrMan
4913	A snot rocket.	MrMan
4914	Miss. Piggy.	MrMan
4915	Sailor Moon.	MrMan
4916	Mass graves.	MrMan
4917	A victim.	MrMan
4918	Soiling ones self.	MrMan
4919	A clone army.	MrMan
4920	Raw sewage.	MrMan
4921	War crimes.	MrMan
4922	A collapsed lung.	MrMan
4923	The town drunk.	MrMan
4924	The face of pure evil.	MrMan
4925	Spontaneous pie fights.	MrMan
4926	The Fresh Prince of Bel-Air.	MrMan
4927	Being screamed at in German.	MrMan
4928	A lesson in pain.	MrMan
4929	Talking like a pirate.	MrMan
4930	A Facebook stalker.	MrMan
4931	Sausage.	MrMan
4932	A compound fracture.	MrMan
4933	The magical land of Oz.	MrMan
4935	Cheating death.	MrMan
4936	Clown Shoes.	MrMan
4937	Clown college.	MrMan
4938	A lousy comb-over.	MrMan
4939	Chaz Bono.	MrMan
4940	Hoarders.	MrMan
4941	Bed wetting.	MrMan
4942	Nuns.	MrMan
4943	A closed casket funeral.	MrMan
4944	Scotch.	MrMan
4945	A really ugly baby.	MrMan
4947	Realizing, too late, that there is no toilet paper left.	MrMan
4948	Illegal immigrants.	MrMan
4949	Elder abuse.	MrMan
15412	Jerry Jewell's serial killer face.	ANX1
15413	A FUCKING DRAGONITE, MOTHERFUCKER!!	ANX1
15414	A school bus orgy.	ANX1
15415	Super Aryan Hitler.	ANX1
15416	Having sex with a dragon.	ANX1
15417	Manga Jesus.	ANX1
15418	Manly pink sparkles.	ANX1
15419	7 ft. tall red-headed Alexander the Great.	ANX1
15420	Training a dinosaur to ride a ball.	ANX1
15421	Samba-dancing dinosaurs.	ANX1
15422	An armored truck full of shit.	ANX1
15423	A Togepi omelet.	ANX1
15424	The Puchuu.	ANX1
15425	Dying over and over again.	ANX1
15426	Fuckingham Palace.	ANX1
15427	Epic old bald dudes.	ANX1
15428	A smashed-in face.	ANX1
15429	A Dragon Slave.	ANX1
15430	Zelgadis' flame-proof bikini briefs.	ANX1
15431	Morphin'.	ANX1
15432	A naughty nurse outfit.	ANX1
15433	A sweaty shirtless man holding a large, writhing fish against his chest.	ANX1
15434	Millionaire Beaver.	ANX1
15435	Dick Saucer.	ANX1
15436	A couple that spends over 30 manga volumes trying to get to first base.	ANX1
15437	Alice in Sexland.	ANX1
15438	Succubus-on-futanari action.	ANX1
15439	High-stakes mahjong.	ANX1
4934	Pow-Pow-PowerWheeels®!	MrMan
15440	Garbage collectors... IN SPACE!!	ANX1
15441	Magical friendship lasers.	ANX1
15442	The War on Pants.	ANX1
15443	An ending where everyone dies.	ANX1
15444	A cyborg assassin dressed as a magical girl fighting a talking lion and a floating psychic electric jellyfish.	ANX1
15445	J-pop idols.	ANX1
15446	Chest-hair afros.	ANX1
15447	Cowboy Andy.	ANX1
15448	A chainsaw-wielding male magical girl zombie.	ANX1
15449	Inoue Kikoku, 17-years old.	ANX1
15450	Fujoshi.	ANX1
15451	Matrix boobs.	ANX1
15452	Completely losing your shit over Endless Eight.	ANX1
15453	Violently beating your friends to death with a baseball bat.	ANX1
15454	Clothing-dissolving slime.	ANX1
15455	Involuntary crossdressing.	ANX1
15456	Getting sucked into a fantasy world.	ANX1
15457	Hentai artists who don't change their pen name when they go legit.	ANX1
15458	A Masamune Shirou artbook.	ANX1
15459	Loli in a box.	ANX1
15460	Romance of the Three Kingdoms, but everyone is gender-swapped.	ANX1
15462	Franken Fran.	ANX1
15463	A washpan falling onto someone's head from out of nowhere.	ANX1
15464	SHAFT being SHAFT.	ANX1
15465	A third-grader seducing her 23-year-old teacher.	ANX1
15466	Shotas.	ANX1
15467	One a them bamboo things that goes "doonk".	ANX1
15468	Banging your adopted daughter.	ANX1
15469	Tripping, falling, and landing with your face in a girl's breasts.	ANX1
15470	A bunny girl having a lightsaber duel with Darth Vader.	ANX1
15471	A 10-year old with boobs twice the size of her head.	ANX1
15472	An ancient vampire who looks like she's 10.	ANX1
15473	Literally ripping your own heart out.	ANX1
15474	Japanese-style elf ears.	ANX1
15475	Flamboyantly gay William Shakespeare.	ANX1
15476	Gen "The Uro-Butcher".	ANX1
15477	Mikuru Beam!	ANX1
15478	Tons and tons of close-up underaged schoolgirl ass-shots.	ANX1
15479	Starfish Hitler.	ANX1
15482	Chopstick-based martial arts.	ANX1
15483	All the gayness in GetBackers.	ANX1
15484	Naming yourself after the method of your suicide.	ANX1
15485	The Chupacabra.	ANX1
15486	Blowing a child's head off with a rocket launcher.	ANX1
15487	Erotic incestuous toothbrushing.	ANX1
15488	An artbox that feels like human skin.	ANX1
15489	Polygamy jokes in a kid's show.	ANX1
15490	Urd, Kana, and Misato in a drinking contest.	ANX1
15491	Cute stuff.	ANX1
15492	A robot having an orgasm.	ANX1
15493	Villagulio.	ANX1
15495	Having a giant drill for a dick.	ANX1
15522	An ingrown toenail on the tip of a penis.	AI
15523	Feline Leukemia.	AI
15524	Marky Mark's foam rubber penis from Boogie Nights.	AI
15525	My Spankerchief.	AI
15526	Pumping a chemical toilet.	AI
15527	The fine line between kinky and perverted.	AI
15528	A Rotisserie Chicken.	AI
15529	Vultures circling a birthday party.	AI
15530	An All White Jury.	AI
15531	Frottage.	AI
15532	Michael J. Fox trying to use a rotary phone.	AI
15533	The Five Knuckle Truffle Punch.	AI
15534	Flipper Babies.	AI
15535	Ejaculating into an insulin pump.	AI
15536	Rocky Dennis and John Merrick's lovechild.	AI
15537	The syrupy goop inside a Stretch Armstrong doll.	AI
15538	Finding an adhesive bandage at the bottom of your ice cream.	AI
15539	Life after Parole.	AI
15540	A cat's sand papery tongue bath.	AI
15541	A Pit Bull named Genghis.	AI
10108	Discovering that it's never just a big vagina.	Furry
10109	Dragoneer.	Furry
10110	A horny dragon.	Furry
10111	A sexually frustrated griffon.	Furry
10112	Species stereotypes.	Furry
10113	HELLO FURRIEND, HOWL ARE YOU DOING.	Furry
10114	Convention sluts.	Furry
10115	Horns and hooves.	Furry
10116	Being "prison gay."	Furry
10117	Microwaving diapers.	Furry
10118	Adorable dog people.	Furry
10119	Sexy the Cat.	Furry
10120	That one episode of CSI.	Furry
10121	SecondLife.	Furry
10122	The Gay Yiffy Club.	Furry
10123	Hyper-endowed squirrels.	Furry
10124	A spider furry who isn't even into bondage.	Furry
10125	Being really, really into monsters.	Furry
10126	Sexual arousal from children's cartoons.	Furry
10127	No males, no herms, no cuntboys, no shemales, no trannys, no furries, no aliens, no vampires, and no werewolves. ONLY STRAIGHT OR BI HUMAN FEMALES.	Furry
10128	Overcompensating with a huge horse penis.	Furry
10129	A fedora enthusiast.	Furry
10130	A tongue-beast.	Furry
10131	Frisky tentacles.	Furry
10132	A very steampunk rat.	Furry
10133	Canine superiority.	Furry
10134	Oviposition.	Furry
10135	Flares.	Furry
10136	Dogs wearing panties.	Furry
10137	Monster boys in lingerie.	Furry
10138	Power bottoms.	Furry
10139	Sheath licking.	Furry
10141	Making out with dogs.	Furry
10142	YouTube videos of horse breeding.	Furry
10143	Pissing on your significant other to show ownership.	Furry
1331	Da Magicks.	CAE
15480	Pokémon tears.	ANX1
15481	Pokésexuality.	ANX1
15494	Dangling Pokéballs.	ANX1
10140	Sex with Pokémon.	Furry
10144	Being able to recognize your friends by the scent of their asses.	Furry
10145	A notebook full of embarrassing niche porn sketches.	Furry
10146	Cockvore.	Furry
10147	A prehensile penis.	Furry
10148	Puns involving the word "knot."	Furry
10149	Jerking off on an unconscious friend's feet.	Furry
10150	CrusaderCat.	Furry
10151	Your Character Here.	Furry
15542	Sphincter Bleaching.	AI
15543	Bringing the Hamburglar to Justice.	AI
15544	Toilet Wine.	AI
15545	An Amputee's chapped limb nub.	AI
15546	Febreezing your Taint.	AI
15547	Leftist Propaganda.	AI
15548	Cookie Monster's substance abuse issues.	AI
100241	An outbreak of smallbox.	BOX
100242	The Boxcar Children.	BOX
100243	A world without boxes.	BOX
100244	Boxing up my feelings.	BOX
100247	Something that looks like a box but turns out to be a crate.	BOX
100250	The J15 Patriot Assault Box.	BOX
100251	A box without hinges, key, or lid, yet golden treasure inside is hid.	BOX
100255	Former President George W. Box.	BOX
100256	Pandora's vagina.	BOX
100263	Offering sexual favors for an ore and a sheep. (19/44)	PAX
100265	Winning the approval of Cooking Mama that you never got from actual mama. (32/44)	PAX
1259	A daisy sandwich.	CAE
100237	A box.	BOX
100238	A box within a box.	BOX
100239	A boxing match with a giant box.	BOX
100248	A box that is conscious and wishes it weren't a box.	BOX
100258	Reading the comments. (3/44)	PAX
1261	A decorative toaster cozy.	CAE
1263	A giant horse cock.	CAE
1266	A hoof in the ass.	CAE
1269	A horny stallion.	CAE
1271	A human fetish.	CAE
1272	A juice box fetish.	CAE
1274	A juice box.	CAE
1276	A mare in heat.	CAE
1278	A racially pure Cloudsdale.	CAE
1280	A sexy saddle.	CAE
1282	A sock fetish.	CAE
1284	A Sonic Raingasm.	CAE
1286	A tactical sonic rainnuke.	CAE
1288	A tree.	CAE
1290	Actually cumming inside Rainbow Dash.	CAE
1293	An epic pony war in the distant future.	CAE
1294	An extremely horny Granny Smith.	CAE
1296	Another doughnut! With extra sprinkles!	CAE
1298	Applebucking.	CAE
1299	Applejack.	CAE
1300	Avasting Fluttershy's Ass.	CAE
1302	Baked Bads.	CAE
1304	Banned From Equestria (Daily).	CAE
1307	Being trapped on the Moon for 1000 years.	CAE
1308	Best Pony.	CAE
1310	Big Macintosh.	CAE
1312	BonBon.	CAE
1314	Books.	CAE
1316	Celestia's Hoof.	CAE
1318	Celestia's massive harem of foals.	CAE
1320	Cider.	CAE
1322	Clopfics.	CAE
1324	Clopping.	CAE
1326	Crippled foals.	CAE
1328	Cupcakes.	CAE
100270	Reading the comments.	13PAX
100276	Being an attractive elf trapped in an unattractive human's body.	13PAX
100277	Temporary invincibility.	13PAX
100281	Mario Kart rage.	13PAX
100287	A homemade, cum-stained Star Trek uniform.	13PAX
100290	Never watching, discussing, or thinking about My Little Pony.	13PAX
100291	Turn-of-the-century sky racists.	13PAX
100293	A fully-dressed female videogame character.	13PAX
100294	Buying virtual clothes for a Sim family instead of real clothes for a real family.	13PAX
100295	Google Glass + e-cigarette: Ultimate Combo!	13PAX
100268	Full HD.	13PAX
100272	Allowing nacho cheese to curdle in your beard while you creep in League of Legends.	13PAX
100278	The Sarlacc.	13PAX
100282	Nude-modding Super Mario World.	13PAX
100283	An angry stone head that stomps on the floor every three seconds.	13PAX
100284	Yoshi's huge egg-laying cloaca.	13PAX
100285	The Cock Ring of Alacrity.	13PAX
100286	Offering sexual favors for an ore and a sheep.	13PAX
100288	Unlocking a new sex position.	13PAX
100289	The boner hatch in the Iron Man suit.	13PAX
100292	The decade of legal inquests following a single hour of Grand Theft Auto.	13PAX
100297	Winning the approval of Cooking Mama that you never got from actual mama.	13PAX
100305	Tapping Sara Angel.	13PAX
100306	Charles Barkley Shut Up and Jam!	13PAX
100307	Getting into a situation with an owlbear.	13PAX
100308	Grand Theft Auto: Fort Lauderdale.	13PAX
100309	A madman who lives in a policebox and kidnaps women.	13PAX
100310	SNES cartridge cleaning fluid.	13PAX
100311	Eating a pizza that's lying on the street to gain health.	13PAX
1332	Daring Do fanfiction.	CAE
1333	Dark Magicks.	CAE
1334	Derpy Hooves.	CAE
1335	Diamond Dog roleplay.	CAE
1336	Discord.	CAE
1337	Equestria.	CAE
1338	Facehoofing.	CAE
1339	Fillidelphia.	CAE
1340	Filly fiddling.	CAE
1341	Fluffy Pony.	CAE
1342	Fluttershy.	CAE
1343	Fluttershy's secret stash.	CAE
1344	Fluttershy's Shed.	CAE
1346	Fluttertree.	CAE
1348	Foal abuse.	CAE
1349	Foodmanes.	CAE
1351	Friendship.	CAE
1357	Futaloo.	CAE
1358	Gabby Gums.	CAE
1360	Gently stroking the horn.	CAE
1362	Getting 20% cooler!	CAE
1364	Gypsies.	CAE
1367	Having hot pony sex with Bloomberg.	CAE
1368	Horn Necrosis.	CAE
1379	Hugging a pony non-sexually.	CAE
1380	Jappleack.	CAE
1381	Joe's Donut Hole.	CAE
1382	John Joseco.	CAE
1383	Lesbians.	CAE
1384	Zecora's meth lab.	CAE
1385	Lyra Heartstrings.	CAE
1386	Worst pony.	CAE
1387	Magic.	CAE
1388	Wolfieshy.	CAE
1389	Winter Wrap Up.	CAE
1390	Making Magic.	CAE
1391	Wincest.	CAE
1392	Whipping the Earth Pony slaves.	CAE
1393	Vinyl Scratch / DJ Pon-3.	CAE
1394	Unicorn Privilege.	CAE
1395	Man Spike.	CAE
1396	Two fillies shitting into a bucket.	CAE
1397	Manehatten.	CAE
1398	Twist.	CAE
1399	Mare Supremacy.	CAE
1400	Twilight's secret clop stash.	CAE
1401	Molestia's sex dungeon.	CAE
1402	Twilight Sparkle.	CAE
1403	THE ROYAL CANTERLOT VOICE.	CAE
1404	My OC.	CAE
1405	The Rainbow Factory.	CAE
1406	Nightmare Moon.	CAE
1407	The Pegasus Master Race.	CAE
14817	____.	TGWTG
14818	*liveshot*.	TGWTG
14819	8-Bit Mickey on an unstoppable merry-go-round.	TGWTG
14820	80's Dan.	TGWTG
14821	A Blip ad for the most embarrassing reality show ever.	TGWTG
14822	A Brad Jones impersonation.	TGWTG
14823	A crossover.	TGWTG
14824	A Cybermat in a bow tie.	TGWTG
14825	A delicious fried chicken holocaust.	TGWTG
14826	A DMCA takedown notice.	TGWTG
14827	A fan artist.	TGWTG
14828	A FUCKING PONCHO!	TGWTG
14829	A giant go-fuck-yourself spider.	TGWTG
14830	A half naked, fencing JewWario.	TGWTG
14831	A hand-basket of lobsters.	TGWTG
14832	A Mr. T Trading Card.	TGWTG
14833	A pile of skulls.	TGWTG
14834	A pink tutu.	TGWTG
14835	A plushie TARDIS.	TGWTG
14836	A poorly made knockoff action figure.	TGWTG
14837	A REALLY big hoopla about nothing.	TGWTG
14838	A Serbian Film.	TGWTG
14839	A smoking, muscled ice cream cone shooting guns and eye lasers.	TGWTG
14840	A speeding NERF dart to the junk.	TGWTG
14841	A squadron of attack Corgis.	TGWTG
14842	A squadron of line-dancing hippos.	TGWTG
14843	A strip-tease from the Nostalgia Critic.	TGWTG
14844	A tauntaun puppy.	TGWTG
14845	A very serious hat.	TGWTG
14846	Ambiguously nude Linkara.	TGWTG
14847	An electronic cigarette that resembles a Sonic Screwdriver.	TGWTG
14848	An evangelizing minion.	TGWTG
14849	An existential crisis over internet reviews.	TGWTG
14850	An impassioned plea for understanding.	TGWTG
14851	An unhinged Oancitizen rolling towards the sea.	TGWTG
14852	Angry Joe dancing in a squid suit.	TGWTG
14853	Angry Joe's raging boner.	TGWTG
14854	Another fucking Iron Liz pun.	TGWTG
14855	Another goddamn PhilBuni Vine.	TGWTG
14856	Aplos, or Steve, the Wizard.	TGWTG
14857	Arlo P. Arlo.	TGWTG
14858	Arlo the Orc.	TGWTG
14859	Ashens taking a blowtorch to a crappy toy.	TGWTG
14860	Ashens.	TGWTG
14861	Because...hippos.	TGWTG
14862	Becoming possessed and insulting your colleague.	TGWTG
14863	Being awkward around your favorite reviewer.	TGWTG
14864	Bennett the Sage.	TGWTG
14865	Big Butter Jesus.	TGWTG
14866	Blip.	TGWTG
14867	Brad, drinking a Turkey-flavored Jones Soda.	TGWTG
14868	Bruno Matei.	TGWTG
14869	Butchered Dutch.	TGWTG
14870	Comicron One.	TGWTG
14871	CR.	TGWTG
14872	Cynthia Rothrock	TGWTG
14873	DEATH FROM ABOOOOOVE!!!	TGWTG
14874	Derek the Bard.	TGWTG
14875	Derek the Bard's hat.	TGWTG
14876	Disturbing comments in the RDA chat.	TGWTG
14877	Dodger's ban chain.	TGWTG
14878	Dodging blowjobs.	TGWTG
14879	Dr. Tease & Dr. Block.	TGWTG
14880	Dragging Oancitizen back home from a wild night of partying.	TGWTG
14881	Dump cards.	TGWTG
14882	E Rod's smooth, smooth dance skills.	TGWTG
14883	Eating the flesh of your foes while howling at the moon.	TGWTG
14884	Evilina.	TGWTG
14885	Evilina's monstrous visage.	TGWTG
14886	Film Brain, dressed tastefully in fashionable clothing.	TGWTG
14887	Film Brain's hair.	TGWTG
14888	Film Renegado creaming himself over Pacific Rim.	TGWTG
14889	Forcing an NPC to haul your crap.	TGWTG
14890	Fuckstick the Magic Dragon.	TGWTG
14891	Gargoyle Cat.	TGWTG
14892	Haganistan.	TGWTG
14893	Harmony Korine.	TGWTG
14894	HIPPOS!	TGWTG
14895	Holly.	TGWTG
14896	Il Neige in a freakishly accurate Film Brain costume.	TGWTG
14897	Jaeris, the Gunslinger.	TGWTG
14898	Joe Quesada.	TGWTG
14899	Kali.	TGWTG
14900	Kung Tai Ted.	TGWTG
14901	Kyle playing GTA while drunk.	TGWTG
14902	Kyle's "unicorns."	TGWTG
14903	Laura, the Fender Stratocaster Goddess.	TGWTG
14904	Linkara lying naked on his futon, playing with a Cybermat.	TGWTG
14905	Linkara, dressed as the Green Ranger.	TGWTG
14906	Linkara, dropping an F-Bomb.	TGWTG
14907	Linkara, sexily eating a salad.	TGWTG
14908	Linkara's massive ego.	TGWTG
14909	Little Pluckies Ninja Protects.	TGWTG
14910	Luke Mochrie's trust fund.	TGWTG
14911	Maven of ze Eventide.	TGWTG
14912	Mexican Spider-Man.	TGWTG
14913	MikeJ.	TGWTG
14914	Moarte.	TGWTG
14915	Nash, dressed as The Undertaker.	TGWTG
14916	Nash, making "vroom vroom" noises.	TGWTG
14917	Nash, making train sounds in a bathtub.	TGWTG
14918	Nella.	TGWTG
14919	Nella's cleavage Altoids.	TGWTG
14920	Not reading the FAQ.	TGWTG
14921	Obelisk Blue Linkara.	TGWTG
14922	Paw.	TGWTG
14923	Paw's soul patch.	TGWTG
14924	Penis whiskers.	TGWTG
10509	the 8 million jews.	Vidya
10510	George Costanza	Viyda
10511	Honk! Honk!	Vidya
10512	Hideo Kojima	Vidya
10513	Alright	Vidya
10514	LIQUID!	Vidya
10515	BROTHER!	Vidya
10516	Gaben	Vidya
10517	Kirby's Air Ride	Vidya
10518	Yume Nikki	Vidya
10519	HL3 confirmed!	Vidya
10520	That feel	Vidya
10521	Tim Buckley	Vidya
10522	Bum Tickley	Vidya
10523	Star Wars: Battlefront	Vidya
10524	The Wii U	Vidya
10525	the PS4	Vidya
10526	the NES	Vidya
10527	the SNES	Vidya
10528	the SEGA Genesis	Vidya
10529	the PSX	Vidya
10530	Silent Hill	Vidya
10531	Harry Mason	Vidya
10532	James Sunderland	Vidya
10533	the plot of MGS4	Vidya
10534	Kramer	Vidya
10535	no games	Vidya
10536	Words, Words, Words	Vidya
10537	Le /v/ culture	Vidya
10538	Mods	Vidya
10539	Furfags	Vidya
10540	HERESY!	Vidya
10541	My waifu	Vidya
10542	Jews	Vidya
10543	the duck hunt dog	Vidya
10544	Max Payne	Vidya
10545	L.A. Noire	Vidya
10546	Call of Duty 4	Vidya
10547	Cowadooty Franchise	Vidya
10548	Master Chef	Vidya
10549	Samus Aran	Vidya
10550	Kamiya	Vidya
10551	The red ring of death	Vidya
10552	Toady	Vidya
10553	the mustard race	Vidya
10554	Klonies	Vidya
10555	Valve	Vidya
10556	source engine	Vidya
10557	Wii-tier graphics	Vidya
10558	brown and bloom	Vidya
10559	FUCKING GAMESTOP	Vidya
10560	Mountain Dew	Vidya
10561	Doritoes	Vidya
10562	Dante, but you an call him Dante the demon killer	Vidya
10563	FUCK YOU	Vidya
10564	Princess Peach	Vidya
10565	Ronnie	Vidya
10566	Wreck-It Ralph	Vidya
10567	Destroy-It Dan	Vidya
10568	Rape-It Randy	Vidya
10569	Bayonetta	Vidya
10570	Fifa 2014	Vidya
10571	Superman 64	Vidya
10572	E.T. for Atari	Vidya
10573	Dark Souls	Vidya
10574	Devil May Cry	Vidya
10575	Wubs	Vidya
10576	a custom built PC	Vidya
10577	making an email to gabe newell one post at a time	Vidya
10578	Warioware	Vidya
10579	Earthbound	Vidya
10580	Pikmen	Vidya
10581	Duck Hunt	Vidya
10582	Egoraptor	Vidya
10583	Cory in the House	Vidya
10584	Katawa Shoujio	Vidya
10585	Donte	Vidya
10586	/sp/	Vidya
10587	/pol/	Vidya
10588	/a/	Vidya
10589	Traps	Vidya
10590	Capitan Falcon	Vidya
10591	knowing that feel	Vidya
10592	my sides	Vidya
10593	wagglan	Vidya
10594	playing vidya	Vidya
10595	being a casual fuck	Vidya
10596	JonTron	Vidya
10597	Two Best Friends	Vidya
10598	Tropes vs Women in Video Games	Vidya
10599	Anita	Vidya
10600	Wiimote	Vidya
10601	Xbox Hueg	Vidya
10602	Japan Time	Vidya
10603	the orignal Xbox controller	Vidya
10604	Solid Snake's Ass	Vidya
10605	Big Boss	Vidya
10606	Kirby	Vidya
10607	Waluigi	Vidya
10608	Geno	Vidya
10609	Ridley	Vidya
10610	GLaDOS	Vidya
10611	Shigeru Miyamoto	Vidya
10612	Mother 3	Vidya
10613	Shigesato Itoi	Vidya
10614	Alexey Pajinov	Vidya
10615	Sam & Max	Vidya
10616	Banjo-Kazooie	Vidya
10617	Hank Hill	Vidya
10618	Pheonix Wright	Vidya
10620	thowing bottles of holy water in the original Castlevania	Vidya
10621	using your PC as a heater in the winter	Vidya
10622	Wii Fit Trainer	Vidya
10623	Nanomachines, son	Vidya
10624	Creating a LttP vs Majora's Mask	Vidya
10625	Following the damn train	Vidya
10626	Kotaku	Vidya
10627	checking your privledge	Vidya
10628	having fun	Vidya
10629	Call of Cthulhu	Vidya
10630	Corruption of Champions	Vidya
10631	Sanic	Vidya
10632	Sanic Adventure 2	Vidya
10633	Civillization IV	Vidya
10634	League of Legends	Vidya
10635	DoTA 2	Vidya
10636	HoN	Vidya
10637	asking br? when joining a server	Vidya
10638	Geralt	Vidya
10639	Halo	Vidya
10640	Doomguy	Vidya
10641	Regginator	Vidya
10642	tfw no qt gf	Vidya
10643	Atelier	Vidya
10644	Asura	Vidya
10645	Obsidrones	Vidya
10646	Nintenyearolds	Vidya
10647	Xbots	Vidya
10648	Sonyggers	Vidya
10649	Hitscan	Vidya
10650	xX420blazeitXx	Vidya
10651	Sakurai	Vidya
10652	blowing into a catridge	Vidya
10653	Dragon Dildos	Vidya
10654	Nintendo	Vidya
10655	Sony	Vidya
10656	Microsoft	Vidya
10657	Sega	Vidya
10658	Konami	Vidya
10659	Game Freak	Vidya
10660	Fez	Vidya
10661	Cave Story	Vidya
10662	Wololololololololo	Vidya
10663	pirating games because you hate the government	Vidya
10664	New Super Luigi Bros	Vidya
10665	the Demoman (who takes skill)	Vidya
10666	the Pyro (who takes skill)	Vidya
10667	on disk DLC	Vidya
10668	sports games the come out year after year	Vidya
10669	Ass Creed	Vidya
10670	playing counterstrike too seriously	Vidya
10671	Minecraft	Vidya
10672	Notch	Vidya
10673	Buzzwords	Vidya
10674	OFF by Mortis Ghost	Vidya
10675	an indie dev that no one knows about	Vidya
10676	the Secret of Monkey Island	Vidya
10677	watching let's plays on youtube	Vidya
10678	grumpy dumpies	Vidya
10679	Spaghetti	Vidya
10680	the best Final Fantasy game	Vidya
10681	Grayson Hunt	Vidya
10682	not completing all the side quests	Vidya
10683	artificial difficulty	Vidya
10684	padding	Vidya
10685	artificial fun	Vidya
10686	Matt and Pat	Vidya
10687	Hamberger Helper	Vidya
10688	Yahtzee	Vidya
10689	iJustine	Vidya
10690	Jack Thompson	Vidya
10691	rebbit	Vidya
10692	The /v/idya gaem awards	Vidya
10693	Emi (from Katawa Shoujo)	Vidya
10694	Rin (from Katawa Shuojo)	Vidya
10695	Lilly (from Katawa Shuojo)	Vidya
10696	Hanako (from Katawa Shuojo)	Vidya
10697	Shizune (from Katawa Shuojo)	Vidya
10698	Misha (from Katawa Shuojo)	Vidya
10699	Kenji (from Katawa Shuojo)	Vidya
10700	The Last of Us	Vidya
10701	/v/	Vidya
10702	Video Games	Vidya
10703	NSA	Vidya
10704	Christopher Robin	Vidya
10705	The Master Race	Vidya
10706	/mlp/	Vidya
10707	Bronies	Vidya
10708	/vg/	Vidya
10709	/vr/	Vidya
10710	/vp/	Vidya
10711	p2w	Vidya
10712	the delay time of Duke Nukem Forever	Vidya
10713	Duke Nukem	Vidya
10714	WoW	Vidya
10715	Worth the Weight	Vidya
10716	anything but video games	Vidya
10717	Tom Preston	Vidya
10718	Andrew Dobson	Vidya
10719	nogames	Vidya
10720	2spooky	Vidya
10721	599 US Dollars 	Vidya
10722	Eight Point Eight	Vidya
10723	RAGE	Vidya
14925	Playing TGWTG Cards Against Humanity at stupid o'clock.	TGWTG
14926	Pol Pot pies.	TGWTG
14927	Rachel Tietz, trying to Kill the Nostalgia Critic.	TGWTG
14928	Ripping off part of your penis.	TGWTG
14929	ROCKET BOOTS!	TGWTG
14930	ROCKET PUNCH!	TGWTG
14931	Sad Panda's lanky, manly chest.	TGWTG
14932	Sage's "RAPE!" face.	TGWTG
14933	Sean.	TGWTG
14934	Sex, violence, and Daffy Duck screaming.	TGWTG
14935	Shouting "FUS-RO-DAH!" at a puppy.	TGWTG
14936	Smarty.	TGWTG
14937	Smarty's special bag of AIDS.	TGWTG
14938	Snowflame's cocaine flavored popsicles.	TGWTG
14939	Snowflame's fuzzy slippers.	TGWTG
14940	Space Core.	TGWTG
14941	Stealing money off dead wolves.	TGWTG
14942	Surprise blowjobs.	TGWTG
14943	Tara's tramautic childhood stories.	TGWTG
14944	That Dude In The Suede.	TGWTG
14945	The Adventures of Horsemeat and the Placenta #1.	TGWTG
14946	The Amazing Bulk.	TGWTG
14947	The Channel Awesome satellite.	TGWTG
14948	The Hippo Lantern Corps.	TGWTG
14949	The Last Angry Geek.	TGWTG
14950	The Longbox of the Damned.	TGWTG
14951	The Nostalgia Ranger.	TGWTG
14952	The Rap Critic.	TGWTG
14953	The thick, muscular arms of ChaosD1.	TGWTG
14954	The Uncanny Valley.	TGWTG
14955	The Wal-Mart.	TGWTG
14956	Todd in the Shadows.	TGWTG
14957	Todd trolling Chris Brown on Twitter.	TGWTG
14958	Tommy Wiseau.	TGWTG
14959	Turtle.	TGWTG
14960	Using a frontloader to steal deodorant.	TGWTG
14961	Using donation money for weed.	TGWTG
14962	Vangelus	TGWTG
14963	Ven's voice, a gift from the fairies.	TGWTG
14964	Zeo Linkara.	TGWTG
14965	A DraculaFetus animation.	NL
14966	A profile pic that looks like a dick and balls.	NL
14967	Spy Party racism.	NL
14968	The ghost of Ohmwrecker.	NL
14969	Shooting the black guy.	NL
14970	Ohm's mindgames.	NL
14971	DOTA 2.	NL
14972	Magic: The Gathering.	NL
14973	A failed challenge run.	NL
14974	Setting the world on fire.	NL
14975	Pot magic.	NL
14976	Josh's washing machine.	NL
14977	Dang it, Bobby!	NL
14978	Up in the air like a George Clooney movie.	NL
14979	A lemon mishap.	NL
14980	This cat, I swear to god.	NL
14981	Ohmwrecker.	NL
14982	youtube.com/Ohmwrecker.	NL
14983	Drinkable fire.	NL
14984	Ohmsdrawings.tumblr.com.	NL
14985	Soul level 1 invasions.	NL
14986	Ryuka.	NL
14987	The blue candle.	NL
14988	JSmith's laundry.	NL
14989	Mount Your Friends: Docking Edition.	NL
14990	Childlike bukakke.	NL
14991	A water supply full of leeches.	NL
14992	Travelling by bones.	NL
14993	AlpacaPatrol.	NL
14994	Zen.	NL
14995	Green9090.	NL
14996	#MikeBithell.	NL
14997	RedPandaGamer.	NL
14998	Ohm, our god.	NL
14999	...Metal Gear?!	GG
15000	A beautiful little moment.	GG
15001	A couch stinking of naked people.	GG
15002	A humanlike bat with tits.	GG
15003	A little dingle-dang.	GG
15004	A pretty epic poo.	GG
15005	A replay from Barry.	GG
15006	A Scottish bloke that talks too fast.	GG
15007	A smaller, whiter dick.	GG
15008	A Sonic.	GG
15009	A testicle examination.	GG
15010	A whale making a seal noise.	GG
15011	Accidentally resetting a video game.	GG
15012	An expensive rental costume.	GG
15013	Anne Frank doing a striptease.	GG
15014	Arin actually winning a Game Grumps VS.	GG
15015	Arin Hanson / Egoraptor.	GG
15016	Arin's big floppy penis.	GG
15017	Arin's dicksaber.	GG
15018	Arin's voice acting.	GG
15019	Barry Kramer.	GG
15020	Barry's censorship noises.	GG
15021	Becoming a vegetarian, then becoming clinically depressed.	GG
15022	Being forced to replay the same section of the game over and over.	GG
15023	Birdemic.	GG
15024	Borderline narcissism.	GG
15025	Breaking a basketball net's back board.	GG
15026	Breaking into song.	GG
15027	Brian / Frank / Steve / Willard / Jonathan / Michael IV / Michael III / Michael Jordan / Scott.	GG
15028	Bumping butts.	GG
15029	Buying chicken fingers for homeless people.	GG
15030	Carefully escorting Anna.	GG
15031	Catharsis.	GG
15032	Cheese pizza.	GG
15033	Chu Chu Rocket.	GG
15034	Chulip.	GG
15035	Comparing someone to a trainwreck.	GG
15036	Completely missing the tutorials and instructions.	GG
15037	Cumfaggots.	GG
15038	Dan getting some action with one of Egoraptor's action figures.	GG
15039	Danny Sexbang.	GG
15040	Danny's crippling Skittles addiction.	GG
15041	Dipping your balls in the sand.	GG
15042	Dixon.	GG
15043	Donkey-ass Kong.	GG
15044	Drakkhen's realistic fight sequences.	GG
15045	Drawing the line in the fucking sand.	GG
15046	Eating the Holocaust.	GG
15047	Eating your peas.	GG
15048	Egofaptor.	GG
15049	Ending an episode on "Heil Hitler!"	GG
15050	The eyeless girl demographic.	GG
15051	Fart science.	GG
15052	Fast-forwarding.	GG
15053	Fighting Iblis for the hundredth time.	GG
15054	Fooling me three times.	GG
15055	Fuckin' Larry.	GG
15056	FUCKING LEGO CARS!!?!	GG
15057	Game feel.	GG
15058	Game Grumps remixes.	GG
15059	Game Grumps VS.	GG
15060	Game Grumps.	GG
15061	Garshstostoles.	GG
15062	GeorgLopez.	GG
15063	Getting censored by a stampede of elephants.	GG
15064	Getting diddled again.	GG
15065	Getting fucking ganked.	GG
15066	Getting horribly diarrhea'd on by an owl.	GG
15067	Getting killed by a motherfucking paralyzed Taillow.	GG
15068	Getting stuck on the ceiling for no explicable reason.	GG
15069	Getting violently sick at MAGfest.	GG
15070	Goof Troop.	GG
15071	Goofy masturbating in the fields.	GG
15072	Grade A meat.	GG
15073	Grant Kirkhope.	GG
15074	Grant Kirkhope’s knackers.	GG
15075	GREAT! GREAT! GREAT!	GG
15076	Grep.	GG
15077	Grumping it.	GG
15078	Güf Troop.	GG
15079	Half the deal for twice the price!	GG
15080	Having a cough that lasts forever.	GG
15081	Helicopter tits.	GG
15082	Hepatitis Sea.	GG
15213	Slo Mo Guys.	RT
15083	Hitting a Nightshade cartridge with Thor’s Hammer only to break the hammer.	GG
15084	Homoerotic subtext between two grown men playing video games.	GG
15085	Ice hair.	GG
15086	Incriminating footage of Jon.	GG
15087	Insta-killing your partner with the Select button.	GG
15088	It being no use.	GG
15089	Jacques.	GG
15090	JonTron.	GG
15091	Jon winning. AS USUAL.	GG
15092	Jon's soulful singing.	GG
15093	Jon/Arin slash fiction.	GG
15094	JonTron’s musical theater voice.	GG
15095	Js'keep goin'.	GG
15096	Killing zombies by typing on a keyboard-gun.	GG
15097	Kirby.	GG
15098	Kitty Cat Dance Party.	GG
15099	Learning that your son is dead, but not caring because you didn't want him anyway.	GG
15100	Lemon and Bill.	GG
15101	Lightsaber Fightsaber.	GG
15102	Literally going to Hell.	GG
15103	Mediocrity, as a power.	GG
15104	Mega Man.	GG
15105	Mike Tyson.	GG
15106	Mispronouncing Duran Duran.	GG
15107	Mister Mosquito.	GG
15108	MomTron.	GG
15109	Moundo.	GG
15110	Naughty Bear.	GG
15111	Nazi von Killyou.	GG
15112	Ninja Sex Party.	GG
15113	Nixon.	GG
15114	NO JON NO.	GG
15115	NOT FUCKING THIS!	GG
15116	Not knowing the controls to Nickelodeon GUTS.	GG
15117	Not reading the game's instructions.	GG
15118	Obeying Protoman and burning down a forest.	GG
15119	Pacific Rim.	GG
15120	Pause balls.	GG
15121	Pelistorm.	GG
15122	Playing a terrible game for more than a hundred episodes.	GG
15123	Playing slaps to break a tie.	GG
15124	PONY.MOV.	GG
15125	Poopy butt.	GG
15126	Poppy Bros.	GG
15127	Princess Elise's octopus face.	GG
15128	Punching a hole in a gingerbread house.	GG
15129	Queefing bombs out of your vagina.	GG
15130	Racial slurs.	GG
15131	Reading the manual.	GG
15132	RIDIN’ ON CARS!!!	GG
15133	Robots ordering cheese pizza.	GG
15134	Rocket. To the moon.	GG
15135	Rolling around at the speed of sound.	GG
15136	RubberRoss.	GG
15137	Rouge's gross bat face.	GG
15138	Screaming out Whitney Houston’s “I Will Always Love You” in primal agony.	GG
15139	Sequelitis.	GG
15140	Seven asses.	GG
15141	Signing and destroying a copy of Sonic '06.	GG
15142	Silver the Hedgehog.	GG
15143	Sneaking dirty British humour into an unassuming video game about a bear and a bird.	GG
15144	Snow white shit.	GG
15145	Snowboarding uphill	GG
15146	Solid Snake.	GG
15147	Sonic '06.	GG
15148	Spice World.	GG
15149	Spraying compressed air with a bittering agent in your face, and subsequently vomiting.	GG
15150	Stairfax Temperatures.	GG
15151	Staring at a menu while Ross stuffs his disgusting face with candy.	GG
15152	Stasis-ing the drill.	GG
15153	Steam Train.	GG
15154	Sticky sap.	GG
15155	Stretch Panic.	GG
15156	STRGG.	GG
15157	Struggling to fight Silver the Hedgehog.	GG
15158	Sucking blood from a Japanese girl's tits.	GG
15159	Suzy the Goose.	GG
15160	TENOUTTATEN.	GG
15161	That guy.	GG
15162	The Awesome Series.	GG
15163	The band Egoraptor.	GG
15164	The Chinless Wonder.	GG
15165	The Goshdangodon.	GG
15166	The Higgs Boson.	GG
15167	The Knuckles wall glitch.	GG
15168	The rarest form of Arin having fun.	GG
15169	The realization that friendship is more important.	GG
15170	Three big feet of pleasure.	GG
15171	Tonguing up.	GG
15172	Typing "C D PLAYER" and getting "MODEL CAR."	GG
15173	WAAAAAAAVE LAAAAZEEEEEEER.	GG
15174	Walking around in my banana shoes.	GG
15175	World Dick Barf Syndrome.	GG
15176	Man-Gobbler, the turkey bestiality movie.	RT
15177	RoosterTeeth.	RT
15178	Michael Jones.	RT
15179	Gavin Free.	RT
15180	Surgeon Simulator 2013.	RT
15181	Ray Narvaez, Jr.	RT
15182	Burnie Burns.	RT
15183	Geoff Lazer Ramsey.	RT
15184	Jack Pattillo.	RT
15185	Ryan Haywood.	RT
15186	Gus Sorola.	RT
15187	The cardboard cutout of Gus.	RT
15188	Joel Heyman.	RT
15189	Going cakeless.	RT
15190	Headlight fluid.	RT
15191	Playing Hitler twice.	RT
15192	Sarge.	RT
15193	Lopez la Pesado.	RT
15194	Franklin Delano Donut.	RT
15195	Dexter Grif.	RT
15196	Dick Simmons.	RT
15197	Agent Washington.	RT
15198	Andy the bomb.	RT
15199	Picking up chicks in a tank.	RT
15200	Michael J. Caboose.	RT
15201	Sheila the tank.	RT
15202	Leonard Church.	RT
15203	Lavernius Tucker.	RT
15204	Agent Texas / Allison.	RT
15205	Omega / O'Malley.	RT
15206	Agent Maine / the Meta.	RT
15207	Frank "Doc" DuFresne.	RT
15208	Screen looking.	RT
15209	A wet paper towel.	RT
15210	Minecraft.	RT
15211	MOGAR!	RT
15212	X-Ray and Vav.	RT
15214	#DantheMan.	RT
15215	Joe the cat.	RT
15216	Pongo.	RT
15217	Soggy bread.	RT
15218	Rage Quit.	RT
15219	Achievement Hunter.	RT
15220	Team-killing fucktards.	RT
15221	Calling dibs on a spaceship.	RT
15222	Sarge's funeral.	RT
15223	Camping, as a legitimate strategy.	RT
15224	Epsilon's laser face.	RT
15225	MOTHERFUCKING TRIPLE SPIKES!	RT
15226	Because people like grapes.	RT
15227	Upside-down Kerry.	RT
15228	Ray's sombrero.	RT
15229	Doing a dig-down.	RT
15230	Mark Nutt.	RT
15231	AHWU.	RT
15232	Throwing shit at the AHWU announcer.	RT
15233	Red vs. Blue.	RT
15234	Geoff's cancer-curing laugh.	RT
15235	The Tower of Pimps.	RT
15236	The Frienderman.	RT
15237	Beating a man to death with his own skull.	RT
15238	Fighting to the death on pigback.	RT
15239	RWBY.	RT
15240	RT Shorts.	RT
15241	RT Animated Adventures.	RT
15242	Mega64.	RT
15243	Immersion.	RT
15244	Reaching a billion total views on YouTube.	RT
15245	Doing a double barrel roll and immediately running someone over.	RT
15246	A Ray-Cam masturbation moment.	RT
15247	Tackling Gavin to stop him from winning.	RT
15248	Losing an hour's worth of footage to a brief blackout.	RT
15249	Fails of the Weak.	RT
15250	Achievement HORSE.	RT
15251	Trials PIG.	RT
15252	Slapping the controller out of a competitor's hands.	RT
15253	Cockbites.	RT
15254	Achievement City.	RT
15255	Two bases in the middle of a box canyon. Whoop-dee-fuckin'-doo.	RT
15256	Blood Gulch.	RT
15257	Parkour.	RT
15258	Faffy Waffle.	RT
15259	Something that is top.	RT
15260	A plan that involves Grif dying.	RT
4946	Drunkenly texting an ex.	MrMan
15261	Using CPR to treat a bullet wound to the head.	RT
15262	Front flip for style!	RT
15263	Trying to eat a five-pound gummy bear in one sitting.	RT
15264	RTX.	RT
15265	Randy Newman.	RT
15266	Slenderman.	RT
15267	The R&R Connection.	RT
15268	The Internet Box.	RT
15269	Performing surgery in space.	RT
15270	Jack's dick.	RT
15271	The Crev.	RT
15272	Team Nice Dynamite.	RT
15273	Team Lads.	RT
15274	Team Gents.	RT
15275	Plan G.	RT
15276	Team Neighborhood Watch.	RT
15277	Ray winning.	RT
15278	Edgar the cow.	RT
15279	Gavin's Trophy Room of Victory.	RT
15280	Jack's beard.	RT
15281	Being trapped in a dog cage.	RT
15282	Geoff's hobo beard.	RT
15283	Killing Gavin.	RT
15284	Discovering your long-lost Creeper parents.	RT
15285	A megalomaniac with a beard.	RT
15286	Ray's douche-cut.	RT
15287	The adventures of Batman and Randy Newman.	RT
15288	Because they'd like it.	RT
15289	Knobs.	RT
15290	Gubbins.	RT
15291	Meatspin.	RT
15292	Flynt Coal.	RT
15293	Tupperware.	RT
15294	A miniature Tower of Pimps.	RT
15295	Giving up and building a house.	RT
15296	Gavin's dick.	RT
15297	Wearing your headphones backwards during a podcast week after week.	RT
15298	Flicking the bean.	RT
15299	Getting minged up your quelch.	RT
15300	Grand Theft Auto IV.	RT
15301	Ray's wet sponge.	RT
15302	Bankrupting your company over a crane game.	RT
15303	A bag of dicks.	RT
15304	ENDERMAN!!!	RT
15305	Lightish red.	RT
15306	In denial.	RT
15307	Enwrong.	RT
15308	Papa BrownMan.	RT
15309	Caleb's house.	RT
15310	Evil Ryan.	RT
15311	Randy Savage.	RT
15312	RT Confessions.	RT
15313	Two dumb cunts.	RT
15314	Smegpot.	RT
15315	Guffpap.	RT
15316	Launching dump trucks off an unfinished bridge.	RT
15317	Because bitches ain't shit.	RT
15318	Gavino.	RT
15319	Monoray.	RT
15320	Montages no one will watch.	RT
15321	A gay cave. A gayve.	RT
15322	A squid orgy.	RT
15323	Getting boned.	RT
15324	300,000 Gamerscore.	RT
15325	Team Magnum Dong.	RT
15326	Lindsay Tuggey.	RT
15327	Barbara Dunkelman.	RT
15328	Mavin slash fiction.	RT
15329	Caleb Denecour.	RT
15330	Monty Oum.	RT
15331	The league of being a big faggot.	DAH
15332	GaLm's sunglasses.	DAH
15333	The Card Czar.	DAH
15334	Inside Shrek's asshole.	DAH
15335	Solving a rubiks cube with your bare nipples.	DAH
15336	A canoe with enough room for Phil.	DAH
15337	The Black Seed.	DAH
15338	That video of EatMyDiction1 twerking.	DAH
15339	The Sips Co. Dirt Factory.	DAH
15340	DarkSydePhil playing Dark Souls.	DAH
15341	Hitler's Train!	DAH
15342	That time when Machinima played actual machinima videos.	DAH
15343	Bajan Canadian's fridge.	DAH
15344	Seananners' dolphin laugh.	DAH
15345	Chilledchaos' homosexual tendencies.	DAH
15346	Bolshevik the wolf.	DAH
15347	Diction watching a burly outdoorsman skin a bear while eating honey and crying.	DAH
15348	The Tom Shark.	DAH
15349	#TysLeftFoot	DAH
15350	Seananners joyously dropping "presents" on the African minority in GTA.	DAH
15351	Jah be dwarfin' it up!	DAH
15352	Tom drunk off his ass.	DAH
15353	Getting anally violated by a silverback gorilla.	DAH
15354	A Big 'Ol Bowl of Fruit!	DAH
15355	An LP Smarty finished.	DAH
15356	BEARS!	DAH
15357	The Blue Yeti microphone.	DAH
15358	A Machinima contract.	DAH
15359	Criken's Fun House.	DAH
15360	A smart joke.	DAH
15361	One of Chuggaconroy's awful puns.	DAH
15362	The Great Youtube Unsubbing of 2012.	DAH
15363	A robot bird.	DAH
15364	Time to cancel Smash Fighter.	DAH
15365	Smash Fighter.	DAH
15366	Totalbiscuit and Angry Joe frolicking in a meadow.	DAH
15367	Chilled and Smarty's wedding.	DAH
100240	A box of biscuits, a box of mixed biscuits, and a biscuit mixer.	BOX
100245	A box-shaped man.	BOX
100246	A man-shaped box.	BOX
100249	An alternate universe in which boxes store things inside of people.	BOX
100252	Two midgets shitting into a box.	BOX
100253	A falcon with a box on its head.	BOX
100254	Being a motherfucking box.	BOX
100259	Achieving the manual dexterity and tactical brilliance of a 12-year-old Korean boy. (6/44)	PAX
100260	Being an attractive elf trapped in an unattractive human's body. (9/44)	PAX
100262	Bowser's aching heart. (13/44)	PAX
100264	Turn-of-the-century sky racists. (24/44)	PAX
1258	A cutie mark.	CAE
1408	Octavia.	CAE
1409	The Moon.	CAE
1410	Orphaned foals.	CAE
1411	Pants.	CAE
1412	The Great and Powerful Trixie Lulamoon.	CAE
1413	The Grand Galloping Gala.	CAE
1414	Pegasus wing deformities.	CAE
1415	The Friendship Express.	CAE
1416	Pinkamena Diane Pie.	CAE
1417	The Chocolate Mousse Moose.	CAE
1418	The Cakes.	CAE
1419	Pinkamena's hacksaw.	CAE
1420	That squee noise.	CAE
1421	That Lyra plushie.	CAE
1422	Sweetie Bot.	CAE
1423	Sweetie Belle's virgin marshmallow pussy.	CAE
1424	Sweetie Belle.	CAE
1425	Pinkie Pie in full latex.	CAE
1426	Surprise.	CAE
1427	Stretching those glutes.	CAE
1428	Pinkie Pie.	CAE
1429	Steven Magnets.	CAE
1430	Plot.	CAE
1431	Spike's understanding of biology.	CAE
1432	Speaking Fancy.	CAE
1433	Poison Joke.	CAE
1434	Socks.	CAE
1435	Ponies wearing clothes.	CAE
1436	Sloppy clop.	CAE
1437	Shipping.	CAE
1439	Shaking Dat Plot.	CAE
1440	Secretly being a changeling all along.	CAE
1441	Ponies.	CAE
1442	Scootabuse.	CAE
1443	Pony racism.	CAE
1444	Scoot, Scoot-A-Loo.	CAE
1445	Pony-Griffon marriage.	CAE
1446	Rarity.	CAE
1447	Rainbow Dash.	CAE
1448	Rainbow Crash.	CAE
1449	Ponychan.	CAE
1450	Raging wingboners.	CAE
1451	Queen Chrysalis.	CAE
1452	Princess Molestia.	CAE
1453	Princess Celestia.	CAE
1454	Princess Mi Amore Cadenza.	CAE
1455	Princess Luna.	CAE
1438	Ponies with fricken' laser beams attached to their heads!	CAE
3059	Lara Croft.	NL
3768	Scotsmen marrying their sheep.	RS
100313	Quiznos.	SG
100314	A bunch of idiots playing a card game instead of interacting like normal humans.	X4
100315	A sex goblin with a carnival penis.	X4
100316	Lots and lots of abortions.	X4
100317	Injecting speed into one arm and horse tranquilizer into the other.	X4
100318	Sharks with legs.	X4
100319	A sex comet from Neptune that plunges the Earth into eternal sexiness.	X4
100320	How awesome I am.	X4
100321	Smoking crack, for instance.	X4
100322	A dance move that's just sex.	X4
100323	A hopeless amount of spiders.	X4
100324	Drinking responsibly.	X4
100325	Angelheaded hipsters burning for the ancient heavenly connection to the starry dynamo in the machinery of night.	X4
100326	Bouncing up and down.	X4
100327	A shiny rock that proves I love you.	X4
100328	Crazy opium eyes.	X4
100329	Moderate-to-severe joint pain.	X4
100330	Finally finishing off the Indians.	X4
100331	Actual mutants with medical conditions and no superpowers.	X4
100332	The complex geopolitical quagmire that is the Middle East.	X4
100333	Neil Diamond's Greatest Hits.	X4
100334	No clothes on, penis in vagina.	X4
100335	Whispering all sexy.	X4
100336	A horse with no legs.	X4
100337	Depression.	X4
100269	The gravity gun.	13PAX
100273	Achieving the manual dexterity and tactical brilliance of a 12-year-old Korean boy.	13PAX
100274	Rolling a D20 to save a failing marriage.	13PAX
100280	Bowser's aching heart.	13PAX
100271	70,000 gamers sweating and farting inside an airtight steel dome.	13PAX
100338	Almost giving money to a homeless person.	X4
100339	Interspecies marriage.	X4
100340	Blackula.	X4
100341	What Jesus would do.	X4
100342	A manhole.	X4
100343	My dad's dumb fucking face.	X4
100344	A Ugandan warlord.	X4
100345	My worthless son.	X4
100346	A Native American who solves crimes by going into the spirit world.	X4
100347	A kiss on the lips.	X4
100348	A fart.	X4
100349	The peaceful and nonthreatening rise of China.	X4
100355	The size of my penis.	X4
100359	Jizz.	X4
100361	10 Incredible Facts About the Anus.	X4
100362	The secret formula for ultimate female satisfaction.	X4
100363	Sugar madness.	X4
100364	Calculating every mannerism so as not to suggest homosexuality.	X4
100365	Fucking a corpse back to life.	X4
100369	The euphoric rush of strangling a drifter.	X4
100350	Snorting coke off a clown's boner.	X4
100351	Three consecutive seconds of happiness.	X4
100352	Falling into the toilet.	X4
100353	Ass to mouth.	X4
100354	Some sort of Asian.	X4
100356	The safe word.	X4
100357	Party Mexicans.	X4
100358	Ambiguous sarcasm.	X4
100378	My sex dungeon.	X4
100379	Child Protective Services.	X4
100360	An interracial handshake.	X4
100366	All the single ladies.	X4
100368	Africa.	X4
100370	Khakis.	X4
100371	A gender identity that can only be conveyed through slam poetry.	X4
100373	A for-real lizard that spits blood from its eyes.	X4
100374	The tiniest shred of evidence that God is real.	X4
100376	Dem titties.	X4
100377	Exploding pigeons.	X4
100380	Doo-doo.	X4
100381	Sports.	X4
100382	Unquestioning obedience.	X4
100383	Grammar nazis who are also regular Nazis.	X4
100414	Being banned from /r/pyongyang.	SG
100416	The lost city of Atlantis.	SG
100417	Giving money and personal information to strangers on the Internet.	HBS
100418	A magical tablet containing a world of unlimited pornography.	HBS
100419	These low, low prices!	HBS
100420	Piece of shit Christmas cards with no money in them.	HBS
100423	Moses gargling Jesus's balls while Shiva and the Buddha penetrate his divine hand holes.	HBS
100424	The Hawaiian goddess Kapo and her flying detachable vagina.	HBS
100425	The shittier, Jewish version of Christmas.	HBS
100428	Making up for 10 years of shitty parenting with a PlayStation.	HBS
100429	Swapping bodies with mom for a day.	HBS
100430	Slicing a ham in icy silence.	HBS
100431	Finding out that Santa isn't real.	HBS
100433	Rudolph's bright red balls.	HBS
100434	The Grinch's musty, cum-stained pelt.	HBS
100435	Breeding elves for their priceless semen.	HBS
100436	Jizzing into Santa's beard.	HBS
100438	A simultaneous nightmare and wet dream starring Sigourney Weaver.	HBS
100439	Being blind and deaf and having no limbs.	HBS
100440	People with cake in their mouths talking about how good cake is.	HBS
15549	Ewoks.	Imgur
15550	OP Delivers.	Imgur
15551	#SOCKS.	Imgur
15552	Oh look! A cat!	Imgur
15553	I am not a clever man.	Imgur
15554	Banana.	Imgur
15555	Read me 10 for all coffee.	Imgur
15556	Juan.	Imgur
15557	Sir Patrick Stewart.	Imgur
15558	Troy and Abed.	Imgur
15559	MOON MOON.	Imgur
15560	Nathan Fillion.	Imgur
15561	Felica Day.	Imgur
15562	9.	Imgur
15563	10.	Imgur
15564	11.	Imgur
15565	BOOM! Pregnant.	Imgur
15566	Tesla.	Imgur
15567	Jon Snow.	Imgur
15568	Ass.	Imgur
15569	Theon Greyjoy’s dismembered member.	Imgur
15570	Not since the accident.	Imgur
15571	Lechuga.	Imgur
15572	Edward Macaroni Fork.	Imgur
15573	Imgurgiraffe.	Imgur
15574	ANUSTART.	Imgur
15575	This was a grave mistake.	Imgur
15576	BAZINGA!	Imgur
15577	Cousin Maeby.	Imgur
15578	STEVE HOLT.	Imgur
15579	Nevernudes.	Imgur
15580	Tard.	Imgur
15581	Potato. 	Imgur
15582	Bacon.	Imgur
15583	Erotic fiction featuring Snape and Hermione.	Imgur
15584	Sonic Screwdriver. 	Imgur
15585	Chak´s homemade maple bacon jam.	Imgur
15586	Moisturize me.	Imgur
15587	Mummy.	Imgur
15588	Expelliarmus!	Imgur
15589	Hagrid.	Imgur
15590	Buckbeak.	Imgur
15591	Luke Skywalker making out with his sister, Leia.	Imgur
15592	NobodySaysThis.	Imgur
15593	Nargles.	Imgur
15594	Annie´s boobs.	Imgur
15595	An overpriced cup of coffee.	Imgur
15596	Demonstrating how to properly put on a condom using a cucumber as substitute for a penis.	Imgur
15597	Katie the Cock Cozy.	Imgur
15598	Going Super Saiyan.	ANX1
15599	Going Super Saiyan during orgasm.	ANX1
15600	Going Super Saiyan while taking a massive dump.	ANX1
15601	Angry naked people.	ANX1
15602	Literally spanking a monkey.	ANX1
15603	My daikon.	ANX1
15604	Alicorn OCs.	FiM1
100372	Stuff a child's face with Fun Dip® until he starts having fun.	X4
100375	Prince Ali,\nfabulous he,\nAli Ababwa.	X4
15605	An End of Ponies update.	FiM1
15606	Another ball-greasing 502 error, for fuck's sake! Goddamnit!	FiM1
15607	Assholes who hate foalcon.	FiM1
15608	Big Macintosh's gaping, sloppy-wet boycunt.	FiM1
15609	Blackjack.	FiM1
15610	Bronies.	FiM1
15611	Chuckward, before he was banned.	FiM1
15612	Cola's ass.	FiM1
15613	Columbine. Dear fucking Celestia, Columbine.	FiM1
15614	Crotchtits.	FiM1
15615	darf.	FiM1
15616	darf's corpse, Faust rest his soul.	FiM1
15617	Dollhouse.	FiM1
15618	Eakin.	FiM1
15619	Equestria Daily.	FiM1
15620	Fallout: Equestria: Project Horizons.	FiM1
15621	Fallout: Equestria.	FiM1
15622	FelixDawn.	FiM1
15623	Fillyfooler.	FiM1
15624	Foalcon.	FiM1
15625	Fucking 502 errors.	FiM1
15626	Fucking Anthro.	FiM1
15627	Goddamned crossover fics.	FiM1
15628	Goddamned unnecessary futa.	FiM1
15629	Horsedick.	FiM1
15630	Humancunt.	FiM1
15631	Humanized.	FiM1
15632	IJAB.	FiM1
15633	Kaidan.	FiM1
15634	knighty.	FiM1
15635	knighty's dribbling dick.	FiM1
15636	Lacinias.	FiM1
15637	Littlepip.	FiM1
15638	Mares with dicks.	FiM1
15639	Meeester	FiM1
15640	Mods.	FiM1
15641	More 502 errors, christ.	FiM1
15642	My Little Dashie, even though it's a piece of shit.	FiM1
15643	NSFW blogposts filled with guro and incest.	FiM1
15644	Nyx, the ultimate Mary Sue.	FiM1
15645	Obselescence.	FiM1
15646	On A Cross And An Arrow.	FiM1
15647	para's sweaty nutsack.	FiM1
15648	parasprite.	FiM1
15649	Ponycunt.	FiM1
15650	RainbowBob.	FiM1
15651	RBDash47's latest blog post.	FiM1
15652	Regidar, again, the little shit.	FiM1
15653	Regidar.	FiM1
15654	Riffing.	FiM1
15655	Rule 63.	FiM1
15656	Sethisto.	FiM1
15657	Short Skirts and Explosions.	FiM1
15658	Sick freaks who love foalcon.	FiM1
15659	Skeeter The Lurker.	FiM1
15660	Stallions with cunts.	FiM1
15661	That jackass Aegis Shield.	FiM1
15662	That jackass Silent Bob.	FiM1
15663	The Conversion Bureau.	FiM1
15664	The Featured Box.	FiM1
15665	The Great NSFW Purge Of 2013.	FiM1
15666	The Mature Featured Box.	FiM1
15667	The Noble Jury.	FiM1
15668	The Pony Fiction Vault, before it fucked off into the sunset.	FiM1
15669	The Train Wreck Explorers.	FiM1
15670	The Writer's Group.	FiM1
15671	Those doucheslurping Adsense assholes.	FiM1
15672	Twilacorn Autism.	FiM1
15673	Twilacorn.	FiM1
15674	Twilight Sparkle, the ultimate Mary Sue.	FiM1
15675	Twilight Sparkle's massive, throbbing princesshood.	FiM1
15676	Twilight's Library	FiM1
15677	Wanderer D.	FiM1
15678	Xenophilia.	FiM1
15679	Your bullshit OTP.	FiM1
15680	Your shitty OC.	FiM1
16718	Spess mehrines	/tg/
16719	Paladin	/tg/
16720	Rogue	/tg/
16721	Blackguard	/tg/
16722	¡MAGOOOOOOOOOOOS DEL TIEMPOOOOOOOOOOOOOO!	/tg/
16723	Lich	/tg/
16724	A Mastercraft Greatsword	/tg/
16725	A Bag of Holding full of Portable Holes	/tg/
16726	Explosive Runes	/tg/
16727	Wizard	/tg/
16728	Pelor	/tg/
16729	Lady of Pain	/tg/
16730	Spelljammer	/tg/
16731	Druidic Mysteries	/tg/
16732	The MacGuffin	/tg/
16733	My Magical Realm	/tg/
16734	A Literal White Knight	/tg/
16735	A Literal Black Knight	/tg/
16736	A Big, Black Knight	/tg/
16737	A Bigger, Blacker Knight	/tg/
16738	The Biggest, Blackest Knight	/tg/
16739	Brogan	/tg/
16740	stat me	/tg/
16741	/co/	/tg/
16742	/d/	/tg/
16743	/x/	/tg/
16744	The whizzard	/tg/
16745	Mary Sue	/tg/
16746	Crazy Hassan	/tg/
16748	Gork and Mork	/tg/
16749	Hour long quest adventures over Omegle	/tg/
16750	Skip the bullshit and go straight to banging	/tg/
16751	Anthropomorphism in 40K	/tg/
16752	Surf ninjas	/tg/
16753	Being a motherfucking sorcerer	/tg/
16754	Fa/tg/uy	/tg/
16755	A diaper of holding flamethrower	/tg/
16756	Peasant railguns	/tg/
16757	Sexbots	/tg/
16758	Chaotic randumb	/tg/
16759	That guy	/tg/
16760	Laughing Eldar	/tg/
16761	Your FLGS	/tg/
16762	Roll-play	/tg/
16763	Goddamn magpies	/tg/
16764	Diplomacy	/tg/
16765	Metal Boxes	/tg/
16766	That DM	/tg/
16767	LIIVI	/tg/
16768	Lofn	/tg/
16769	NONE PURER!!!	/tg/
16770	Haters gonna hate	/tg/
16771	THIN YOUR PAINTS	/tg/
16772	An Imperial titan	/tg/
16773	GMPC	/tg/
16774	Elf vaginas	/tg/
16775	Subtle pigmen	/tg/
16776	Falling Rocks	/tg/
16777	Attacking the darkness	/tg/
16778	The emprah	/tg/
16779	Blood for the blood god	/tg/
16780	Thick and luxurious neckbeards	/tg/
16781	KUUUUUUUBOOOOOOOOO!	/tg/
16782	AC Guy's luck	/tg/
16783	Canon fanfiction	/tg/
16784	Rolling straight 1s	/tg/
16785	Sexy, barely-legal Thri-kreen	/tg/
16786	Overpowered katanas	/tg/
16787	Getting 'Squatted'	/tg/
16788	Fucking kender	/tg/
16789	TIIIIIMMMME WIIIIZZZZAAAAARRRDDDDs!	/tg/
16790	-4 str	/tg/
16791	Lenore	/tg/
16792	Dorfs	/tg/
16793	THAC0	/tg/
16794	Your Spiritual Liege, Matt Ward	/tg/
16795	Skub	/tg/
16796	Vectron, his name be praised.	/tg/
16797	Vectron's kindly claw.	/tg/
16798	Doomrider and his cocaine	/tg/
16799	The GM's girlfriend	/tg/
16800	A first edition copy of FATAL	/tg/
16801	A vagina full of spiders	/tg/
16802	A bear in a disguise	/tg/
16803	DC 80 Escape Artist check	/tg/
16804	DRAGON DILDOS	/tg/
16805	Decanter of endless water rocket	/tg/
16806	Necronomicon	/tg/
16807	Joshua-the embodiment of male self loathing	/tg/
16808	d4 caltrops	/tg/
16809	An army made of sprues	/tg/
16810	Meatbread	/tg/
16811	Xeno scum	/tg/
16812	Muckin' about	/tg/
16813	Enuff Dakka	/tg/
16814	Deep Rot	/tg/
16815	Caster Edition Fanboys.	/tg/
16816	Monte Cooke's rancid fursuit.	/tg/
16817	Kickstarting a /tg/ homebrew only to have it turn out to be shit.	/tg/
16818	Waiting for Time Wizards!	/tg/
16819	Covering yourself in mountain dew and rolling around the FLGS bathroom.	/tg/
16820	A magical piss forest.	/tg/
16821	Asking to play a pony in a Game of Thrones rpg.	/tg/
16822	Half-fae catboys.	/tg/
16823	SAN loss.	/tg/
16824	Dakkon Motherfucking Blackblade	/tg/
16825	Mark Rosewater	/tg/
16826	Chimney Imp	/tg/
16827	Storm Crow	/tg/
16828	Big Blue Boy	/tg/
16829	Fisk Malks	/tg/
16830	Madolche?	/tg/
16831	Filthy Casual	/tg/
16832	If only Tom Bombadil gave a fuck.	/tg/
16833	Gratuitous Babe Art	/tg/
16834	Failing your Privilege Check and taking full damage from the Tumblrdragon's breath weapon	/tg/
16835	People who don't understand THAC0.	/tg/
16836	People who use THAC0.	/tg/
16837	Declaring a TIME MOMENT when the TM is about to say something important.	/tg/
16838	Coasters	/tg/
16839	Moot	/tg/
16840	Saying goodbye to Exodia.	/tg/
16841	A railroad with no end.	/tg/
16842	Edition wars.	/tg/
16843	Riding the Jund train at full throttle.	/tg/
16844	Metagaming.	/tg/
16845	Playing for the story.	/tg/
16846	Glorified games of pretend.	/tg/
16847	Frost Giants	/tg/
16848	A robotic ninja catgirl maid	/tg/
16849	Please do not take the items.	/tg/
16850	Kord	/tg/
16851	Queen of Blades	/tg/
16852	Boxcars	/tg/
16853	A Natural 20	/tg/
16854	Hypercube	/tg/
16855	A falling Paladin	/tg/
16856	Children's Card Games	/tg/
16857	Cardgames on motorcycles.	/tg/
16858	Mise.	/tg/
16859	Crawdaddy.	/tg/
16860	Jace:the Wallet Sculptor.	/tg/
16861	Grim dark darkness that's grim.	/tg/
16862	Virgin Spike.	/tg/
16863	Choo choo, motherfucker.	/tg/
16864	Squats.	/tg/
16865	Sabbat Warhero	/tg/
16866	Shitting all over the DM's plans.	/tg/
16867	Chaos Spawn.	/tg/
16868	Satanic rituals and human sacrifice.	/tg/
16869	Suggesting GURPS. No matter what.	/tg/
16870	Old Man Henderson.	/tg/
16871	Monstergirls.	/tg/
16872	Grognard	/tg/
16873	Scary Spooky Skeletons	/tg/
16874	No sense of right and wrong	/tg/
16875	Goblins	/tg/
16876	Kharne	/tg/
16877	Eldrad	/tg/
16878	Sister of Battle lesbian hebephilia	/tg/
16879	FATE	/tg/
16880	Bad at Magic	/tg/
16881	Time Cube chess	/tg/
16882	Noh	/tg/
16883	Tankred Endures	/tg/
16884	FOR THE EMPRAH	/tg/
16885	CREEEEEEEEEEED!	/tg/
16886	Shitposting	/tg/
16887	A Kobold princess	/tg/
16888	Kebab	/tg/
16889	Los Tiburon	/tg/
16890	CLANG!	/tg/
16891	Commissar Fuklaw	/tg/
16892	F.A.T.A.L.	/tg/
16893	Female Space Marines	/tg/
16894	An orc guarding a chest in a 10x10 room	/tg/
16895	Captcha	/tg/
16896	Ruby and Tom	/tg/
16897	Pun-Pun	/tg/
16898	I CAST FIST!	/tg/
16899	Cultist-Chan	/tg/
16900	100-ton Atlas-class Mech	/tg/
16901	Ciaphas Cain	/tg/
16902	Oinkbane The Wereboar Assassin	/tg/
16903	orkupy waaaghstreet	/tg/
16904	Bard dad	/tg/
16905	Warhammer 40k	/tg/
16906	Warhammer Fantasy	/tg/
16907	Bloodbowl	/tg/
16908	Games Workshop	/tg/
16909	Dungeons and Dragons	/tg/
16910	Pathfinder	/tg/
16911	Magic: the Gathering	/tg/
16912	Engine Heart	/tg/
16913	Yu-Gi-Oh	/tg/
16914	Pokémon TCG	/tg/
16915	Pokemon: Tabletop Adventures	/tg/
16916	Vampire: The Masquerade	/tg/
16917	Vampire LARP	/tg/
16918	Hungarian Larper	/tg/
16919	Esh-Esh	/tg/
16920	Dice Bags	/tg/
16921	Bitches for Thulsa Doom	/tg/
16922	Conan the Librarian	/tg/
16923	Conan the Libertarian	/tg/
16924	Show me Your Honor	/tg/
16925	Blood and Thunder!	/tg/
16926	Actually having an intelligent discussion about religion.	/tg/
16927	Blood for the Blood God!	/tg/
16928	WAAAAAAAAAAGH!	/tg/
16929	Female DM	/tg/
16930	Buying GW paints and primer	/tg/
16931	Your Other Honor!	/tg/
16932	Kromgol	/tg/
16933	Tyrone the Monk	/tg/
16934	Mr. Fred Rogers, blessed be his name.	/tg/
16935	The ship is all. The ship moves	/tg/
16936	Haggard	/tg/
16937	Living Saint Inquisitor Grendel	/tg/
16938	METAL BOXES	/tg/
16939	100 Baneblades	/tg/
16941	MR RAGE	/tg/
16942	Abaddon the Armless	/tg/
16943	Sigmar	/tg/
16944	Cthulhu himself	/tg/
16945	Nyarlathotep	/tg/
16946	The Great Race of Yith	/tg/
16947	Shub-Niggurath	/tg/
16948	Deep Ones	/tg/
16949	Yog-Sothoth	/tg/
16950	Azathoth	/tg/
16951	The King in Yellow	/tg/
16952	The Queen in Yellow	/tg/
16953	Saya no Uta	/tg/
16954	Haiyore Nyaruko-San	/tg/
16955	A boat	/tg/
16956	Faptau	/tg/
16957	Shlicktau	/tg/
16958	A shoggoth	/tg/
16959	Transformation Fetishists	/tg/
16960	Scat Fetish	/tg/
16961	Watersports Fetish	/tg/
16962	Blood Ravens	/tg/
16963	Ultramarines	/tg/
16964	DJ Phylactery	/tg/
16965	Muscle Wizard	/tg/
16966	Sir Bearington	/tg/
16967	2 cat	/tg/
16968	Dr. Assmarbles	/tg/
16969	/d/M	/tg/
16970	Macha's stash of mon-keigh lewds.	/tg/
16971	A Tactical Genius.	/tg/
16972	Blast Templates.	/tg/
16973	Decking from a room in a love hotel.	/tg/
16974	Teacup Ride.	/tg/
16975	WHERE IS FELIX RAMIREZ?	/tg/
16976	Teaching the newbie about THE SYSTEM.	/tg/
16977	Dealing Meat Damage.	/tg/
16978	America-san.	/tg/
16979	Having a Spy Moment.	/tg/
16980	Burning Fate Points to survive.	/tg/
18508	Tom Baker, in nothing but a scarf	DW
18509	Walking in on Jack Harkness doing your mom. And your dad.	DW
18510	The buzzing noise the Sonic Screwdriver makes	DW
18511	Sharing a public restroom with a Weeping Angel	DW
18512	Just now realizing Torchwood is an anagram of Doctor Who	DW
18513	Fifty years of fanfic.	DW
18514	Wanting to punch that teeny-bopper Whovian that's butthurt the new Doctor isn't in his twenties.	DW
18515	The Doctor going back in time to solve a REAL problem: Twilight.	DW
18516	A Doctor Who body pillow.	DW
18517	The Silence	DW
18518	Drunkenly drawing tally marks on your face.	DW
18519	A Rusty Cyberman	DW
18520	A shitty Doctor Who knock-knock joke.	DW
18521	The Doctor having a chance encounter with a couple of 80s metalheads.	DW
18522	Davros getting up on the wrong side of the bed.	DW
18523	The Master, baiting the Doctor into a trap	DW
18524	A Vashta Nerada that just wants a hug.	DW
18525	Wishing you could regenerate.	DW
18526	Kidnapping a barely-legal woman to time travel with.	DW
18527	The poor costume decisions that were the 1970s.	DW
18528	Sixteen feet of scarf bondage.	DW
18529	Getting so much plastic surgery you have to be framed and moisturized.	DW
18530	Quitting this panel after one round because you are afraid of getting typecast.	DW
18531	The Mary Jane Adventures.	DW
18532	Fondling a Dalek's slippery bits.	DW
18533	Air from my lungs.	DW
18534	Smoking 1,000 cigarettes, just so you can sound like a Dalek when you talk.	DW
18535	Slipping her the ol' plastic Mickey.	DW
18536	Companion Porn.	DW
18537	An acid rain shower on Skaro.	DW
18538	A Sonic Screwdriver stuck on the vibrate setting.	DW
18539	Pouting in a rain storm and having to take a wicked piss.	DW
18540	The poor decision that is having a staring contest with a weeping angel.	DW
18541	Sorry, this answer is only available in the fanfic version of Cards against Con.	DW
18542	Plot holes so wide you could drive a truck through them.	DW
18543	A blinged out TARDIS blasting dubstep when it is traveling.	DW
18544	Rose Tyler's teeth.	DW
18545	The Master singing Bad Case of Loving You.	DW
18546	K-9 humping your leg.	DW
18547	A bigger, bluer TARDIS.	DW
18548	Steven Moffatt taking a big old dump in your Cheerios.	DW
18549	Robot Anne Robinson.	DW
18550	A fez caked with semen.	DW
18551	A GUITARDIS	DW
18552	The Celestial Toymaker's plaything.	DW
18553	Captain Jack Harkness.	DW
18554	Your dyslexic friend that wants you to come watch a marathon of Doctor How.	DW
18555	Fapping to Billie Piper portraying a callgirl.	DW
18556	A furry writing BAD WOLF everywhere.	DW
18557	Being used as a plot device by Steven Moffat.	DW
18558	A Costco-sized bag of Jelly Babies.	DW
18608	A REALLY cool cape and tights	KHAOS
18559	A global simulcast that forces Whovians to see the sunlight for the first time in ages.	DW
18560	THE END OF TIME ITSELF!	DW
18561	Finding Autons oddly attractive.	DW
18562	The fuck machine dungeon of the Cybermen.	DW
18563	Glenn Beck convulsively puking as a brood of Daleks swarm in on him.	DW
18564	River Song.	DW
18565	Low-budget special effects.	DW
18566	Eggs.	DW
18567	Dalek porn.	DW
18568	Taking a Doctor Poo.	DW
18569	The big banana in your pocket.	DW
18570	Opening the door of the TARDIS and leaving a deuce in the time-space continuum.	DW
18571	David Tennant.	DW
18572	Matt Smith.	DW
18573	Christopher Eccleston.	DW
18574	Siltheen farts.	DW
18575	A kid in a gas mask asking if you are his mummy.	DW
17075	Anthrocon.	RPF
17076	Uncle Kage.	RPF
17077	The furries.	RPF
17078	Furries on the Tyra Banks show.	RPF
17079	Midna and Wolf Link.	RPF
17080	Paying $3,500 for an oversized novelty fursuiter badge.	RPF
17081	2, the Ranting Gryphon.	RPF
17082	Going on a diet for the sole reason of being able to fit in a fursuit.	RPF
17083	Waiting over a year for someone to finish your art commission.	RPF
17084	A used sock collection.	RPF
17085	A small creature being stuffed in a smelly boot.	RPF
17086	Being facesat by someone who is holding in a fart.	RPF
17087	Licking Cinnabon icing off of your partner's dick.	RPF
17088	Being tied up and having a musky foot stuffed in your mouth.	RPF
17089	A Bad Dragon dildo.	RPF
17090	Being pinned to the wall and fucked in a shower.	RPF
17091	Trees made out of living tentacles.	RPF
17092	Tickling someone until they almost piss themself.	RPF
17093	Using a save state in a video game so you can fap to it later.	RPF
17094	Having every embarrassing kink of yours indulged at one time for a "shamegasm."	RPF
17095	Getting fucked by the Red Robin.	RPF
17096	Horny, stupid livestock.	RPF
17097	A fat Russian Blue that pees on the carpet.	RPF
17098	Poking cats.	RPF
17099	Bending a Lucario over and using its dreadlocks as fuckhandles.	RPF
17100	Role reversal.	RPF
17101	Ray Sipe singing about how /v/ doesn't like video games.	RPF
17102	A stripper so ugly people throw nickels at her.	RPF
17103	Lesbrarians.	RPF
17104	Umbreon.	RPF
17105	Masturbating at work.	RPF
17106	Rick Astley.	RPF
17107	Poor quality ParkerSteel.	RPF
17108	Vodka spiked with GHB.	RPF
17109	Chopping up someone's parents and putting them into chili.	RPF
17110	Getting banned from Dave & Buster's.	RPF
17111	Finding out your internet stalker's doing 10-30 in federal prison.	RPF
17112	Gambling on a fart and losing.	RPF
17113	A woman with a double-wide stroller about to mow you down.	RPF
17114	A cat trying to stick its nose up your asshole.	RPF
17115	A Fleshlight full of thumb tacks.	RPF
17116	Stayin' Alive.	RPF
17117	The Sexflesh Venereal Vinnie Suction Cup Diseased Dildo.	RPF
17118	That barrel in Carnival Night Zone at the supposed "dead end".	RPF
17119	Whitney's Miltank.	RPF
17120	Tourneyfags who turn off all items when playing Super Smash Bros.	RPF
17121	Being stalked by a paranoid schizophrenic on Reddit.	RPF
17122	Looking up where someone lives because they posted something you didn't like on the internet.	RPF
17123	Chance Time.	RPF
17124	CryptoLocker.	RPF
17125	Colby 2012.	RPF
17126	Petty people.	RPF
17127	Paying $1,475 for a bath sponge.	RPF
17128	Giovanni's head being suplexed through a floor.	RPF
17129	Plush animals that come to life long enough to drink all your rum.	RPF
17130	BLORF.	RPF
17131	Mewtwo's reveal as a playable character in the next Super Smash Bros. title.	RPF
17132	The Baconator.	RPF
17133	A chinese buffet where everything is wrapped in bacon.	RPF
17134	A lifetime supply of Olive Garden breadsticks.	RPF
17135	The 52 oz. "Fizzinator" from Sheetz.	RPF
18576	Fish fingering your custard.	DW
18577	The hideousness that is Raxacoricofallapatorious.	DW
18578	An Ood getting a starring role in a hentai.	DW
18579	The voice of one of the Cybermen has malfunctioned. Instead of saying DELETE!	DW
18580	Godwin's law.	KHAOS
18581	Nope! Chuck Testa.	KHAOS
18582	Pedo-bear.	KHAOS
18583	Honey badger.	KHAOS
18584	Linux.	KHAOS
18585	Unix.	KHAOS
18586	My ANUS is bleeding!	KHAOS
18587	My spoon is too big.	KHAOS
18588	Badger badger badger badger badger...	KHAOS
18589	Candy Mountain.	KHAOS
18590	Pewdiepie.	KHAOS
18591	Black Mesa.	KHAOS
18592	The Umbrella Corporation.	KHAOS
18593	Gordon Freeman.	KHAOS
18594	Head Crabs.	KHAOS
18595	GLaDOS's cake recipe.	KHAOS
18596	An arrow to the knee.	KHAOS
18597	All your base.	KHAOS
18598	Wood for sheep.	KHAOS
18599	Wonder Woman's invisible chopper	KHAOS
18600	The Tick.	KHAOS
18601	SHAZAM!	KHAOS
18602	Being tied up with Wonder Woman's Magic Lasso.	KHAOS
18603	The Batmobile!	KHAOS
18604	Outrunning The Flash!	KHAOS
18605	Getting caught in Spiderman's sticky, sticky... web.	KHAOS
18606	Getting caught between Green Lantern creating an anvil and Sinestro creating a hammer.	KHAOS
18607	Pissing in the suit	KHAOS
18609	Content.	KHAOS
100454	The Hollaad Tonnel.	SG
100460	25 shitty jokes about House of Cards.	HOCAH
18610	Good Ash	KHAOS
18611	Evil Ash	KHAOS
18612	My boomstick	KHAOS
18613	S-Mart	KHAOS
18614	The Necronomiconexmortis	KHAOS
18615	We're coming to get you, Barbara!	KHAOS
18616	Groovy	KHAOS
18617	A shrubbery!	KHAOS
18618	The machine that goes "Ping!"	KHAOS
18619	A herring!	KHAOS
18620	The Holy Grail	KHAOS
18621	Camelot	KHAOS
18622	Morgan Freeman	KHAOS
18623	Inconceivable!!	KHAOS
18624	To the pain	KHAOS
18625	Iocane powder	KHAOS
18626	The Orgazmorator	KHAOS
18627	Damn dirty ape	KHAOS
18628	Cowboys from Hell	KHAOS
18629	Festively plump	KHAOS
18630	Ants in the Pants	KHAOS
18631	Mecha-Streisand	KHAOS
18632	Snookie	KHAOS
18633	Honey Boo Boo	KHAOS
18634	Like a boss!	KHAOS
18635	Mutton Vindaloo Beast	KHAOS
18636	Queeg 500	KHAOS
18637	Talkie Toaster	KHAOS
18638	Droid Rot	KHAOS
18639	Athlete's Hand	KHAOS
18640	Anti-Matter Chopsticks	KHAOS
18641	Groinal Exploder	KHAOS
18642	Shiny!	KHAOS
18643	River Tam	KHAOS
18644	Browncoats	KHAOS
18645	Getting raped to death by reavers	KHAOS
18646	I'll be in my bunk!	KHAOS
18647	The Alliance	KHAOS
18648	A bigger, blacker deck	KHAOS
18649	The Necronomicon	KHAOS
18650	Fruit flies	KHAOS
18651	Fruit bat	KHAOS
18652	Traumatic insemination	KHAOS
18653	Bagpipes	KHAOS
18654	The Metal!	KHAOS
18655	All the ass in the world!	KHAOS
18656	Prehensile nipples	KHAOS
18657	No pants	KHAOS
18658	Locusts	KHAOS
18659	A tantrum	KHAOS
18660	Fifi the dancing poodle	KHAOS
18661	Wal-Mart	KHAOS
18662	Rape culture	KHAOS
18663	Cultural misappropriation	KHAOS
18664	Soggy biscuit	KHAOS
18665	A gang of bikers	KHAOS
18666	Cake	KHAOS
18667	Lice	KHAOS
18668	The walk of shame	KHAOS
18669	Rough trade	KHAOS
16981	A poisson distribution	xkcd
16982	An apple infused with tin	xkcd
16983	A ferret with wings strapped on	xkcd
16984	Taking a fourier transform of your cat	xkcd
16985	The red spiders	xkcd
16986	A malaria party	xkcd
16987	The square root of lov	xkcd
16988	Orion's penis	xkcd
16989	The Bellman-Ford algorithm	xkcd
16990	Only knowing music from Guitar Hero	xkcd
16991	Feeding rocks to children	xkcd
16992	Poking small holes in noodle cups	xkcd
16993	Zeppelins	xkcd
16994	Mixing curse levels	xkcd
16995	Going out in a blaze of Dadaist glory	xkcd
16996	Answering casual questions in Iambic Pentameter	xkcd
16997	An inexorably advancing wall of ice	xkcd
16998	Raptor attacks	xkcd
16999	Getting Jeremy Irons to do your dialogue	xkcd
17000	Sending strange things through the mail	xkcd
17001	The RJX-21 Laser Scope	xkcd
17002	Moral Relativity	xkcd
17003	Snakes on Every Plane!	xkcd
17004	A girl whose only mode of transportation is the M.C. Hammer slide	xkcd
17005	Clark Gable's Tourette's	xkcd
17006	Vanilla Ice	xkcd
17007	Computational Linguists	xkcd
17008	Cunnilingus	xkcd
17009	A Pong machine that's self-aware	xkcd
17010	Centrifugal force	xkcd
17011	The elimination of all culture you don't control	xkcd
17012	Embedded music on MySpace	xkcd
17013	The math of Velociraptors	xkcd
17014	The mathematics of cunnilungus	xkcd
17015	Electric Skateboards	xkcd
17016	Using 'They' as a third-person singular gender-free pronoun	xkcd
17017	Pronouncing 'Blog' as 'Blag'	xkcd
17018	Casual use of 'sudo'	xkcd
17019	A human-sized hamster ball	xkcd
17020	An embarrassing search history	xkcd
17021	Commenting out what other people say	xkcd
100461	An origami swan thatâs some kind of symbol?	HOCAH
100465	The sensitive European photographer whoâs fucking my wife.	HOCAH
100470	A much younger woman.	HOCAH
100455	Congress's flaccid penises withering away beneath their suit pants.	HBS
100462	A homoerotic subplot.	HOCAH
18777	"The" Hateboner.	RP
18778	(I glances.)	RP
18779	(unsure).	RP
18780	Too rad to be cis.	RP
18781	A 'shopped vendetta.	RP
18782	A 5-page-long kink list.	RP
18783	A bouquet of dicks.	RP
18784	A creepy Corruption of Champions OC.	RP
18785	A funny name for Benedict Cumberbatch.	RP
18786	A genderswapped vampire AU Cloud Strife.	RP
18787	A glopping noise.	RP
18788	A misfire.	RP
18789	A paid account full of nothing but terrible fanart icons.	RP
18790	A penis approximately the size and shape of a Guinness can.	RP
18791	A shitty urban fantasy OC.	RP
18792	A spooky jamjar.	RP
18793	A tag so boring it makes you want to delete all of your journals.	RP
18794	A tragic Christmas hang-gliding accident.	RP
18795	Accidental video posts.	RP
18796	Alpha/Beta/Omega.	RP
18797	Amatomnes.	RP
18798	An awful fandom OC who's married to the main character.	RP
18799	Anonfailing.	RP
18800	Another boring wank about f/f.	RP
18801	Another fucking TFLN meme.	RP
18802	App revisions.	RP
18803	Ataraxion.	RP
18804	Autistic gypsies.	RP
18805	Baby penis.	RP
18806	Bakerstreet.	RP
18807	Begging for asspats.	RP
18808	Being really passive-aggressive because you "don't wanna hurt anyone's feelings".	RP
18809	Being soulbonded to a Homestuck character.	RP
18810	Broccoli trees.	RP
18811	Butthurt.	RP
18812	Calling long-distance to demand tags from your RP partner.	RP
18813	Cape and Cowl.	RP
18814	Changed.	RP
18815	Chronic Lyme disease.	RP
18816	Circlejerking.	RP
18817	City of Ariel.	RP
18818	Cloud being eaten by a chocobo.	RP
18819	Cockhopping.	RP
18820	Constructive criticism.	RP
18821	Dangan Ronpa's crazy fandom.	RP
18822	Dean/Goku.	RP
18823	Dear Mun.	RP
18824	Discedo.	RP
18825	Drama Drama Duck.	RP
18826	Dropping the thread after two tags because it sucks.	RP
18827	ECATS? CAT DESK? WE SCAT?	RP
18828	An incest ship.	RP
18829	Entranceway.	RP
18830	Everyone turning into ponies.	RP
18831	Exit Void.	RP
18832	Exsilium.	RP
18833	FACT IT!	RP
18834	Fad fandoms.	RP
18835	Falling in love with your RP partner.	RP
18836	Feeling like the only one.	RP
18837	Flouncing. The more dramatic, the better.	RP
18838	Fucking that chicken.	RP
18839	Generic white male actor PBs.	RP
18840	Haven.	RP
18841	Hellion.	RP
18842	Hetalia's annoying fandom.	RP
18843	High Seas.	RP
18844	Highlandering.	RP
18845	Hitting the cervix with your dick.	RP
18846	Holly Heights.	RP
18847	Homestuck's insane fandom.	RP
18848	Icon elitism.	RP
18849	Icons that aren't 100x100.	RP
18850	Kink shaming.	RP
18851	Legbeards.	RP
18852	Literally shaking and crying.	RP
18853	lol so randumb!!!!111 XD	RP
18854	Lovingly describing your character's throbbing cock.	RP
18855	Luceti.	RP
18856	Mpreg.	RP
18857	Musedumping.	RP
18858	Neckbeards.	RP
18859	Needing to lei down.	RP
18860	Not posting deets.	RP
18861	Nymphomanic werewolf Rei Ayanami. On rollerskates.	RP
18862	One-pixel borders.	RP
18863	One-word replies.	RP
18864	Paradisa.	RP
18865	Passive-aggressive editing.	RP
18866	Pigeon superpowers.	RP
18867	Pillow queens.	RP
18868	Only playing for ships.	RP
18869	Polychromatic.	RP
18870	Posting to Wankgate logged in.	RP
18871	Pregnancy plots.	RP
18872	Pretentious, illegible formatting.	RP
18873	Queefing on someone's dick.	RP
18874	Rebutle.	RP
18875	Renne.	RP
18876	Replying to everyone on ATP because you're just that desperate.	RP
18877	Reserving a popular character and never apping.	RP
18878	Roleplaying One Direction slash.	RP
18879	Route 29.	RP
18880	Roxanne Ritchie's vagina.	RP
18881	RPAnons.	RP
18882	Ruby City.	RP
18883	Rushing to dear_mun to post about the latest global tragedy in-character.	RP
18884	St-stuttered t-typing.	RP
18885	Obviously sameanoning.	RP
18886	Sample prompts.	RP
18887	Save The Earth.	RP
18888	Scathing anonymous criticism.	RP
18889	Scrambling to pass AC at the last minute.	RP
18890	Shounen retards.	RP
18891	Signal boosting an obvious hoax.	RP
18892	Slacktivism.	RP
18893	Social justice warriors.	RP
18894	Sora and Emperor Palpatine in an awkward, skeezy relationship.	RP
18895	Springing rape scenarios on people without asking.	RP
18896	Stormy's latest alias.	RP
18897	Superwholockvengers.	RP
18898	Surprise futa.	RP
18899	Tag nirvana.	RP
18900	Tentabulge headcanons.	RP
18901	Terminal Tokyo.	RP
18902	That Kronk.	RP
18903	That Patchouli.	RP
18904	The Box.	RP
18905	The dominate one.	RP
18906	The Love Hotel.	RP
18907	The medium divide.	RP
18908	The myriad of songs you associate with your OTP.	RP
18909	The paid account fairy.	RP
18910	The Royal Baby.	RP
18911	The Salkia Island award.	RP
18912	The whole game jumping on the villain before they have a chance to be villainous.	RP
18913	TL;DR.	RP
18914	TMI public plurks.	RP
18915	Touhou lesbians nobody wants to play with.	RP
18916	Tower of Animus.	RP
18917	Tryhards.	RP
18918	Tittybabies.	RP
18919	Tumblrinas.	RP
18920	Two lonely neckbeards playing out futa together because nobody else will.	RP
18921	Two years' worth of semen.	RP
18922	tYPING LIKE THIS???????? oH MY GKFOODODD??????	RP
18923	Unironically using the word "kawaii".	RP
18924	Username elitism.	RP
18925	Username squatting.	RP
18926	Vatheon.	RP
18927	Viewing anoncomms in flat-view like a heathen.	RP
18928	Visualosities.	RP
18929	Wank terriers.	RP
18930	Wankgate.	RP
18931	Wanking about games you aren't in.	RP
18932	Wanking about a private musebox.	RP
18933	wgar.	RP
18934	Whiteknighting.	RP
18935	Whoremongers.	RP
18936	Wrapping your hands around a penis and twisting in opposite directions.	RP
18937	Yaoi.	RP
18938	Zodion.	RP
18939	Verka Serduchka.	ESC
18940	Cezar Ouatu, his opera falsetto voice, his lifting dress and his naked dancers.	ESC
18941	EUUUUUUPHOOOORIAAAA.	ESC
18942	Loreen's hammertime dance.	ESC
18943	Ruslana's vast array of animals she may or may not have slain with her bare hands.	ESC
18944	Alexander Rybak.	ESC
18945	Eldar Gasimov's stone cold,, dead eyes.	ESC
18946	The Eurovision Song Contest.	ESC
18947	Loreen Talhaoui.	ESC
18948	Epic Sax Guy.	ESC
18949	Not being Jedward.	ESC
18950	Lena Meyer-Landrut.	ESC
18951	Helena Paparizou breathing a sigh of relief that she didn't win during the economic crisis.	ESC
18952	Emmelie de Forest's big doe-eyed look.	ESC
18953	ZELJKO YOU CHEAAAAAT.	ESC
18954	Lordi's entire army of makeup artists.	ESC
18955	Malena Ernman's massive arms.	ESC
18956	The shock and anger you feel when your neighbour doesn't give you 12 points.	ESC
18957	Showing you the Maiden Tower 15 times.	ESC
18958	The ABBApocalypse.	ESC
100456	The royal afterbirth.	HBS
100457	Having a strong opinion about Obamacare.	HBS
100463	Forcing a handjob on a dying man. 	HOCAH
100464	Ribs so good they transcend race and class.	HOCAH
100466	Carbon monoxide poisoning. 	HOCAH
100475	Punching a congressman in the face.	HOCAH
100467	Discharging a firearm in a residential area.	HOCAH
100472	Strangling a dog to make a point to the audience.	HOCAH
100473	A childless marriage.	HOCAH
100468	Getting eaten out while on the phone with Dad.	HOCAH
100469	Making it look like a suicide.	HOCAH
100471	An older man.	HOCAH
100474	My constituents.	HOCAH
18168	... . .-. . -. .. - -.—  (Serenity)	MSPA
18169	Rails with pails.	MSPA
18170	"Apple Juice."	MSPA
18171	The 7th Gate.	MSPA
18172	Accidentally touching Gamze's enormous codpiece.	MSPA
18173	An acrobatic fucking pirouette.	MSPA
18174	Alternian fine art.	MSPA
18175	Alternian rainbow-drinker romance novels.	MSPA
18176	Andrew Hussie.	MSPA
18177	Andrew Hussie's lips.	MSPA
18178	The animes.	MSPA
18179	Anonymous Soporifics Support.	MSPA
18180	Apple Juice.	MSPA
18181	Aradia Bot.	MSPA
18182	Aradia Megido.	MSPA
18183	Aradia's charred, rotting corpse.	MSPA
18184	Aranea Serket.	MSPA
18185	Aranea's exposition stand.	MSPA
18186	Arguing over troll sexuality.	MSPA
18187	ARquiusprite's muscles.	MSPA
18188	Arthour the lusus.	MSPA
18189	AVATAR.	MSPA
18190	Baby Dave.	MSPA
18191	Bard Quest.	MSPA
18192	Bec Noir.	MSPA
18193	Becoming Tumblr famous.	MSPA
18194	Being fuck deep in meowcats.	MSPA
18195	Being in a relationship with a non-Homestuck.	MSPA
18196	Being locked in a Prospitian prison.	MSPA
18197	Being the other guy.	MSPA
18198	BETTY FUCKING CROCKER.	MSPA
18199	Binge reading every fanfiction for a pairing and then hating yourself a little bit.	MSPA
18200	BL1ND JUST1C3.	MSPA
18201	Blackrom orgies.	MSPA
18202	Bro and Dave banging while Rose watches.	MSPA
18203	Bro.	MSPA
18204	Bro's rapping ventriloquism act.	MSPA
18205	Bro's death.	MSPA
18206	BUCKETS.	MSPA
18207	A bull penis cane.	MSPA
18208	Butler Island.	MSPA
18210	Caledscratch.	MSPA
18211	Caliborn.	MSPA
18212	Caliginous speed dating.	MSPA
18213	Calliope.	MSPA
18214	Can Town.	MSPA
18215	Cards Against Alternia.	MSPA
18216	Carlos Maraka.	MSPA
18217	Casey.	MSPA
18218	Centaur milk.	MSPA
18219	Charging down halls, shouting profanities and being silly.	MSPA
18220	Cherub m-preg.	MSPA
18221	Cherub mating rituals.	MSPA
18222	Chest of WHIMSY.	MSPA
18223	A chip in your heart that forces you to love.	MSPA
18224	Cliched JohnKat fanfiction.	MSPA
18225	Cod Palace.	MSPA
18226	Cod Tier Gamzee.	MSPA
18227	Communism!	MSPA
18228	The Condesce's crotch.	MSPA
18229	The Condesce's selfies.	MSPA
18230	Constantly breaking Hussie's copyright.	MSPA
18231	Cosplay sex.	MSPA
18232	Cosplayers who do photo shoots in bondage (God bless them).	MSPA
18233	Cosplayers who don't seal their paint.	MSPA
18234	Crabdad.	MSPA
18235	Creative uses for Aradia's whip.	MSPA
18236	Cronus Ampora.	MSPA
18237	Dad Egbert/Dad Crocker.	MSPA
18238	Dad's pipe.	MSPA
18239	Dad's fedora.	MSPA
18240	Damara Megido wearing white at her wedding.	MSPA
18241	Damara Megido.	MSPA
18242	Damara Megido's existence.	MSPA
18243	Dante Basco.	MSPA
18244	Dating exclusively within the fandom.	MSPA
18245	Dave Strider.	MSPA
18246	Dave's throbbing beef truncheon.	MSPA
18247	A dead Ms. Paint.	MSPA
18248	Destroying clocks.	MSPA
18249	Developing a deep fear of the sound of clown horns after becoming a Homestuck.	MSPA
18250	The Dildo of Oglogoth.	MSPA
18251	Dirk Strider.	MSPA
18252	Dirk's self-insert MLP fan character.	MSPA
18253	The Disciple.	MSPA
18254	Discovering Sollux is red-blue colorblind.	MSPA
18255	Doc Scratch.	MSPA
18256	The Dolorosa.	MSPA
18257	A dominant Kankri.	MSPA
18258	Drawing pornography for Caliborn.	MSPA
18259	The E%ecutor/Expatri8 Darkleer.	MSPA
18260	Elf tears.	MSPA
18261	Equius Zahhak.	MSPA
18262	Equius's choice ass.	MSPA
18263	Equius's copy of "Fifty Shades of Neigh."	MSPA
18264	Equius's towel.	MSPA
18265	Equius's used towel pile.	MSPA
18266	Eridan Ampora.	MSPA
18267	Eridan crying after pailing Vriska for the first time.	MSPA
18268	Eridan stripping to make rent.	MSPA
18269	Eridan's cape.	MSPA
18270	Eridan's empty quadrants.	MSPA
18271	Eridan's lowwer half.	MSPA
18272	Eridan's upper half.	MSPA
18273	The Exiles.	MSPA
18274	Fat Vriska.	MSPA
18275	Faygo.	MSPA
18276	Feferi Peixes.	MSPA
18277	The Felt.	MSPA
18278	Fiduspawn.	MSPA
18279	Fifty fucking Nepetas.	MSPA
18280	Filling all of your quadrants.	MSPA
18281	Finding grey paint on your bathroom door three weeks after the last meetup.	MSPA
18282	A five minute video of Cronus giving Kankri a blowjob.	MSPA
18283	Flighty broads.	MSPA
18284	Flipping the fuck out.	MSPA
18285	Game Bro Magazine.	MSPA
18286	Gamzee Makara.	MSPA
18287	Gamzee's clown horns.	MSPA
18288	gAmZeE'S pOtIoNs: 420 bOoNbUcKs.	MSPA
18289	Geromy.	MSPA
18290	Gl'bgolyb. AKA Feferi's fucking lusus.	MSPA
18291	The glory that is BroJohn.	MSPA
18292	Going to the bark side.	MSPA
18293	The Grand Highblood.	MSPA
18294	Grandpa Harley/Grandma English.	MSPA
18295	The Great Hiatus of 2013.	MSPA
18296	The green sun.	MSPA
18297	Grimbark Jade.	MSPA
18298	Groincobblers.	MSPA
18299	Gross misinterpretations of your favorite character.	MSPA
18300	The guy who fingered an Ampora.	MSPA
18301	The Handmaid.	MSPA
18302	Hateclown on the side.	MSPA
18303	Having STRONG surprise buttsex.	MSPA
18304	Hellmurder Island.	MSPA
18305	The hemospectrum.	MSPA
18306	Hemostuck.	MSPA
18307	Her Imperious Condescenscion.	MSPA
18308	Her Imperious Condescension's royal butt-plug collection.	MSPA
18309	The Hilarocaust.	MSPA
18310	Homesmut Voices.	MSPA
18311	The Homestuck drinking game (do a shot every time someone dies!)	MSPA
18312	Homestuck stealing all the fans from Hetalia and then subsequently watching all its fans leave for OFF and Danganronpa.	MSPA
18313	Homestuck.	MSPA
18314	Homosuck.	MSPA
18315	HONK HONK, MOTHER FUCKER.	MSPA
18316	Horsearoni.	MSPA
18317	Horuss Zahhak.	MSPA
18318	Hunk Rump Magazine.	MSPA
18319	Hussie constantly breaking copyright and then telling his fans to not break his copyright.	MSPA
18320	Hussie constantly breaking copyright.	MSPA
18321	Hussie jacking it to our tears of anguish.	MSPA
18322	The Insane Clown Posse.	MSPA
18323	Jade Harley.	MSPA
18324	Jade's dog penis and knot.	MSPA
18325	Jailbreak.	MSPA
18326	Jake English.	MSPA
18327	Jake English's assless chaps.	MSPA
18328	Jake English's choice ass.	MSPA
18329	Jake English's manhood.	MSPA
18330	Jane Crocker.	MSPA
18331	John Egbert.	MSPA
18332	John's Prankster's Gambit.	MSPA
18333	Just KNOWING that Slick is going to stab Ms. Paint.	MSPA
18334	Kanaya destroying Cantown.	MSPA
18335	Kanaya Maryam.	MSPA
18336	Kanaya's ashen promiscuity.	MSPA
18337	Kanaya's chainsaw.	MSPA
18338	Kankri Vantas.	MSPA
18339	Karkat actually topping, for once.	MSPA
18340	Karkat and Jade's adorable little of mpreg puppies.	MSPA
18341	Karkat dying of a burst blood vessel mid-rant.	MSPA
18342	Karkat going through puberty before every other troll and being, like, nine feet tall.	MSPA
18343	Karkat Tantrum Bingo.	MSPA
18344	Karkat Vantas.	MSPA
18345	Karkat's ragegasm.	MSPA
18346	Kawaii Yaoi.	MSPA
18347	Kurloz Makara.	MSPA
18348	Lame bucket jokes.	MSPA
18349	Latula Pyrope.	MSPA
18350	Laying back and thinking of Alternia.	MSPA
18351	Leprechaun m-preg.	MSPA
18352	Liberty. Reason. Justice. Civility. Edification. Perfection. MAIL.	MSPA
18353	Lil' Cal's dead eyes.	MSPA
18354	Lil' Cal.	MSPA
18355	Lil' Cal's raging boner.	MSPA
18356	Lil' Hal.	MSPA
18357	Lil' Seb.	MSPA
18358	Little children who poop hard in their baby ass diapers.	MSPA
18359	The little red arm-swingy-dealy thing or whatever it is called.	MSPA
18360	Lord English.	MSPA
18361	Lord English's peg leg.	MSPA
18362	Lucky Charms.	MSPA
18363	Maid Equius.	MSPA
18364	Maple Hoof.	MSPA
18365	March Eridan.	MSPA
18366	The Marquise Spinneret Mindfang.	MSPA
18367	Masturbating while thinking of your OTP.	MSPA
18368	Maxing out your credit cards to buy Homestuck merchandise.	MSPA
18369	The Mayor.	MSPA
18370	Meenah Piexes.	MSPA
18371	The mere concept of the Olive Garden.	MSPA
18372	Meulin Leijon.	MSPA
18373	The Midnight Crew.	MSPA
18374	Mierfa Durgas.	MSPA
18375	Mierfa Durgas' troll-horn nunchakus.	MSPA
18376	A mighty wwizard of wwhite science.	MSPA
18377	Mind honey.	MSPA
18378	Mister Dude, Sir Brah, Dood Dude, Vitamin D, Dude Esquire.	MSPA
18379	Mituna Captor.	MSPA
18380	Mom.	MSPA
18381	MS Paint Adventures.	MSPA
18382	Murdering angels.	MSPA
18383	Muscle beasts.	MSPA
18384	My Little Hoofbeast: Moirailigence Is Magic.	MSPA
18385	Nektan Whelan.	MSPA
18386	Neophyte Redglare.	MSPA
18387	Nepeta Leijon.	MSPA
18388	Nepeta's heat cycle.	MSPA
18389	Nepeta's shipping chart.	MSPA
18390	Never being able to look at apple juice, milk, buckets, or knitting needles without feeling a little bit uncormfortable.	MSPA
18391	Never dating a Serket.	MSPA
18392	Nic Cage saying "boner."	MSPA
18393	A Nicolas Cage body pillow.	MSPA
18394	Noping the fuck out of there.	MSPA
18395	Not shipping it.	MSPA
18396	Only cosplaying male characters when you get pregnant.	MSPA
18397	The Orphaner Dualscar.	MSPA
18398	Overtaking entire conventions.	MSPA
18399	A painting of a horse attacking a football player.	MSPA
18400	PantsKat.	MSPA
18401	Paradox slime.	MSPA
18402	Petstuck.	MSPA
18403	PipeFan413.	MSPA
18404	Plush Rump Magazine.	MSPA
18405	Plush rump.	MSPA
18406	Porrim Maryam.	MSPA
18407	Porrim's condom stash.	MSPA
18408	Porrim's motherly affections.	MSPA
18409	Post-apocalyptic shroudwear.	MSPA
18410	Problem Sleuth.	MSPA
18411	The Psiionic.	MSPA
18412	A rapist cuttlefish.	MSPA
18413	Recuperacoon.	MSPA
18414	The ridiculous fact that some people communicate without luminous rear ends.	MSPA
18415	Rose and Kanaya snuggling.	MSPA
18416	Rose Lalonde.	MSPA
18417	Rose telling John she's a lesbian and they will never be together.	MSPA
18418	Rose's review of "My Immortal."	MSPA
18419	Roxy Lalonde.	MSPA
18420	Rufio.	MSPA
18421	Rufioh Nitram.	MSPA
18422	Sacred leggings.	MSPA
18423	SBAHJ hentai doujinshi.	MSPA
18424	Schrödinger's Nepeta.	MSPA
18425	SCIENCE WAND!	MSPA
18426	Seadweller dick fins.	MSPA
18427	Shippers.	MSPA
18428	Shipping it.	MSPA
18429	The Shipping Olympics.	MSPA
18430	Shipping the fuck out of something.	MSPA
18431	Ships ending in -cest.	MSPA
18432	Shitty swords.	MSPA
18433	Shopping with Terezi.	MSPA
18434	Sick fires.	MSPA
18435	The significant purposes, biologically speaking, of troll nipples.	MSPA
18436	Skipping to Act 5.	MSPA
18437	The slammer.	MSPA
18438	A slaughtered sperm whale.	MSPA
18439	Sleeping ten people to a room at conventions.	MSPA
18440	Sloppy inter-species makeouts.	MSPA
18441	A smuppet in Dirk's pants.	MSPA
18442	Smuppets.	MSPA
18443	Sobbing uncontrollably while reading fanfiction.	MSPA
18444	Sollux Captor.	MSPA
18445	Sollux's bifurcated bone bulge.	MSPA
18446	Sopor pies.	MSPA
18447	SORD.	MSPA
18448	Soul portraits.	MSPA
18449	Species-swap fanfics.	MSPA
18450	Spidermom.	MSPA
18451	Staying up to three AM, cleaning the grey off every surface of your hotel room in a desperate bid to not get fined.	MSPA
18452	Stealing Tavros's wheelchair.	MSPA
18453	A Strider sandwich.	MSPA
18454	Stridercest.	MSPA
18455	The Sufferer/The Signless.	MSPA
18456	Sugoi Yuri.	MSPA
18457	The Summoner.	MSPA
18458	The sweat-drenched, rippling muscles of several truly majestically endowed hoofbeasts.	MSPA
18459	sweet bro and hell jeff.	MSPA
18460	TAB.	MSPA
18461	Tavros Nitram.	MSPA
18462	Tavros's wheelchair.	MSPA
18463	Telling Sollux what happens to male bees after sex.	MSPA
18464	Tentabulges.	MSPA
18465	Tentative thank-you stabs.	MSPA
18466	Terezi Pyrope.	MSPA
18467	That dead crow with the sword through it.	MSPA
18468	That human vacation with the giant red chimney-ass-hole.	MSPA
18469	That shitty apple.	MSPA
18470	That wonderful feeling when you take off your binder.	MSPA
18471	The "special attachments" we ALL know that Equius gave to AradiaBot.	MSPA
18472	Toilet displacement.	MSPA
18473	Topping from the bottom.	MSPA
18474	Triggers.	MSPA
18475	Troll blood.	MSPA
18476	Troll horns.	MSPA
18477	Troll Will Smith.	MSPA
18478	Trolls misunderstanding what "Bucket List" means.	MSPA
18479	Tumblr spoilers.	MSPA
18480	Tumblr user Egberts.	MSPA
18481	Tumblr user Pizza.	MSPA
18482	Tumblr.	MSPA
18483	Unreal air.	MSPA
18484	UPD8!!!!!!!!	MSPA
18485	UPS delivery woman Nepeta.	MSPA
18486	Viceroy Bubbles von Salamancer.	MSPA
18487	Vodka Mutini.	MSPA
18488	Vodka.	MSPA
21891	Mleko w tubce.	Pol
18489	Vriska dying after being stabbed by Terezi.	MSPA
18490	Vriska Serket.	MSPA
18491	Vriska's SEXY sex tips for having SEXY SEX!	MSPA
18492	A VrisKan waffle.	MSPA
18493	Warhammer of Zillyhoo.	MSPA
18494	What pumpkin?	MSPA
18495	When your favorite character dies.	MSPA
18496	where MAKING THIS HAPEN	MSPA
18497	Willingly filling buckets with Eridan.	MSPA
18498	World building!	MSPA
18499	The Wrinklefucker.	MSPA
18500	Your 300 pound matronly freight-train.	MSPA
18501	Your lusus giving you "The Talk."	MSPA
18502	Your Mary Sue fantroll.	MSPA
18503	Your privilege.	MSPA
18504	Your significant other coming home and finding you in full grey cosplay.	MSPA
18505	Beating the shit out of Terezi.	MSPA
18506	Jake English standing there like a fucking idiot.	MSPA
18507	Falling into a pool of lava.	MSPA
21780	Cygańska klštwa.	Pol
21781	Minuta ciszy.	Pol
21782	Gej party.	Pol
21783	Uczciwy gliniarz z niczym do stracenia.	Pol
21784	Głód.	Pol
21785	Bakteria żywišca się mięsem.	Pol
21786	Olewanie problemów trzeciego wiata.	Pol
21787	Sprone SMSy.	Pol
21788	Gwiazda porno.	Pol
21789	Mordowanie, palenie, gwałcenie.	Pol
21790	72 dziewice.	Pol
21791	Napad w bramie.	Pol
21792	Paradoks podróży w czasie.	Pol
21793	Złoty łańcuch.	Pol
21794	Konsultanci.	Pol
21795	Dług publiczny.	Pol
21796	Zrzucanie żyrandolu na przeciwniku i wjeżdzanie do góry po linie.	Pol
21797	Jarosław kaczyński.	Pol
21798	Nagoć.	Pol
21799	Terapia hormonalna.	Pol
21800	Rozbierania się do naga i oglšdanie cartoon network.	Pol
21801	udawane współczucie.	Pol
21802	Publiczne omieszanie.	Pol
21803	Używanie wspólnej strzykawki.	Pol
21804	Baby z nosa.	Pol
21805	Cud porodu.	Pol
21806	Obowišzki małżeńskie.	Pol
21807	Dezodorant AXE.	Pol
21808	Krew chrystusa.	Pol
21809	Przerażajšce wypadki podczas laserowego usuwania włosów.	Pol
21810	BATMAN!!!.	Pol
21811	Rolnictwo.	Pol
21812	Naturalna selekcja.	Pol
21813	Amatorskie aborcje.	Pol
21814	World of warcraft.	Pol
21815	Otyłoć.	Pol
21816	Homoerotyczna scena gry w siadkówkę .	Pol
21817	Szczękocisk.	Pol
21818	Taniec godowy.	Pol
21819	Skręt jšdra.	Pol
21820	Hot-dogi za 1zł.	Pol
21821	Tede.	Pol
21822	Ser topiony.	Pol
21823	Ataki dinozaurów.	Pol
21824	cišganie koszulki.	Pol
21825	"serek" z pod napletka.	Pol
21826	Alkocholizm.	Pol
21827	40-latek na rolkach.	Pol
21828	Obżeranie się i wymiotowanie.	Pol
21829	Olbrzymie lizaki.	Pol
21830	Wstręt do samego siebie.	Pol
21831	Dzieci na smyczy.	Pol
21832	Żałosna gra wstępna.	Pol
21833	Biblia.	Pol
21834	Niemieckie porno w lochach.	Pol
21835	Palenie się.	Pol
21836	Nastoletne cišże.	Pol
21837	Zostawianie kłopotliwych wiadomoci na poczcie głosowej.	Pol
21838	Cios podbrudkowy.	Pol
21839	Pracownicy działu obsługi klijenta.	Pol
21840	Wzwód trwajšcy ponad 4 godziny.	Pol
21841	Moje genitalia.	Pol
21842	Podrywanie dziewczyny w klinice aborcyjnej.	Pol
21843	Nauka.	Pol
21844	Nieodwzajemniony sex oralny.	Pol
21845	Ptaki nieloty.	Pol
21846	Mocne sztachnięcie.	Pol
21847	Tortury.	Pol
21848	Zbilansowane niadanie.	Pol
21849	Faktyczne zabranie dziecku cukierka.	Pol
21850	Fundacja Polsat dzieciš.	Pol
21851	Potajemne drapanie się po tyłku.	Pol
21852	Pasywno-agresywne ogłoszenia.	Pol
21853	Chińska drużyna gimnastyczna.	Pol
21854	Popuszczenie w majtki.	Pol
21855	Zmazy nocne.	Pol
21856	Żydzi.	Pol
21857	Potężne uda.	Pol
21858	Puszczanie oczek do starszych ludzi.	Pol
21859	Delikatne pieszczoty wewnętrznej częci uda.	Pol
21860	Napięcie seksualne.	Pol
21861	Zakazany owoc.	Pol
21862	Szkieletor.	Pol
21863	Whiskas@.	Pol
21864	Bogactwo.	Pol
21865	Słodka zemsta.	Pol
21866	PiS.	Pol
21867	Anna mucha.	Pol
21868	Macanie.	Pol
21869	Piloci kamikaze.	Pol
21870	Andzej grabowski.	Pol
21871	Propaganda homoseksualna.	Pol
21872	Ciężko pracujšcy cygan.	Pol
21873	Sokół z czapkš na głowie.	Pol
21874	Ministranci.	Pol
21875	Bycie tak złym że aż Ci staje.	Pol
21876	Darmowe próbki.	Pol
21877	Wielkie halo o nic.	Pol
21878	Właciwe postępowanie.	Pol
21879	Laktacja.	Pol
21880	Pokój na wiecie.	Pol
21881	Robocop.	Pol
21882	Bezczelnoć.	Pol
21883	Justin bieber.	Pol
21884	Krasnoludki.	Pol
21885	Niestosowne jodłowanie.	Pol
21886	Dojrzewanie płuciowe.	Pol
21887	Duchy.	Pol
21888	Niesymetryczne sztuczne piersi.	Pol
21889	Palcówka.	Pol
21890	Kuba wojewudzki zaczepiony mosznš o haczyk od zasłony.	Pol
21892	Policyjna przemoc.	Pol
21893	Generał Wojciech Jaruzelski.	Pol
21894	Dzieci.	Pol
21895	Skalpowanie.	Pol
21896	Smsowanie.	Pol
21897	Dokładnie to czego się spodziewasz.	Pol
21898	To uczucie gdy wydaję Ci się, że to tylko beknięcie, a okazuje się że to rzyg.	Pol
21899	Leki na ADHD.	Pol
21900	Komurki macierzyste.	Pol
21901	Lobotomia szpikulcem do lodu.	Pol
21902	Borys Szyc.	Pol
21903	Opryszczka.	Pol
21904	Kaszaloty.	Pol
21905	Bezdomni.	Pol
21906	Petting.	Pol
21907	Kazirodztwo.	Pol
21908	Pac-man tryskajšcy spermš w amoku.	Pol
21909	Mim w trakcie zawału.	Pol
21910	Robert Burneika.	Pol
21911	Bóg.	Pol
21912	Złoty deszcz.	Pol
21913	Emocje.	Pol
21914	Oblizywanie rzeczy, oznaczyć je jako swoje .	Pol
21915	Tyskie.	Pol
21916	Łożysko.	Pol
21917	Spontaniczne samospalanie.	Pol
21918	Przyjaciele z bonusem.	Pol
21919	Malowanie palcami.	Pol
21920	Zapach starych ludzi.	Pol
21921	Moje wewnętrzne demony.	Pol
21922	Gšbka pełna kocich sików.	Pol
21923	Juzef Piłsudski.	Pol
21924	Przytulanie.	Pol
21925	Zielsko/jaranie/palenie/trawa/ganja.	Pol
21926	Walki kogutów.	Pol
21927	Strzelanie do swoich.	Pol
21928	Lech wałęsa.	Pol
21929	Rozczarowujšce przyjęcie urodzinowe.	Pol
21930	Finalista kangura.	Pol
21931	Kucyk.	Pol
21932	Olaf Lubaszenko.	Pol
21933	Wyrusznie w stronę zachodu słońca.	Pol
21934	Nagły zwrot akcji.	Pol
21935	Pedofile.	Pol
21936	Drożdże.	Pol
21937	Okradanie grobów.	Pol
21938	Katapulty.	Pol
21939	Biedni ludzie.	Pol
21940	Moc Jedi.	Pol
21941	Paplanie.	Pol
21942	Zdięcia piersi.	Pol
21943	Nelli Rokita.	Pol
21944	Amerykańscy gradiatorzy.	Pol
21945	Bycie naprawdę mocno spalonym.	Pol
21946	Scjentologia.	Pol
21947	Leczenie homoseksualizmu.	Pol
21948	Igraszki.	Pol
21949	Dwóch karłów srajšcych do wiadra.	Pol
21950	Ku Klux klan.	Pol
21951	Czyngis-chan.	Pol
21952	Metamfetamina.	Pol
21953	Poddaństwo.	Pol
21954	Nie rozmawianie z obcymi.	Pol
21955	Kariera aktorska Przemysława Salety.	Pol
21956	Hasanie.	Pol
21957	Samosšd.	Pol
21958	Ocenzurowanie bukkake.	Pol
21959	Wieczny smutek.	Pol
21960	Rasizm.	Pol
21961	Rzut karłem.	Pol
21962	Bezchmurne niebo i wiecšce słońce.	Pol
21963	Małpa palšca cygara.	Pol
21964	Gwałtowna powód.	Pol
21965	Suche wymioty.	Pol
21966	Terorryci.	Pol
21967	Britney Spears w wieku 55 lat.	Pol
21968	Niastawienie.	Pol
21969	Spontaniczne wyrwanie się do tańca i piewu.	Pol
21970	Tršd.	Pol
21971	Kolczyki do sutków.	Pol
21972	Serce dziecka.	Pol
21973	Szczeniaczki.	Pol
21974	Pobudka na parkingu będšc na wpół nagim.	Pol
21975	Pochwała Marii Czubaszek.	Pol
21976	To miejsce u mężczyzny mędzy jšdrami a odbytem.	Pol
21977	Aktywne słuchanie.	Pol
21978	Czystki etmiczne.	Pol
21979	Parowóz tomek.	Pol
21980	Czekanie do lubu.	Pol
21981	Niewyobrazalna głupota.	Pol
21982	Euphoria Calvina Kleina.	Pol
21983	Przekazywanie dalej niechcianych prezentów.	Pol
21984	Autokalibalizm.	Pol
21985	Problemy z erekcjš.	Pol
21986	Moja kolekcja nowoczesnych gadżetów erotycznych.	Pol
21987	Papież.	Pol
21988	Biali ludzie.	Pol
21989	Porno z mackami.	Pol
21990	Konwulsynje wymiotujšcy Kuba Wojewódzki podczas gdy chmara pajšków wylęga się w jego mózgu i eksploduje z kanalików łzowych.	Pol
21991	Za dużo żelu we włosach.	Pol
21992	Oszukiwanie na olimpiadzie specialnej.	Pol
21993	Charyzma.	Pol
21994	Tomasz Karolak.	Pol
21995	Tomasz Kot.	Pol
21996	Zespół Feel.	Pol
21997	Zerknięcie.	Pol
21998	Sranie w tš i spowrotem w nieskończonoć.	Pol
21999	Menstruacja.	Pol
22000	Dzieci z rakiem odbytu.	Pol
22001	lšsk.	Pol
22002	Naruszanie podctawowych praw człowieka.	Pol
22003	Gwałt na randce.	Pol
22004	Bycie bajecznie pięknym.	Pol
22005	Nekrofilia.	Pol
22006	Centaury.	Pol
22007	Adam Słodowy.	Pol
22008	Murzyni.	Pol
22009	Rycerskoć.	Pol
22010	Suki.	Pol
22011	Głęboko upoledzeni.	Pol
22012	Chwytajšce za serce sierotki.	Pol
22013	Peczenie odbytu.	Pol
22014	Kolejny, cholerny film z wampirami.	Pol
22015	Prawdzine znaczenie wišt.	Pol
22016	Ten pas na brzuch z tv mango.	Pol
22017	Rodzenie kamienia nerkowego.	Pol
22018	Wybielony odbyt.	Pol
22019	Cybernetyczne ulepszenia.	Pol
22020	Chłopacy którzy nie dzwoniš póniej do dziewczyn poznanych na imprezie.	Pol
22021	Masturbacja.	Pol
22022	Pierdzenie pochwš.	Pol
22023	Ukrywanie wzwodu.	Pol
22024	Jadalna bielizna.	Pol
22025	Viagra@.	Pol
22026	Za goršca zupa.	Pol
22027	Machomet(chwała mu po wieczne czasy).	Pol
22028	Seks niespodzianka!.	Pol
22029	Picie w samotnoci.	Pol
22030	Dziurawe ręce.	Pol
22031	Liczne rany kłute.	Pol
22032	Ubrudzenie się.	Pol
22033	Wykorzystanie dzieci.	Pol
22034	Koraliki analne.	Pol
22035	Ofiary wród cywili.	Pol
22036	Piotr Adamczyk.	Pol
22037	Konina.	Pol
22038	Naprawde fajny kapelusz.	Pol
22039	Zabłškany włos łonowy.	Pol
22040	Kochanie się w tyłek.	Pol
22041	Dokarmianie Magdy Gessler.	Pol
22042	Uczenie robota miłoci.	Pol
22043	Wpierdol.	Pol
22044	Młyn pełen trupów.	Pol
22045	Chocapic.	Pol
22046	Noszenie bielizny na lewš stronę by uniknšć prania.	Pol
22047	miercionony laser.	Pol
22048	Zamrażarka pełna organów.	Pol
22049	Amerykański sen.	Pol
22050	Mokry bšk.	Pol
22051	Martwe niemowlęta.	Pol
22052	Napletek.	Pol
22053	Solówka na saksofonie.	Pol
22054	Niemcy.	Pol
22055	Płód.	Pol
22056	Janusz Korwin-Mikke.	Pol
22057	Amputacja.	Pol
22058	Status mojego zwišzku.	Pol
22059	Pszczoły?.	Pol
22060	Erotyczna wersja Harrego Pottera.	Pol
22061	Studia.	Pol
22062	Upijanie się płynem do spryskiwaczy.	Pol
22063	Nazici.	Pol
22064	Zazywanie krokodyla.	Pol
22065	Steven Hawking mówišcy wiństwa.	Pol
22066	Martwi rodzice.	Pol
22067	Przeciwstawne kciuki.	Pol
22068	Gadanie głupot.	Pol
22069	Piły łšńcuchowe zamiast ršk.	Pol
22070	Cezary Pazura.	Pol
22071	Dziecięce konkursy pięknoci.	Pol
22072	Wybuchy.	Pol
22073	Wšchanie kleju.	Pol
22074	Kuba Wojewódzki nękany przez rój myszołowów.	Pol
22075	Tabletki gwałtu.	Pol
22076	Moja pochwa.	Pol
22077	Spodnie bez tyłka.	Pol
22078	Dawanie z siebie 100%.	Pol
22079	Jej wysokoć królowa Elżbieta II.	Pol
22080	Bycie zmarginazowanym.	Pol
22081	Gobliny.	Pol
22082	Nadzieja.	Pol
22083	Mikro penis.	Pol
22084	Moja dusza.	Pol
22085	Wikingowie.	Pol
22086	Piękni ludzie.	Pol
22087	Uwodzenie.	Pol
22088	Kompleks Edypa.	Pol
22089	Gęsi.	Pol
22090	Globalne ocieplenie.	Pol
22091	Robienie smutnej minki.	Pol
22092	Kobiece prawa wyborcze.	Pol
22093	Dziurawa prezerwatywa.	Pol
22094	Sędzia Anna Maria Wesołowska.	Pol
22095	Afrykańskie dzieci.	Pol
22096	Obcišganie w czasie jazdy autem.	Pol
22097	Spektaktualne mięnie brzucha.	Pol
22098	Mazurek.	Pol
22099	Zaspany lew w zoo.	Pol
22100	Paczka magicznych fasolek.	Pol
22101	Złe decyzje życiowe.	Pol
22102	Moje życie seksualne.	Pol
22103	Żółw jaszczurowaty gryzšcy cie w końcówkę penisa.	Pol
22104	Wybuch termo jšdrowy.	Pol
22105	łechtaczka.	Pol
22106	Donald Tusk.	Pol
22107	Wymiana uprzejnoci.	Pol
22108	Zabawa w wampira podczas miesišczki.	Pol
22109	Wielki wybuch.	Pol
22110	Miny lšdowe.	Pol
22111	Znajomi wyjadajšcy całš zagrychę.	Pol
22112	Kozy pożerajšce dzieci.	Pol
22113	Jezioro łabędzie.	Pol
22114	Spuszcznie się do basenu dziecięcych łez.	Pol
22115	Męska pała.	Pol
22116	Czas dla siebie.	Pol
22117	Opowiadanie kawałów o żydach w nieodpowiednim momecie.	Pol
22118	Morze problemów.	Pol
22119	Fantazje o drwalach.	Pol
22120	Głos Krystyny Czubówny.	Pol
22121	Kobiety w reklamach jogurtów.	Pol
22122	Ziołowe tabletki na problemy z potenciš.	Pol
22123	Bycie pierdolonym czarodziejem.	Pol
22124	Piercing genitaliów.	Pol
22125	Znoni transwestyci.	Pol
22126	Seksowne walki na poduszki.	Pol
22127	Jšdra.	Pol
22128	Babcia.	Pol
22129	Tarcie.	Pol
22130	Ludzie zawszę psujš dobrš zabawę.	Pol
22131	Pierdzenie o odchodzenie.	Pol
22132	Bycie chujem w stosunku do dzieci.	Pol
22133	Zastawianie pułapek na złodziei.	Pol
22134	Materac z TV mango.	Pol
22135	Umieranie.	Pol
22136	Huragan Katrina.	Pol
22137	Geje.	Pol
22138	Ludzka Głupota.	Pol
22139	Mężczyżni.	Pol
22140	Amisze.	Pol
22141	Pterodaktyre jaja.	Pol
22142	Zdjęcia integracyjne.	Pol
22143	Guz mózgu.	Pol
22144	Karty przeciwko ludzkoci.	Pol
22145	Strach w czystej postaci.	Pol
22146	Mleczarz.	Pol
22147	Niewyparzona buzia.	Pol
22148	Lubię cycki.	Pol
22149	Kalesony.	Pol
22150	Nie mam teamu.	Pol
22151	Że ja?!?!?!?.	Pol
22152	Za kalimdor.	Pol
22153	Za horde!..	Pol
22154	Rabarbar.	Pol
22155	Kotlecik.	Pol
22156	Tybetańscy mnisi.	Pol
22157	Tampon.	Pol
22158	Sałatka.	Pol
22159	Władca niebiańskich penisów.	Pol
22160	Syrenka ladacznica.	Pol
22161	Zużyte majtki.	Pol
22162	Bijcie masterczułki.	Pol
22163	Krucjata lezbijek.	Pol
3664	The shitty remains of Taco Bell®.	RS
3674	Poorly written Star Wars® fan fiction.	RS
3681	Mountain Dew® Baja Blast.	RS
3685	Apples to Apples®.	RS
11	Viagra®.	\N
100008	The sound a single ThunderStix® makes.	SG
100067	The Quesadilla Explosion Salad™ from Chili's®.	X3
404	A Super Soaker™ full of cat pee.	\N
482	Home video of Oprah sobbing into a Lean Cuisine®.	1.2
3756	Rich, chocolatey Ovaltine®.	RS
4005	A Crystal Pepsi®-flavored enema.	TGWTG
4060	Crystal Pepsi®.	TGWTG
10082	Bad Dragon™ cumlube.	Furry
4531	Thinking Misty from Pokémon is... kinda sexy.	AN
4643	Bear punching, tiger chopping, shark suplexing, & helicopter bodyslamming.	AN
4798	An argument lasting over an hour about what moé really is.	AN
4893	A Fleshlite™.	MrMan
15461	Moé schoolgirl Hitler.	ANX1
10619	the orange gem from Bejeweled™	Vidya
100261	Filling every pouch of a UtiliKilt™ with pizza. (12/44)	PAX
100367	Whatever a McRib® is made of.	X4
16747	>BLAM	/tg/
16940	Gav & Bob	/tg/
18209	C4NDY R3D BLOOD >:]	MSPA
100275	The collective wail of every Magic player suddenly realizing that they've spent hundreds of dollars on pieces of cardboard.	13PAX
100296	Legendary Creature – Robert Khoo.	13PAX
100279	Filling every pouch of a UtiliKilt™ with pizza.	13PAX
\.


--
-- Name: white_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cah
--

SELECT pg_catalog.setval('white_cards_id_seq', 22163, true);


--
-- Name: black_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: cah; Tablespace: 
--

ALTER TABLE ONLY black_cards
    ADD CONSTRAINT black_cards_pkey PRIMARY KEY (id);


--
-- Name: black_cards_text_key; Type: CONSTRAINT; Schema: public; Owner: cah; Tablespace: 
--

ALTER TABLE ONLY black_cards
    ADD CONSTRAINT black_cards_text_key UNIQUE (text);


--
-- Name: card_set_black_card_pkey; Type: CONSTRAINT; Schema: public; Owner: cah; Tablespace: 
--

ALTER TABLE ONLY card_set_black_card
    ADD CONSTRAINT card_set_black_card_pkey PRIMARY KEY (card_set_id, black_card_id);


--
-- Name: card_set_pkey; Type: CONSTRAINT; Schema: public; Owner: cah; Tablespace: 
--

ALTER TABLE ONLY card_set
    ADD CONSTRAINT card_set_pkey PRIMARY KEY (id);


--
-- Name: card_set_white_card_pkey; Type: CONSTRAINT; Schema: public; Owner: cah; Tablespace: 
--

ALTER TABLE ONLY card_set_white_card
    ADD CONSTRAINT card_set_white_card_pkey PRIMARY KEY (card_set_id, white_card_id);


--
-- Name: white_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: cah; Tablespace: 
--

ALTER TABLE ONLY white_cards
    ADD CONSTRAINT white_cards_pkey PRIMARY KEY (id);


--
-- Name: white_cards_text_key; Type: INDEX; Schema: public; Owner: cah; Tablespace: 
--

CREATE INDEX white_cards_text_key ON white_cards USING btree (text);


--
-- Name: fk513da45c997611f9; Type: FK CONSTRAINT; Schema: public; Owner: cah
--

ALTER TABLE ONLY card_set_black_card
    ADD CONSTRAINT fk513da45c997611f9 FOREIGN KEY (black_card_id) REFERENCES black_cards(id);


--
-- Name: fk513da45cb2505f39; Type: FK CONSTRAINT; Schema: public; Owner: cah
--

ALTER TABLE ONLY card_set_black_card
    ADD CONSTRAINT fk513da45cb2505f39 FOREIGN KEY (card_set_id) REFERENCES card_set(id);


--
-- Name: fkc2487272b2505f39; Type: FK CONSTRAINT; Schema: public; Owner: cah
--

ALTER TABLE ONLY card_set_white_card
    ADD CONSTRAINT fkc2487272b2505f39 FOREIGN KEY (card_set_id) REFERENCES card_set(id);


--
-- Name: fkc2487272bfd29b4d; Type: FK CONSTRAINT; Schema: public; Owner: cah
--

ALTER TABLE ONLY card_set_white_card
    ADD CONSTRAINT fkc2487272bfd29b4d FOREIGN KEY (white_card_id) REFERENCES white_cards(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

