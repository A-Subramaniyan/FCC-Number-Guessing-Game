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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 12, 3);
INSERT INTO public.games VALUES (2, 325, 4);
INSERT INTO public.games VALUES (3, 476, 4);
INSERT INTO public.games VALUES (4, 799, 5);
INSERT INTO public.games VALUES (5, 456, 5);
INSERT INTO public.games VALUES (6, 628, 4);
INSERT INTO public.games VALUES (7, 765, 4);
INSERT INTO public.games VALUES (8, 15, 4);
INSERT INTO public.games VALUES (9, 273, 6);
INSERT INTO public.games VALUES (10, 236, 6);
INSERT INTO public.games VALUES (11, 358, 7);
INSERT INTO public.games VALUES (12, 859, 7);
INSERT INTO public.games VALUES (13, 198, 6);
INSERT INTO public.games VALUES (14, 223, 6);
INSERT INTO public.games VALUES (15, 86, 6);
INSERT INTO public.games VALUES (16, 491, 8);
INSERT INTO public.games VALUES (17, 797, 8);
INSERT INTO public.games VALUES (18, 109, 9);
INSERT INTO public.games VALUES (19, 525, 9);
INSERT INTO public.games VALUES (20, 571, 8);
INSERT INTO public.games VALUES (21, 320, 8);
INSERT INTO public.games VALUES (22, 424, 8);
INSERT INTO public.games VALUES (23, 826, 10);
INSERT INTO public.games VALUES (24, 806, 10);
INSERT INTO public.games VALUES (25, 284, 11);
INSERT INTO public.games VALUES (26, 971, 11);
INSERT INTO public.games VALUES (27, 609, 10);
INSERT INTO public.games VALUES (28, 358, 10);
INSERT INTO public.games VALUES (29, 319, 10);
INSERT INTO public.games VALUES (30, 958, 12);
INSERT INTO public.games VALUES (31, 680, 12);
INSERT INTO public.games VALUES (32, 908, 13);
INSERT INTO public.games VALUES (33, 563, 13);
INSERT INTO public.games VALUES (34, 766, 12);
INSERT INTO public.games VALUES (35, 315, 12);
INSERT INTO public.games VALUES (36, 656, 12);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'maria');
INSERT INTO public.users VALUES (2, 'mani');
INSERT INTO public.users VALUES (3, 'subramani');
INSERT INTO public.users VALUES (4, 'user_1728926263275');
INSERT INTO public.users VALUES (5, 'user_1728926263274');
INSERT INTO public.users VALUES (6, 'user_1728926755305');
INSERT INTO public.users VALUES (7, 'user_1728926755304');
INSERT INTO public.users VALUES (8, 'user_1728926939523');
INSERT INTO public.users VALUES (9, 'user_1728926939522');
INSERT INTO public.users VALUES (10, 'user_1728927125619');
INSERT INTO public.users VALUES (11, 'user_1728927125618');
INSERT INTO public.users VALUES (12, 'user_1728927380932');
INSERT INTO public.users VALUES (13, 'user_1728927380931');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

