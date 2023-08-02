--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    games_played integer DEFAULT 0 NOT NULL
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
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 81, 3);
INSERT INTO public.games VALUES (2, 81, 2);
INSERT INTO public.games VALUES (3, 82, 1);
INSERT INTO public.games VALUES (4, 82, 687);
INSERT INTO public.games VALUES (5, 83, 176);
INSERT INTO public.games VALUES (6, 83, 610);
INSERT INTO public.games VALUES (7, 82, 5);
INSERT INTO public.games VALUES (8, 82, 1);
INSERT INTO public.games VALUES (9, 82, 807);
INSERT INTO public.games VALUES (10, 84, 1);
INSERT INTO public.games VALUES (11, 84, 981);
INSERT INTO public.games VALUES (12, 85, 99);
INSERT INTO public.games VALUES (13, 85, 121);
INSERT INTO public.games VALUES (14, 84, 984);
INSERT INTO public.games VALUES (15, 84, 1);
INSERT INTO public.games VALUES (16, 84, 149);
INSERT INTO public.games VALUES (17, 86, 249);
INSERT INTO public.games VALUES (18, 86, 258);
INSERT INTO public.games VALUES (19, 87, 622);
INSERT INTO public.games VALUES (20, 87, 231);
INSERT INTO public.games VALUES (21, 86, 587);
INSERT INTO public.games VALUES (22, 86, 1);
INSERT INTO public.games VALUES (23, 86, 623);
INSERT INTO public.games VALUES (24, 106, 117);
INSERT INTO public.games VALUES (25, 106, 980);
INSERT INTO public.games VALUES (26, 107, 241);
INSERT INTO public.games VALUES (27, 107, 330);
INSERT INTO public.games VALUES (28, 106, 800);
INSERT INTO public.games VALUES (29, 106, 1);
INSERT INTO public.games VALUES (30, 106, 874);
INSERT INTO public.games VALUES (31, 108, 100);
INSERT INTO public.games VALUES (32, 108, 133);
INSERT INTO public.games VALUES (33, 109, 439);
INSERT INTO public.games VALUES (34, 109, 143);
INSERT INTO public.games VALUES (35, 108, 695);
INSERT INTO public.games VALUES (36, 108, 1);
INSERT INTO public.games VALUES (37, 108, 841);
INSERT INTO public.games VALUES (38, 81, 1);
INSERT INTO public.games VALUES (39, 81, 3);
INSERT INTO public.games VALUES (40, 81, 2);
INSERT INTO public.games VALUES (41, 110, 3);
INSERT INTO public.games VALUES (42, 81, 2);
INSERT INTO public.games VALUES (43, 81, 1);
INSERT INTO public.games VALUES (44, 111, 1);
INSERT INTO public.games VALUES (45, 111, 291);
INSERT INTO public.games VALUES (46, 112, 797);
INSERT INTO public.games VALUES (47, 112, 240);
INSERT INTO public.games VALUES (48, 111, 451);
INSERT INTO public.games VALUES (49, 111, 1);
INSERT INTO public.games VALUES (50, 111, 909);
INSERT INTO public.games VALUES (51, 113, 900);
INSERT INTO public.games VALUES (52, 113, 753);
INSERT INTO public.games VALUES (53, 114, 395);
INSERT INTO public.games VALUES (54, 114, 205);
INSERT INTO public.games VALUES (55, 113, 250);
INSERT INTO public.games VALUES (56, 113, 1);
INSERT INTO public.games VALUES (57, 113, 700);
INSERT INTO public.games VALUES (58, 115, 1);
INSERT INTO public.games VALUES (59, 115, 825);
INSERT INTO public.games VALUES (60, 116, 1);
INSERT INTO public.games VALUES (61, 116, 506);
INSERT INTO public.games VALUES (62, 115, 770);
INSERT INTO public.games VALUES (63, 115, 1);
INSERT INTO public.games VALUES (64, 115, 938);
INSERT INTO public.games VALUES (65, 110, 2);
INSERT INTO public.games VALUES (66, 81, 1);
INSERT INTO public.games VALUES (67, 81, 2);
INSERT INTO public.games VALUES (68, 81, 1);
INSERT INTO public.games VALUES (69, 81, 4);
INSERT INTO public.games VALUES (70, 110, 1);
INSERT INTO public.games VALUES (71, 117, 1);
INSERT INTO public.games VALUES (72, 119, 1);
INSERT INTO public.games VALUES (73, 119, 641);
INSERT INTO public.games VALUES (74, 120, 435);
INSERT INTO public.games VALUES (75, 120, 697);
INSERT INTO public.games VALUES (76, 119, 453);
INSERT INTO public.games VALUES (77, 119, 174);
INSERT INTO public.games VALUES (78, 119, 401);
INSERT INTO public.games VALUES (79, 121, 236);
INSERT INTO public.games VALUES (80, 121, 914);
INSERT INTO public.games VALUES (81, 122, 298);
INSERT INTO public.games VALUES (82, 122, 788);
INSERT INTO public.games VALUES (83, 121, 366);
INSERT INTO public.games VALUES (84, 121, 488);
INSERT INTO public.games VALUES (85, 121, 571);
INSERT INTO public.games VALUES (86, 123, 466);
INSERT INTO public.games VALUES (87, 123, 372);
INSERT INTO public.games VALUES (88, 124, 696);
INSERT INTO public.games VALUES (89, 124, 496);
INSERT INTO public.games VALUES (90, 123, 564);
INSERT INTO public.games VALUES (91, 123, 129);
INSERT INTO public.games VALUES (92, 123, 90);
INSERT INTO public.games VALUES (93, 125, 630);
INSERT INTO public.games VALUES (94, 125, 828);
INSERT INTO public.games VALUES (95, 126, 201);
INSERT INTO public.games VALUES (96, 126, 694);
INSERT INTO public.games VALUES (97, 125, 824);
INSERT INTO public.games VALUES (98, 125, 664);
INSERT INTO public.games VALUES (99, 125, 719);
INSERT INTO public.games VALUES (100, 127, 1);
INSERT INTO public.games VALUES (101, 127, 431);
INSERT INTO public.games VALUES (102, 128, 286);
INSERT INTO public.games VALUES (103, 128, 841);
INSERT INTO public.games VALUES (104, 127, 215);
INSERT INTO public.games VALUES (105, 127, 997);
INSERT INTO public.games VALUES (106, 127, 673);
INSERT INTO public.games VALUES (107, 129, 847);
INSERT INTO public.games VALUES (108, 129, 254);
INSERT INTO public.games VALUES (109, 130, 248);
INSERT INTO public.games VALUES (110, 130, 72);
INSERT INTO public.games VALUES (111, 129, 354);
INSERT INTO public.games VALUES (112, 129, 444);
INSERT INTO public.games VALUES (113, 129, 920);
INSERT INTO public.games VALUES (114, 131, 1);
INSERT INTO public.games VALUES (115, 131, 815);
INSERT INTO public.games VALUES (116, 132, 207);
INSERT INTO public.games VALUES (117, 132, 581);
INSERT INTO public.games VALUES (118, 131, 488);
INSERT INTO public.games VALUES (119, 131, 778);
INSERT INTO public.games VALUES (120, 131, 261);
INSERT INTO public.games VALUES (121, 133, 286);
INSERT INTO public.games VALUES (122, 133, 670);
INSERT INTO public.games VALUES (123, 134, 202);
INSERT INTO public.games VALUES (124, 134, 446);
INSERT INTO public.games VALUES (125, 133, 216);
INSERT INTO public.games VALUES (126, 133, 973);
INSERT INTO public.games VALUES (127, 133, 759);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (81, 'Orly');
INSERT INTO public.users VALUES (82, 'user_1691009654729');
INSERT INTO public.users VALUES (83, 'user_1691009654728');
INSERT INTO public.users VALUES (84, 'user_1691009665928');
INSERT INTO public.users VALUES (85, 'user_1691009665927');
INSERT INTO public.users VALUES (86, 'user_1691009802088');
INSERT INTO public.users VALUES (87, 'user_1691009802087');
INSERT INTO public.users VALUES (88, 'user_1691009844917');
INSERT INTO public.users VALUES (89, 'user_1691009844916');
INSERT INTO public.users VALUES (90, 'user_1691009846717');
INSERT INTO public.users VALUES (91, 'user_1691009846716');
INSERT INTO public.users VALUES (92, 'user_1691009849215');
INSERT INTO public.users VALUES (93, 'user_1691009849214');
INSERT INTO public.users VALUES (94, 'user_1691009853528');
INSERT INTO public.users VALUES (95, 'user_1691009853527');
INSERT INTO public.users VALUES (96, 'user_1691009857729');
INSERT INTO public.users VALUES (97, 'user_1691009859150');
INSERT INTO public.users VALUES (98, 'user_1691009857728');
INSERT INTO public.users VALUES (99, 'user_1691009859149');
INSERT INTO public.users VALUES (100, 'user_1691009866459');
INSERT INTO public.users VALUES (101, 'user_1691009866458');
INSERT INTO public.users VALUES (102, 'user_1691009879647');
INSERT INTO public.users VALUES (103, 'user_1691009879646');
INSERT INTO public.users VALUES (104, 'user_1691009891228');
INSERT INTO public.users VALUES (105, 'user_1691009891227');
INSERT INTO public.users VALUES (106, 'user_1691009902187');
INSERT INTO public.users VALUES (107, 'user_1691009902186');
INSERT INTO public.users VALUES (108, 'user_1691009912049');
INSERT INTO public.users VALUES (109, 'user_1691009912048');
INSERT INTO public.users VALUES (110, 'Lauren');
INSERT INTO public.users VALUES (111, 'user_1691011397517');
INSERT INTO public.users VALUES (112, 'user_1691011397516');
INSERT INTO public.users VALUES (113, 'user_1691011407040');
INSERT INTO public.users VALUES (114, 'user_1691011407039');
INSERT INTO public.users VALUES (115, 'user_1691011416996');
INSERT INTO public.users VALUES (116, 'user_1691011416995');
INSERT INTO public.users VALUES (117, 'Laurne');
INSERT INTO public.users VALUES (118, 'Laura');
INSERT INTO public.users VALUES (119, 'user_1691012017847');
INSERT INTO public.users VALUES (120, 'user_1691012017846');
INSERT INTO public.users VALUES (121, 'user_1691012104863');
INSERT INTO public.users VALUES (122, 'user_1691012104862');
INSERT INTO public.users VALUES (123, 'user_1691012154398');
INSERT INTO public.users VALUES (124, 'user_1691012154397');
INSERT INTO public.users VALUES (125, 'user_1691012161090');
INSERT INTO public.users VALUES (126, 'user_1691012161089');
INSERT INTO public.users VALUES (127, 'user_1691012167570');
INSERT INTO public.users VALUES (128, 'user_1691012167569');
INSERT INTO public.users VALUES (129, 'user_1691012178281');
INSERT INTO public.users VALUES (130, 'user_1691012178280');
INSERT INTO public.users VALUES (131, 'user_1691012187130');
INSERT INTO public.users VALUES (132, 'user_1691012187129');
INSERT INTO public.users VALUES (133, 'user_1691012198182');
INSERT INTO public.users VALUES (134, 'user_1691012198181');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 127, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 134, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

