--
-- File generated with SQLiteStudio v3.1.1 on ter dez 18 04:10:08 2018
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Comment
CREATE TABLE Comment (id INTEGER PRIMARY KEY, text VARCHAR NOT NULL, datetime DATETIME NOT NULL, post INTEGER REFERENCES Post (id) ON DELETE CASCADE NOT NULL, user INTEGER REFERENCES User (id) ON DELETE CASCADE NOT NULL, points INTEGER NOT NULL DEFAULT (0));
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (1, 'hello there ltw', '2016-04-12 19:00:00', 1, 201605926, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (2, 'Gostei, continua', '2018-12-01 04:59:00', 1, 201504711, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (3, 'Que péssima dúvida', '2018-11-15 21:00:00', 2, 201504711, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (5, 'zypw', '2018-12-18 12:00:00', 85, 201608321, -1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (6, '8	4qd	7k
j', '2018-12-18 12:00:00', 12, 201608328, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (7, 'ij	l9mscs', '2018-12-18 12:00:00', 35, 201608322, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (8, 'c02f', '2018-12-18 12:00:00', 10, 201608323, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (9, 'xxvr9a', '2018-12-18 12:00:00', 14, 201608322, 4);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (10, 'oe	4e6', '2018-12-18 12:00:00', 92, 201608321, -1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (11, 'ga2x', '2018-12-18 12:00:00', 27, 201608320, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (12, 'sps6hjtyt', '2018-12-18 12:00:00', 21, 201608325, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (13, 'g7o	0axt3', '2018-12-18 12:00:00', 90, 201608323, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (14, ' 4htc', '2018-12-18 12:00:00', 26, 201608324, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (15, 'hdlovuqyt', '2018-12-18 12:00:00', 104, 201608322, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (16, 'dr8b', '2018-12-18 12:00:00', 51, 201608323, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (17, 'fqjbf', '2018-12-18 12:00:00', 38, 201608327, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (18, 'd7ibg8', '2018-12-18 12:00:00', 90, 201608327, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (19, 'gdb
idmh0', '2018-12-18 12:00:00', 39, 201608322, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (20, 'm7sibb	3', '2018-12-18 12:00:00', 84, 201608328, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (21, 'b
zbt1lns', '2018-12-18 12:00:00', 30, 201608329, 5);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (22, '8vam', '2018-12-18 12:00:00', 99, 201608328, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (23, 'texbrdobr', '2018-12-18 12:00:00', 6, 201608325, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (24, 'Pensava que isto era um site de dúvidas :/', '2018-12-18 12:00:00', 72, 201608331, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (25, 'kx6nwcp', '2018-12-18 12:00:00', 43, 201608324, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (26, 'k73j', '2018-12-18 12:00:00', 15, 201608323, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (27, 'cyrqd', '2018-12-18 12:00:00', 5, 201608325, 5);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (28, 'km65', '2018-12-18 12:00:00', 28, 201608330, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (29, 'qohcn
bg', '2018-12-18 12:00:00', 16, 201608327, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (30, 'p8rf7
wsg', '2018-12-18 12:00:00', 92, 201608329, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (31, 'airqtt336', '2018-12-18 12:00:00', 15, 201608320, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (32, 'k39mpb f', '2018-12-18 12:00:00', 36, 201608320, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (33, 'Pensava que isto era um site de dúvidas :/', '2018-12-18 12:00:00', 96, 201608331, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (34, 'cg9unvh7', '2018-12-18 12:00:00', 93, 201608330, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (35, 'j5cvtqme
h', '2018-12-18 12:00:00', 55, 201608320, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (36, '8 3mqhzk6r', '2018-12-18 12:00:00', 13, 201608324, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (37, 'vvv7', '2018-12-18 12:00:00', 48, 201608330, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (38, 'm30g 5eg', '2018-12-18 12:00:00', 49, 201608330, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (39, '4zg4 0', '2018-12-18 12:00:00', 65, 201608324, 4);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (40, 'a8e 5', '2018-12-18 12:00:00', 46, 201608321, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (41, '6ck2i7', '2018-12-18 12:00:00', 105, 201608321, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (42, '1aamtbid
a', '2018-12-18 12:00:00', 69, 201608326, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (43, 'scenf', '2018-12-18 12:00:00', 20, 201608329, -1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (44, 't326l51ox', '2018-12-18 12:00:00', 99, 201608326, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (45, 'sgf8ud', '2018-12-18 12:00:00', 44, 201608321, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (46, 'gxp3c', '2018-12-18 12:00:00', 31, 201608322, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (47, 'Pensava que isto era um site de dúvidas :/', '2018-12-18 12:00:00', 5, 201608331, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (48, 'Pensava que isto era um site de dúvidas :/', '2018-12-18 12:00:00', 97, 201608331, 6);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (49, 'fxf	xb ge', '2018-12-18 12:00:00', 24, 201608324, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (50, 'g3
fd', '2018-12-18 12:00:00', 87, 201608325, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (51, '6msu', '2018-12-18 12:00:00', 87, 201608321, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (52, '2q4hw', '2018-12-18 12:00:00', 43, 201608324, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (53, 'do
	u
q8', '2018-12-18 12:00:00', 103, 201608322, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (54, 'ttc5r', '2018-12-18 12:00:00', 69, 201608328, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (55, '	idi i8a', '2018-12-18 12:00:00', 51, 201608323, 4);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (56, 'ike4sz6m', '2018-12-18 12:00:00', 17, 201608324, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (57, '1k	f68s', '2018-12-18 12:00:00', 23, 201608323, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (58, 'BONECOS!!', '2018-12-18 12:00:00', 19, 201608321, 4);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (59, 'natal', '2018-12-18 12:00:00', 5, 201608324, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (60, 'Pensava que isto era um site de dúvidas :/', '2018-12-18 12:00:00', 54, 201608331, -1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (61, '9gwi5mcl', '2018-12-18 12:00:00', 98, 201608328, 4);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (62, '3meai9 k', '2018-12-18 12:00:00', 2, 201608325, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (63, 'rl g	ojpi', '2018-12-18 12:00:00', 67, 201608322, 3);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (64, 'xdny51	z', '2018-12-18 12:00:00', 50, 201608321, 5);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (65, 'liy	gr	', '2018-12-18 12:00:00', 109, 201608324, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (66, 'ur7r 67', '2018-12-18 12:00:00', 61, 201608323, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (67, 'zut43jyf', '2018-12-18 12:00:00', 6, 201608328, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (68, 'pkrxb', '2018-12-18 12:00:00', 2, 201608320, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (69, 'w9dl04yh', '2018-12-18 12:00:00', 35, 201608325, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (70, 'z5fe', '2018-12-18 12:00:00', 65, 201608323, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (71, 'uk5y', '2018-12-18 12:00:00', 96, 201608320, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (72, 'ieq2bd', '2018-12-18 12:00:00', 103, 201608330, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (73, 'Pensava que isto era um site de dúvidas :/', '2018-12-18 12:00:00', 74, 201608331, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (74, ' uh8', '2018-12-18 12:00:00', 14, 201608326, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (75, 'o42upo39vm', '2018-12-18 12:00:00', 33, 201608327, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (76, 'djk47
', '2018-12-18 12:00:00', 66, 201608327, 0);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (77, 'v03ypmel25', '2018-12-18 12:00:00', 47, 201608320, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (78, 'j	bl256 r', '2018-12-18 12:00:00', 48, 201608321, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (79, '70v kj', '2018-12-18 12:00:00', 104, 201608323, 1);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (80, 'v
t7c7mz', '2018-12-18 12:00:00', 60, 201608328, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (81, 'fkt7ymy8kp', '2018-12-18 12:00:00', 16, 201608322, 4);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (82, '8rc9kyfb', '2018-12-18 12:00:00', 42, 201608320, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (83, 'mv7z7
g', '2018-12-18 12:00:00', 28, 201608328, 2);
INSERT INTO Comment (id, text, datetime, post, user, points) VALUES (84, '98day', '2018-12-18 12:00:00', 24, 201608321, 1);

-- Table: Post
CREATE TABLE Post (id INTEGER PRIMARY KEY, subject INTEGER REFERENCES Subject (id) ON DELETE CASCADE NOT NULL, title VARCHAR NOT NULL, text VARCHAR NOT NULL, datetime DATETIME NOT NULL, creator INTEGER REFERENCES User (id) ON DELETE CASCADE NOT NULL, points INTEGER NOT NULL DEFAULT (0));
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (1, 1, 'Ola', 'Tenho dúvidas nisto..', '1996-04-12 22:45:00', 201605926, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (2, 23, 'qo6jkzxlhmzqp', '3ot83r9cumhobu8c', '2013-12-13 10:53:17', 201608326, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (3, 40, 'Nova dúvida', 'Não percebo nada...', '2018-12-12 07:00:00', 201504711, 2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (4, 14, 'a', 'a', '2018-12-13 01:59:11', 201504711, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (5, 23, 'qwswq', 'swq', '2018-12-13 02:00:17', 201504711, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (6, 6, 'Entrei na FEUP', 'Olá a todos', '2018-12-13 10:54:00', 201504711, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (7, 2, 'Oi', 'Ali', '2018-12-16 22:47:05', 201605926, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (8, 1, 'mdis', 'oi babes', '2018-12-16 22:47:55', 201605926, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (9, 24, 'ESOF ainda existe???', 'Pessoal a serio que ainda não cancelaram esta cadeira??', '2018-12-16 08:47:05', 201608330, 20);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (10, 26, 'Thor Rules!!!!', 'Thor smashes :) :)', '1996-04-12 04:20:00', 201504712, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (12, 36, 'f4
940vrq
a65', 'c8z
 	 ', '2018-12-16 08:47:05', 201608324, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (13, 22, 'uaz8v4n9sdw4', '6d261fc9iumawbc1', '2018-12-16 08:47:05', 201608326, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (14, 24, '3c7	tn	kpybd0gk4ivo', 'v4	8ubl', '2018-12-16 08:47:05', 201608330, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (15, 30, 'yc0gr5	q', '56jptzj
', '2018-12-16 08:47:05', 201608330, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (16, 11, 'm
ca1hawv3b9puo4	jj', '	4ortc4wgpmoofa', '2018-12-16 08:47:05', 201608328, 3);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (17, 28, '7he1m6	qdamg', 'anif
a6k4uv3er03bh46t', '2018-12-16 08:47:05', 201608326, 2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (18, 14, 'u
s9g uhu', 'uvsiw6vvbta16oe7jby n', '2018-12-16 08:47:05', 201608328, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (19, 29, '62 sf92dfoliuq9h', 'r
2adirolrhocy8', '2018-12-16 08:47:05', 201608324, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (20, 4, '8ir7x41os
eyd4l2dsjj', 'dtq5b2wlq', '2018-12-16 08:47:05', 201608323, -2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (21, 40, 'pi5	1gkrz', 'ccnshg4c	yl3w
75ply0r', '2018-12-16 08:47:05', 201608324, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (22, 34, '8wv	oxmkhcxx', 'pz2o
lqrp9w	', '2018-12-16 08:47:05', 201608322, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (23, 9, 'j1	kqihx	2uj', '6wa4sbp135o', '2018-12-16 08:47:05', 201608326, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (24, 3, '22kc3px
	1 vd6gxavt', 'dq4cnt75t69sah06hf', '2018-12-16 08:47:05', 201608326, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (25, 24, 'wtxi', ' wbkrop5z	xwachfd3c', '2018-12-13 02:00:17', 201608322, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (26, 31, '056bfny 
3m7vrosen45', 'wfc0ja1sozx52750p9rd', '2018-12-13 02:00:17', 201608320, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (27, 9, 'zd99g8j
	 6qvj ', 'kl4p odemup52', '2018-12-13 02:00:17', 201608320, -2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (28, 19, '6lxjjz88', 'nlgcsjcb', '2018-12-13 02:00:17', 201608321, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (29, 32, 'rom2897tfzn
wzoqu8', 'tx g 28qf5f8', '2018-12-13 02:00:17', 201608321, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (30, 28, '8w15r9k1g7fq	5um4r', ' 7416 gcyoqrqf', '2018-12-13 02:00:17', 201608321, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (31, 19, '4j5400y6b	4ma	rl', 'ipu2	g6 5e19vy3ckp', '2018-12-13 02:00:17', 201608329, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (32, 25, '5pw
f4nfi80 vw 3 o', '3he059bfid', '2018-12-13 02:00:17', 201608321, 2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (33, 18, 'xs4poopz', 'st uhutiq 	gt', '2018-12-13 02:00:17', 201608328, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (34, 1, '8gcjcfonzv', '8jnjp2y8 wic nci5xkav', '2018-12-13 02:00:17', 201608326, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (35, 13, 'qt35dl', 'tgqe404wlm6', '2018-12-13 02:00:17', 201608329, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (36, 25, '1doi	392e	s', ' fwf', '2018-12-13 05:03:17', 201608321, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (37, 28, '15jnmsp7m8o', 'h0huta
5', '2018-12-13 05:03:17', 201608330, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (38, 32, '3ziok
dk72', 'ul691h6
f87jh6f8o', '2018-12-13 05:03:17', 201608329, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (39, 40, '69su1x
s', '7fat97', '2018-12-13 05:03:17', 201608322, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (40, 2, 'mm11d67cf 0sjmi', 'p7ls53qto', '2018-12-13 05:03:17', 201608323, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (41, 37, 't914940h', 'b
1xpr', '2018-12-13 05:03:17', 201608326, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (42, 14, 'kj9jk1m7g 	d', '3s1nqvp	t', '2018-12-13 05:03:17', 201608329, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (43, 39, 'xhs8g5esmpzi', 's	2y4rj3cnuae69fzrsd', '2018-12-13 05:03:17', 201608322, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (44, 10, '1gtwalem	c8m3q', '4jpn5zp79hj5
', '2018-12-13 05:03:17', 201608320, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (45, 18, 'sa	l59uxvaovuj0', 'f4mhjwj 8eg8y3vk', '2018-12-13 05:03:17', 201608325, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (46, 10, 'qaf7
2li7pgey	2s2', 'fst	4cz2h', '2018-12-13 05:03:17', 201608325, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (47, 17, 'vz2iex778m', 'hfk	', '2018-12-13 05:03:17', 201608324, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (48, 17, 'ed8fmim9zh', '
pjbo7
7vp', '2018-12-13 05:03:17', 201608325, -2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (49, 35, 'Nascemos pessoal ´:)', 'Nem me acredito que mal nascemos temos esta cadeira :/', '1998-01-01 00:00:17', 201608330, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (50, 11, 'pz15ek0fo46	x0bm', 'gy30uimnhu', '2018-12-13 05:03:17', 201608320, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (51, 21, '5r6d', '91kkq0	8wwyk8vm	2p	', '2018-12-13 05:03:17', 201608321, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (52, 5, '
 ie', '520uqhf1tg', '2018-12-13 05:03:17', 201608328, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (53, 5, '7
a6aui4fx1tmtbtx', 'g07hcw5', '2018-12-13 05:03:17', 201608322, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (54, 21, 'a5iez

ht apg9', 'jxlt6eq	vnvadk	fhzj', '2018-12-13 05:03:17', 201608328, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (55, 20, '6egf pdyqsy5e', '
87h', '2018-12-13 05:03:17', 201608321, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (56, 1, 'd7j4
jnu9 aws2i', 'y
6dcj1uu8', '2018-12-13 05:03:17', 201608326, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (57, 12, '9
8	iqjuko', 'ivtmfb4fzmvw8h9ilg', '2018-12-13 05:03:17', 201608321, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (58, 6, 'mtx76ao dce9it', 'ts8rqay	777cgty11 173gy', '2018-12-13 05:03:17', 201608324, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (59, 37, 'w3lhpd6c', 'qekn', '2018-12-13 05:03:17', 201608320, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (60, 10, 'r5ums83', 'y8t47h257bqt2
wdk8d', '2018-12-13 05:03:17', 201608323, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (61, 6, 'pv8b143yud3kd', 'ut
uv8k eb843o1', '2018-12-13 05:03:17', 201608326, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (62, 25, 'kg1kfj91l0d8p', '2s7jx9w
eg6hvu	ydm9', '2018-12-13 05:03:17', 201608326, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (63, 22, 'lsho		9lq4	f7ut', ' tmk3pj', '2018-12-13 05:03:17', 201608327, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (64, 5, 'cj
1yam', '65 lp98uj
sxgtz', '2018-12-13 05:03:17', 201608326, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (65, 30, 't7ya57lnlxo8', 'd 1l13sdf8jmbfa0ltrh', '2018-12-13 05:03:17', 201608320, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (66, 32, 'gsknyfx1gj	ol6', 'ityc6nj	2d', '2018-12-13 05:03:17', 201608326, -2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (67, 16, 'rvvzg58w3f 3j
rpdley', 'hszzz2gd', '2018-12-13 05:03:17', 201608322, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (68, 14, 'kr9x99 y1fr3lfg8s', 'zghg', '2018-12-13 05:03:17', 201608327, -2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (69, 40, 'kqmo5xm6', 'gsw463s6y85j35', '2018-12-13 05:03:17', 201608325, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (70, 22, 'tjem9xn ', 'b7l4vkhi	x1e8i', '2018-12-13 05:03:17', 201608327, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (71, 13, '8jyzfwe60wsjzhs', '3fs	fu08bzq9vs', '2018-12-13 05:03:17', 201608328, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (72, 19, ' 8oxpdi9uy8yv4b8uc7', 'ojzbqhy6', '2018-12-13 05:03:17', 201608323, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (73, 14, '54zzt
96dw2fpb	5k', 'anzf9 9owf1h004', '2018-12-13 05:03:17', 201608328, 3);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (74, 11, '2fx1jat8srk', 'poytreu07gjn3dc
zs92y', '2018-12-13 05:03:17', 201608326, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (75, 16, '7j6k7', '6wzmzn ', '2018-12-13 05:03:17', 201608329, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (76, 26, 'lsj1g4pefclacfsls4', '1se02leim	d2j
2xxmh', '2016-12-13 05:03:17', 201608330, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (77, 22, 'bjrv8z7cs8ww', '	y	vgdb	89ga	h	4qzk0u4tw', '2016-12-13 05:03:17', 201608320, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (78, 20, 'n0p
cn', 'j s55', '2016-12-13 05:03:17', 201608327, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (79, 35, 'vr9uwfw2p4', 'g3k 2ea 3c
l1v	eu81bxaz s', '2016-12-13 05:03:17', 201608324, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (80, 18, 'vedzs q vqe1oixwqn', 'q5j7b26q9ml7j6y4ruq025r 2', '2016-12-13 05:03:17', 201608320, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (81, 38, 'n10ol5k6740', 'he3zy5
yqvey', '2016-12-13 05:03:17', 201608328, -2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (82, 25, 'lrt6866frlv	4z4 f3y', 'j 0gmyx394ds4hnxv6', '2016-12-13 05:03:17', 201608328, -3);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (83, 35, 'd9cl9cn2xvrkg fed3s', '	bqbjczzs', '2016-12-13 05:03:17', 201608325, 2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (84, 8, 'o6okz3laal0	ahgq', 'xamg
2l', '2016-12-13 05:03:17', 201608324, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (85, 18, 'vi v2ny8h
', 'zsvooia89ic', '2016-12-13 05:03:17', 201608330, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (86, 18, 'dnkcb3xyj9zdkd', '2
g2ocqrzzs', '2016-12-13 05:03:17', 201608326, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (87, 23, 'hcka2ykxnaxzro6ysjd', '3wajk 3aohsf
pnz', '2016-12-13 05:03:17', 201608322, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (88, 26, '
q0qk7eum 	8d8', 'zo1f0ei	6qrzu0fqbx', '2016-12-13 05:03:17', 201608321, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (89, 8, ' 4eplzbl2u0ow2rw0
7', 'vl	r1ldtqrhkly
8
q2ps2sqy', '2016-12-13 05:03:17', 201608321, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (90, 36, 'agyc6fm15tfx', '
hov3wwclz6xo
t5', '2016-12-13 05:03:17', 201608324, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (91, 25, '6	fc', 'mh6tinfr3z55a	43z478	gx', '2016-12-13 05:03:17', 201608321, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (92, 23, '3
o56', 'g4vds', '2016-12-13 05:03:17', 201608327, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (93, 24, 'x7u6js4', '4e1	95j3', '2016-12-13 05:03:17', 201608320, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (94, 31, 'x3zj3ru	058q2j2wuhio', 'f
mj	e4av', '2016-12-13 05:03:17', 201608329, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (95, 32, 'nmqz5u97kopm', 'x oj0yukvvr5vm sn', '2016-12-13 05:03:17', 201608325, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (96, 6, 'nz9aq', 'i
 24vxx4qhv6apyx', '2016-12-13 05:03:17', 201608325, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (97, 23, '5
mu32i8zos88', '1eb	', '2016-12-13 10:53:17', 201608328, -1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (98, 40, 'efzw8t d', 'hv4z5jukqnw
lqhm	
', '2016-12-13 10:53:17', 201608328, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (99, 26, 'pxfvy34 xaxe vf', 't7
2i52vsjt5ygtgy', '2016-12-13 10:53:17', 201608320, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (100, 35, 'oooi  c7ls0793d', '3
sgeeccdlbvlyk', '2016-12-13 10:53:17', 201608329, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (101, 20, 'eu0190s89pc', 'hgrw5f17gstv	pgrm', '2016-12-13 10:53:17', 201608322, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (102, 13, 'pex91ygzc9n0j9scm9f', 'tn326fv4a4g	3l9q	b', '2016-12-13 10:53:17', 201608322, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (103, 10, 'bkqg09z8', 'b07ukzubk2', '2016-12-13 10:53:17', 201608323, 2);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (104, 7, 'q46
j3r', 'jc5h', '2016-12-13 10:53:17', 201608322, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (105, 32, 'h91u0wg4a83hc', '9oi1hmcg1z
nsld	se4', '2016-12-13 10:53:17', 201608326, 1);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (106, 2, 'l58mh4qz6ln', '7k	rwmyz58c5dah', '2016-12-13 10:53:17', 201608326, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (107, 40, '5x13ce	6', 'qqo
ykfq	zpctk6iqj
d6r9', '2016-12-13 10:53:17', 201608325, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (108, 13, 'ad8o', 'ml	b0zo	v', '2016-12-13 10:53:17', 201608326, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (109, 37, 'lg6rw8da75occbarh4', '841sw
i3imyig7li47q8f', '2016-12-13 10:53:17', 201608320, 0);
INSERT INTO Post (id, subject, title, text, datetime, creator, points) VALUES (110, 21, '
x26xmjjhx1', '349q	2nfo8r', '2016-12-13 10:53:17', 201608329, -1);

-- Table: Subject
CREATE TABLE Subject (id INTEGER PRIMARY KEY, name VARCHAR NOT NULL UNIQUE, year INTEGER NOT NULL);
INSERT INTO Subject (id, name, year) VALUES (1, 'MDIS', 1);
INSERT INTO Subject (id, name, year) VALUES (2, 'AOCO', 1);
INSERT INTO Subject (id, name, year) VALUES (3, 'FPRO', 1);
INSERT INTO Subject (id, name, year) VALUES (4, 'AMAT', 1);
INSERT INTO Subject (id, name, year) VALUES (5, 'ALGE', 1);
INSERT INTO Subject (id, name, year) VALUES (6, 'PF', 1);
INSERT INTO Subject (id, name, year) VALUES (7, 'MEST', 1);
INSERT INTO Subject (id, name, year) VALUES (8, 'PROG', 1);
INSERT INTO Subject (id, name, year) VALUES (9, 'FISI1', 1);
INSERT INTO Subject (id, name, year) VALUES (10, 'CMAT', 1);
INSERT INTO Subject (id, name, year) VALUES (11, 'MPCP', 1);
INSERT INTO Subject (id, name, year) VALUES (12, 'TCOM', 2);
INSERT INTO Subject (id, name, year) VALUES (13, 'MNUM', 2);
INSERT INTO Subject (id, name, year) VALUES (14, 'FISI2', 2);
INSERT INTO Subject (id, name, year) VALUES (15, 'AEDA', 2);
INSERT INTO Subject (id, name, year) VALUES (16, 'LCOM', 2);
INSERT INTO Subject (id, name, year) VALUES (17, 'BDAD', 2);
INSERT INTO Subject (id, name, year) VALUES (18, 'CAL', 2);
INSERT INTO Subject (id, name, year) VALUES (19, 'CGRA', 2);
INSERT INTO Subject (id, name, year) VALUES (20, 'SOPE', 2);
INSERT INTO Subject (id, name, year) VALUES (21, 'LPOO', 2);
INSERT INTO Subject (id, name, year) VALUES (22, 'PLOG', 3);
INSERT INTO Subject (id, name, year) VALUES (23, 'LAIG', 3);
INSERT INTO Subject (id, name, year) VALUES (24, 'ESOF', 3);
INSERT INTO Subject (id, name, year) VALUES (25, 'RCOM', 3);
INSERT INTO Subject (id, name, year) VALUES (26, 'LTW', 3);
INSERT INTO Subject (id, name, year) VALUES (27, 'LBAW', 3);
INSERT INTO Subject (id, name, year) VALUES (28, 'IART', 3);
INSERT INTO Subject (id, name, year) VALUES (29, 'COMP', 3);
INSERT INTO Subject (id, name, year) VALUES (30, 'SDIS', 3);
INSERT INTO Subject (id, name, year) VALUES (31, 'PPIN', 3);
INSERT INTO Subject (id, name, year) VALUES (32, 'SINF', 4);
INSERT INTO Subject (id, name, year) VALUES (33, 'LDSO', 4);
INSERT INTO Subject (id, name, year) VALUES (34, 'GEMP', 4);
INSERT INTO Subject (id, name, year) VALUES (35, 'AIAD', 4);
INSERT INTO Subject (id, name, year) VALUES (36, 'MFES', 4);
INSERT INTO Subject (id, name, year) VALUES (37, 'IOPE', 4);
INSERT INTO Subject (id, name, year) VALUES (38, 'LGPR', 4);
INSERT INTO Subject (id, name, year) VALUES (39, 'PDIS', 5);
INSERT INTO Subject (id, name, year) VALUES (40, 'DISS', 5);

-- Table: User
CREATE TABLE User (id INTEGER PRIMARY KEY CHECK (id > 201000000 and id < 209999999), name VARCHAR NOT NULL, email VARCHAR NOT NULL CHECK (email LIKE "%@%.%"), password VARCHAR NOT NULL);
INSERT INTO User (id, name, email, password) VALUES (201504711, 'bernardo santos', 'beny@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201504712, 'thor santos', 'thor_o_verdadeiro@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201504713, 'Mr.Lee santos', 'beny12@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201504714, 'AqueleDeNomeGrande santos', 'beny13@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201504715, 'Arestivo santos', 'beny14@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201504716, 'Patricia santos', 'beny15@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201504717, 'Cris santos', 'beny16@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201504718, 'Goncalo santos', 'beny17@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201605926, 'joao', 'joao@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608320, 'Henrique Goncalves', 'henrique@gmail.com', '123456789Aa');
INSERT INTO User (id, name, email, password) VALUES (201608321, 'Rui goncalves', 'beny1@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608322, 'Andre goncalves', 'beny2@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608323, 'Alex goncalves', 'beny4@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608324, 'Joao goncalves', 'beny5@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608325, 'Bernardo goncalves', 'beny6@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608326, 'Cris goncalves', 'beny7@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608327, 'Paulo goncalves', 'beny8@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608328, 'Pai goncalves', 'beny9@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608329, 'Mae goncalves', 'beny10@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608330, 'IdkWho goncalves', 'beny11@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608331, 'ThatOneNerd', 'nerdsWillRoolTheWorld@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608332, 'IdkWho1 ', 'beny12@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608333, 'IdkWho2 ', 'beny12@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608334, 'IdkWho3', 'beny13@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608335, 'IdkWho4', 'beny14@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608336, 'IdkWho5', 'beny15@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608337, 'IdkWho6', 'beny16@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608338, 'IdkWho37', 'beny17@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608339, 'IdkWho38', 'beny18@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608340, 'IdkWho39', 'beny19@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608341, 'IdkWho31', 'beny20@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608342, 'IdkWho32', 'beny21@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608343, 'IdkWho33', 'beny22@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608344, '4', 'beny23@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608345, 'IdkWho35', 'beny24@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608346, 'IdkWho34', 'beny25@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608347, 'IdkWho389', 'beny26@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608348, 'IdkWho3432', 'beny27@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608349, 'IdkWho321', 'beny28@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608350, 'IdkWho311', 'beny29@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');
INSERT INTO User (id, name, email, password) VALUES (201608351, 'IdkWho3''', 'beny30@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

-- Table: ValueComment
CREATE TABLE ValueComment (idUser INTEGER REFERENCES User (id) ON DELETE CASCADE, idComment INTEGER REFERENCES Comment (id) ON DELETE CASCADE, value INTEGER NOT NULL, PRIMARY KEY (idUser, idComment));
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201605926, 1, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608331, 15, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608323, 36, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608330, 43, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608326, 79, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 81, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608326, 53, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608328, 32, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608323, 63, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608320, 1, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 32, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608324, 80, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608320, 37, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608324, 73, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608325, 47, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 45, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608323, 53, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608327, 15, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608326, 23, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608331, 5, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608330, 32, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608326, 68, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608320, 16, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608329, 49, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608329, 39, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 21, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608329, 16, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608320, 74, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608321, 48, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608328, 36, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608331, 74, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608326, 48, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608321, 43, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 26, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608321, 56, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608330, 10, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608325, 55, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 60, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 55, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608321, 34, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 70, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608329, 12, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608326, 54, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608330, 53, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608330, 5, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608331, 18, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608330, 37, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608330, 9, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608329, 36, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608321, 55, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608329, 3, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 38, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608328, 16, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608326, 65, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608327, 2, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608323, 2, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608320, 78, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608330, 59, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608325, 37, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608323, 9, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608328, 52, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608328, 30, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608321, 66, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608327, 55, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608331, 61, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608322, 48, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608331, 70, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608325, 31, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608328, 74, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608323, 21, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608325, 50, -1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 71, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504717, 54, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504717, 13, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504713, 6, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504714, 82, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504713, 78, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 18, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504715, 21, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504713, 8, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 62, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504717, 7, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 51, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504717, 11, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504717, 14, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 13, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 42, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 2, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504712, 80, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 61, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504714, 73, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 25, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 48, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 21, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 21, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 49, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 78, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504712, 27, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 38, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 7, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 58, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504715, 52, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 81, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504716, 52, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504712, 16, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 9, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504718, 74, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504714, 68, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504715, 48, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504715, 26, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201504715, 15, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608333, 84, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608350, 81, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608344, 56, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608343, 42, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 25, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 63, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 31, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608343, 11, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 35, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 64, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608349, 39, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608349, 48, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608346, 51, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608345, 37, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608341, 39, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 45, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 66, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 79, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 41, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608335, 82, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608340, 33, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 41, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 9, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608338, 27, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608333, 3, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 24, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608341, 73, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608343, 39, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 55, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608336, 49, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608346, 31, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608335, 13, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608348, 36, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608335, 50, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608335, 14, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608348, 38, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608345, 2, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608341, 53, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608345, 30, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608339, 6, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608347, 48, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608336, 63, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608348, 27, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608345, 55, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608343, 64, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608345, 11, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608340, 46, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608343, 17, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608351, 81, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608349, 9, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608340, 64, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 64, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 70, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608341, 19, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608350, 61, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608347, 72, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608338, 16, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608343, 15, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 22, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608344, 16, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608348, 79, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608335, 23, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608342, 72, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 51, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608336, 61, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608339, 75, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608348, 31, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608345, 7, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 74, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608343, 27, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608347, 67, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608346, 77, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608338, 83, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 83, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608349, 46, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608332, 58, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 16, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608343, 53, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608348, 64, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608339, 1, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608338, 74, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608349, 50, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608341, 34, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608332, 38, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608334, 33, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608347, 33, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608341, 47, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608336, 21, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608344, 46, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608345, 27, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608346, 6, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608337, 45, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608349, 58, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608333, 45, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608335, 58, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608347, 50, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608345, 17, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608347, 5, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608341, 29, 1);
INSERT INTO ValueComment (idUser, idComment, value) VALUES (201608348, 59, 1);

-- Table: ValuePost
CREATE TABLE ValuePost (idUser INTEGER REFERENCES User (id) ON DELETE CASCADE, idPost INTEGER REFERENCES Post (id) ON DELETE CASCADE, value INTEGER NOT NULL, PRIMARY KEY (idUser, idPost));
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201605926, 1, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608350, 103, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608345, 19, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608323, 65, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608349, 66, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608339, 64, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608325, 48, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608348, 27, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608341, 93, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608326, 30, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608328, 73, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608329, 1, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608336, 108, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608334, 92, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608328, 24, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608325, 22, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608347, 13, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608340, 54, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608337, 41, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608342, 88, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608351, 69, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608346, 72, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608334, 81, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608351, 10, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608344, 67, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608329, 43, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608326, 37, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608323, 38, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608342, 51, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608351, 61, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608344, 61, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608347, 31, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608345, 44, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608344, 49, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608346, 104, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608348, 65, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608329, 96, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608348, 67, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608335, 1, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608322, 89, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608340, 17, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608328, 32, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608327, 27, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608321, 6, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608332, 106, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608320, 68, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608348, 105, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608332, 56, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608320, 91, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608341, 20, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608330, 81, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608326, 52, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608346, 16, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608339, 26, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608335, 43, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608329, 82, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608345, 73, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608334, 43, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608324, 70, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608341, 16, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608336, 63, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608333, 73, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608347, 16, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608346, 74, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608351, 65, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608342, 23, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608345, 82, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608328, 23, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608337, 5, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608348, 89, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608342, 6, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608343, 20, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608342, 48, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608326, 82, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608339, 72, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608338, 38, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608321, 33, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608320, 19, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608347, 85, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608329, 109, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608325, 33, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608327, 32, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608350, 47, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608342, 2, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608332, 36, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608336, 32, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608330, 57, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608334, 90, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608345, 104, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608346, 110, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608331, 30, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608332, 6, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608351, 103, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608341, 97, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608324, 64, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608346, 35, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608321, 36, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608338, 69, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608335, 28, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608322, 63, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608332, 90, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608332, 85, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608338, 83, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608339, 3, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608338, 25, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608342, 17, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608322, 95, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608342, 71, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608328, 66, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608326, 99, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608349, 88, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608339, 86, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608323, 96, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608322, 83, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608323, 99, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608350, 106, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608334, 38, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608329, 61, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608341, 55, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608327, 15, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608335, 110, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608324, 84, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608337, 6, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608322, 108, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608348, 92, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608335, 102, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608333, 27, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608340, 51, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608344, 27, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608322, 90, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608338, 15, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608351, 91, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608339, 7, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608324, 68, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608347, 101, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608335, 48, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608321, 35, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608337, 68, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608334, 79, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608324, 59, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608345, 3, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608330, 83, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608346, 96, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608322, 25, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608337, 18, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608349, 58, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608338, 66, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608343, 7, -1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608344, 90, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608342, 47, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608330, 99, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608321, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608322, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608323, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608324, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608325, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608326, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608327, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608328, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608329, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608330, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608331, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608332, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608333, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608334, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608335, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608336, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608337, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608338, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608339, 9, 1);
INSERT INTO ValuePost (idUser, idPost, value) VALUES (201608340, 9, 1);

-- Trigger: addValueComment
CREATE TRIGGER addValueComment AFTER INSERT ON ValueComment FOR EACH ROW BEGIN UPDATE Comment SET points = points + new.value WHERE Comment.id = new.idComment; END;

-- Trigger: addValuePost
CREATE TRIGGER addValuePost AFTER INSERT ON ValuePost FOR EACH ROW BEGIN UPDATE Post SET points = points + new.value WHERE Post.id = new.idPost; END;

-- Trigger: deleteValueComment
CREATE TRIGGER deleteValueComment BEFORE DELETE ON ValueComment FOR EACH ROW BEGIN UPDATE Comment SET points = points - old.value WHERE Comment.id = old.idComment; END;

-- Trigger: deleteValuePost
CREATE TRIGGER deleteValuePost BEFORE DELETE ON ValuePost FOR EACH ROW BEGIN UPDATE Post SET points = points - old.value WHERE Post.id = old.idPost; END;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
