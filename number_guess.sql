--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 11);
INSERT INTO public.games VALUES (2, 3, 728);
INSERT INTO public.games VALUES (3, 3, 969);
INSERT INTO public.games VALUES (4, 4, 941);
INSERT INTO public.games VALUES (5, 4, 924);
INSERT INTO public.games VALUES (6, 3, 182);
INSERT INTO public.games VALUES (7, 3, 1);
INSERT INTO public.games VALUES (8, 3, 119);
INSERT INTO public.games VALUES (9, 5, 925);
INSERT INTO public.games VALUES (10, 5, 229);
INSERT INTO public.games VALUES (11, 6, 246);
INSERT INTO public.games VALUES (12, 6, 189);
INSERT INTO public.games VALUES (13, 5, 762);
INSERT INTO public.games VALUES (14, 5, 1);
INSERT INTO public.games VALUES (15, 5, 268);
INSERT INTO public.games VALUES (16, 2, 10);
INSERT INTO public.games VALUES (17, 7, 102);
INSERT INTO public.games VALUES (18, 7, 155);
INSERT INTO public.games VALUES (19, 8, 598);
INSERT INTO public.games VALUES (20, 8, 321);
INSERT INTO public.games VALUES (21, 7, 465);
INSERT INTO public.games VALUES (22, 7, 1);
INSERT INTO public.games VALUES (23, 7, 791);
INSERT INTO public.games VALUES (24, 2, 15);
INSERT INTO public.games VALUES (25, 9, 423);
INSERT INTO public.games VALUES (26, 9, 323);
INSERT INTO public.games VALUES (27, 10, 916);
INSERT INTO public.games VALUES (28, 10, 37);
INSERT INTO public.games VALUES (29, 9, 259);
INSERT INTO public.games VALUES (30, 9, 1);
INSERT INTO public.games VALUES (31, 9, 220);
INSERT INTO public.games VALUES (32, 33, 883);
INSERT INTO public.games VALUES (33, 33, 651);
INSERT INTO public.games VALUES (34, 34, 727);
INSERT INTO public.games VALUES (35, 34, 279);
INSERT INTO public.games VALUES (36, 33, 517);
INSERT INTO public.games VALUES (37, 33, 746);
INSERT INTO public.games VALUES (38, 2, 8);
INSERT INTO public.games VALUES (39, 35, 338);
INSERT INTO public.games VALUES (40, 35, 103);
INSERT INTO public.games VALUES (41, 36, 802);
INSERT INTO public.games VALUES (42, 36, 488);
INSERT INTO public.games VALUES (43, 35, 251);
INSERT INTO public.games VALUES (44, 35, 794);
INSERT INTO public.games VALUES (45, 37, 350);
INSERT INTO public.games VALUES (46, 37, 53);
INSERT INTO public.games VALUES (47, 38, 976);
INSERT INTO public.games VALUES (48, 38, 314);
INSERT INTO public.games VALUES (49, 37, 473);
INSERT INTO public.games VALUES (50, 37, 978);
INSERT INTO public.games VALUES (51, 39, 295);
INSERT INTO public.games VALUES (52, 39, 57);
INSERT INTO public.games VALUES (53, 40, 234);
INSERT INTO public.games VALUES (54, 40, 644);
INSERT INTO public.games VALUES (55, 39, 987);
INSERT INTO public.games VALUES (56, 39, 258);
INSERT INTO public.games VALUES (57, 39, 180);
INSERT INTO public.games VALUES (58, 41, 276);
INSERT INTO public.games VALUES (59, 41, 1000);
INSERT INTO public.games VALUES (60, 42, 315);
INSERT INTO public.games VALUES (61, 42, 870);
INSERT INTO public.games VALUES (62, 41, 660);
INSERT INTO public.games VALUES (63, 41, 726);
INSERT INTO public.games VALUES (64, 41, 522);
INSERT INTO public.games VALUES (65, 43, 913);
INSERT INTO public.games VALUES (66, 43, 500);
INSERT INTO public.games VALUES (67, 44, 352);
INSERT INTO public.games VALUES (68, 44, 7);
INSERT INTO public.games VALUES (69, 43, 923);
INSERT INTO public.games VALUES (70, 43, 611);
INSERT INTO public.games VALUES (71, 43, 161);
INSERT INTO public.games VALUES (72, 45, 10);
INSERT INTO public.games VALUES (73, 45, 2);
INSERT INTO public.games VALUES (74, 46, 982);
INSERT INTO public.games VALUES (75, 46, 657);
INSERT INTO public.games VALUES (76, 45, 897);
INSERT INTO public.games VALUES (77, 45, 739);
INSERT INTO public.games VALUES (78, 45, 13);
INSERT INTO public.games VALUES (79, 47, 587);
INSERT INTO public.games VALUES (80, 47, 924);
INSERT INTO public.games VALUES (81, 48, 327);
INSERT INTO public.games VALUES (82, 48, 466);
INSERT INTO public.games VALUES (83, 47, 655);
INSERT INTO public.games VALUES (84, 47, 721);
INSERT INTO public.games VALUES (85, 47, 514);
INSERT INTO public.games VALUES (86, 49, 578);
INSERT INTO public.games VALUES (87, 49, 957);
INSERT INTO public.games VALUES (88, 50, 591);
INSERT INTO public.games VALUES (89, 50, 455);
INSERT INTO public.games VALUES (90, 49, 98);
INSERT INTO public.games VALUES (91, 49, 824);
INSERT INTO public.games VALUES (92, 49, 541);
INSERT INTO public.games VALUES (93, 51, 181);
INSERT INTO public.games VALUES (94, 51, 171);
INSERT INTO public.games VALUES (95, 52, 314);
INSERT INTO public.games VALUES (96, 52, 132);
INSERT INTO public.games VALUES (97, 51, 381);
INSERT INTO public.games VALUES (98, 51, 815);
INSERT INTO public.games VALUES (99, 51, 411);
INSERT INTO public.games VALUES (100, 53, 639);
INSERT INTO public.games VALUES (101, 53, 967);
INSERT INTO public.games VALUES (102, 54, 614);
INSERT INTO public.games VALUES (103, 54, 723);
INSERT INTO public.games VALUES (104, 53, 925);
INSERT INTO public.games VALUES (105, 53, 645);
INSERT INTO public.games VALUES (106, 53, 551);
INSERT INTO public.games VALUES (107, 55, 513);
INSERT INTO public.games VALUES (108, 55, 435);
INSERT INTO public.games VALUES (109, 56, 550);
INSERT INTO public.games VALUES (110, 56, 177);
INSERT INTO public.games VALUES (111, 55, 524);
INSERT INTO public.games VALUES (112, 55, 686);
INSERT INTO public.games VALUES (113, 55, 370);
INSERT INTO public.games VALUES (114, 57, 665);
INSERT INTO public.games VALUES (115, 57, 238);
INSERT INTO public.games VALUES (116, 58, 313);
INSERT INTO public.games VALUES (117, 58, 500);
INSERT INTO public.games VALUES (118, 57, 743);
INSERT INTO public.games VALUES (119, 57, 961);
INSERT INTO public.games VALUES (120, 57, 123);
INSERT INTO public.games VALUES (121, 59, 283);
INSERT INTO public.games VALUES (122, 59, 482);
INSERT INTO public.games VALUES (123, 60, 318);
INSERT INTO public.games VALUES (124, 60, 764);
INSERT INTO public.games VALUES (125, 59, 483);
INSERT INTO public.games VALUES (126, 59, 808);
INSERT INTO public.games VALUES (127, 59, 411);
INSERT INTO public.games VALUES (128, 61, 392);
INSERT INTO public.games VALUES (129, 61, 516);
INSERT INTO public.games VALUES (130, 62, 389);
INSERT INTO public.games VALUES (131, 62, 716);
INSERT INTO public.games VALUES (132, 61, 127);
INSERT INTO public.games VALUES (133, 61, 724);
INSERT INTO public.games VALUES (134, 61, 110);
INSERT INTO public.games VALUES (135, 63, 15);
INSERT INTO public.games VALUES (136, 64, 909);
INSERT INTO public.games VALUES (137, 64, 924);
INSERT INTO public.games VALUES (138, 65, 699);
INSERT INTO public.games VALUES (139, 65, 522);
INSERT INTO public.games VALUES (140, 64, 587);
INSERT INTO public.games VALUES (141, 64, 506);
INSERT INTO public.games VALUES (142, 64, 320);
INSERT INTO public.games VALUES (143, 66, 810);
INSERT INTO public.games VALUES (144, 66, 344);
INSERT INTO public.games VALUES (145, 67, 140);
INSERT INTO public.games VALUES (146, 67, 396);
INSERT INTO public.games VALUES (147, 66, 280);
INSERT INTO public.games VALUES (148, 66, 407);
INSERT INTO public.games VALUES (149, 66, 589);
INSERT INTO public.games VALUES (150, 68, 593);
INSERT INTO public.games VALUES (151, 68, 825);
INSERT INTO public.games VALUES (152, 69, 243);
INSERT INTO public.games VALUES (153, 69, 657);
INSERT INTO public.games VALUES (154, 68, 901);
INSERT INTO public.games VALUES (155, 68, 949);
INSERT INTO public.games VALUES (156, 68, 787);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'r');
INSERT INTO public.users VALUES (2, 'Ré');
INSERT INTO public.users VALUES (3, 'user_1715367428169');
INSERT INTO public.users VALUES (4, 'user_1715367428168');
INSERT INTO public.users VALUES (5, 'user_1715367708854');
INSERT INTO public.users VALUES (6, 'user_1715367708853');
INSERT INTO public.users VALUES (7, 'user_1715367845711');
INSERT INTO public.users VALUES (8, 'user_1715367845710');
INSERT INTO public.users VALUES (9, 'user_1715368000641');
INSERT INTO public.users VALUES (10, 'user_1715368000640');
INSERT INTO public.users VALUES (11, 'user_1715369676657');
INSERT INTO public.users VALUES (12, 'user_1715369676656');
INSERT INTO public.users VALUES (13, 'user_1715369754642');
INSERT INTO public.users VALUES (14, 'user_1715369754641');
INSERT INTO public.users VALUES (15, 'user_1715370902216');
INSERT INTO public.users VALUES (16, 'user_1715370902215');
INSERT INTO public.users VALUES (17, 'user_1715371079980');
INSERT INTO public.users VALUES (18, 'user_1715371079979');
INSERT INTO public.users VALUES (19, 'user_1715371103498');
INSERT INTO public.users VALUES (20, 'user_1715371103497');
INSERT INTO public.users VALUES (21, 'user_1715371222063');
INSERT INTO public.users VALUES (22, 'user_1715371222062');
INSERT INTO public.users VALUES (23, 'user_1715371288617');
INSERT INTO public.users VALUES (24, 'user_1715371288616');
INSERT INTO public.users VALUES (25, 'user_1715371703406');
INSERT INTO public.users VALUES (26, 'user_1715371703405');
INSERT INTO public.users VALUES (27, 'user_1715371784879');
INSERT INTO public.users VALUES (28, 'user_1715371784878');
INSERT INTO public.users VALUES (29, 'user_1715371950949');
INSERT INTO public.users VALUES (30, 'user_1715371950947');
INSERT INTO public.users VALUES (31, 'user_1715372051794');
INSERT INTO public.users VALUES (32, 'user_1715372051793');
INSERT INTO public.users VALUES (33, 'user_1715372550701');
INSERT INTO public.users VALUES (34, 'user_1715372550700');
INSERT INTO public.users VALUES (35, 'user_1715372722540');
INSERT INTO public.users VALUES (36, 'user_1715372722539');
INSERT INTO public.users VALUES (37, 'user_1715372743718');
INSERT INTO public.users VALUES (38, 'user_1715372743717');
INSERT INTO public.users VALUES (39, 'user_1715372875327');
INSERT INTO public.users VALUES (40, 'user_1715372875326');
INSERT INTO public.users VALUES (41, 'user_1715372917621');
INSERT INTO public.users VALUES (42, 'user_1715372917620');
INSERT INTO public.users VALUES (43, 'user_1715372957241');
INSERT INTO public.users VALUES (44, 'user_1715372957240');
INSERT INTO public.users VALUES (45, 'user_1715373072730');
INSERT INTO public.users VALUES (46, 'user_1715373072729');
INSERT INTO public.users VALUES (47, 'user_1715373107838');
INSERT INTO public.users VALUES (48, 'user_1715373107836');
INSERT INTO public.users VALUES (49, 'user_1715373133997');
INSERT INTO public.users VALUES (50, 'user_1715373133996');
INSERT INTO public.users VALUES (51, 'user_1715373230676');
INSERT INTO public.users VALUES (52, 'user_1715373230675');
INSERT INTO public.users VALUES (53, 'user_1715373282483');
INSERT INTO public.users VALUES (54, 'user_1715373282482');
INSERT INTO public.users VALUES (55, 'user_1715373362825');
INSERT INTO public.users VALUES (56, 'user_1715373362824');
INSERT INTO public.users VALUES (57, 'user_1715373410358');
INSERT INTO public.users VALUES (58, 'user_1715373410357');
INSERT INTO public.users VALUES (59, 'user_1715374552935');
INSERT INTO public.users VALUES (60, 'user_1715374552934');
INSERT INTO public.users VALUES (61, 'user_1715374605033');
INSERT INTO public.users VALUES (62, 'user_1715374605032');
INSERT INTO public.users VALUES (63, 'l');
INSERT INTO public.users VALUES (64, 'user_1715374693152');
INSERT INTO public.users VALUES (65, 'user_1715374693151');
INSERT INTO public.users VALUES (66, 'user_1715374792674');
INSERT INTO public.users VALUES (67, 'user_1715374792673');
INSERT INTO public.users VALUES (68, 'user_1715375181014');
INSERT INTO public.users VALUES (69, 'user_1715375181013');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 156, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 69, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

