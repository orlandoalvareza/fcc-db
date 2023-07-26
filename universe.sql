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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_km numeric
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types character varying(30),
    number_stars_it_contains character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_regular_orbit boolean,
    gravity numeric,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    gravity numeric,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    brightness character varying(10),
    diameter_in_millions_km numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 15);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', 60);
INSERT INTO public.comet VALUES (3, 'McNaught', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Barred Spiral', '100 billion');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 12000, 'Spiral', '1 trillon');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8000, 'Spiral', '40 billion');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 9000, ' Spiral', '100 billion');
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 14000, 'Elliptical', '100 billion');
INSERT INTO public.galaxy VALUES (6, 'Whirpool', 400, 'Spiral', ' 100 billion');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Is the only natural satellite of Earth', true, 1.62, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'A moon with irregulary shaped', false, 0.0057, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Is the smallest moon of Mars', false, 0.003, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Known for its intense volcanic activity', true, 1.796, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Moon with a potential subsurface ocean', true, 1.314, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon in the solar system', true, 1.428, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Moon covered in impact craters', true, 1.235, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Is a small moon with a reddish color', true, 0.017, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 'On of the largest moons of Jupiter', false, 0.22575, 5);
INSERT INTO public.moon VALUES (10, 'Elara', 'Moon with a dark surface', false, 0.022, 5);
INSERT INTO public.moon VALUES (11, 'Sinope', 'A distant shaped moon of Jupiter', false, 0.018, 5);
INSERT INTO public.moon VALUES (12, 'Carme', 'Moon with a heavily createred surface', false, 0.020, 5);
INSERT INTO public.moon VALUES (13, 'Leda', 'A small moon', false, 0.010, 5);
INSERT INTO public.moon VALUES (14, 'Thebe', 'Is a small moon', false, 0.022, 5);
INSERT INTO public.moon VALUES (15, 'Adrastea', 'Moon of the Jupiter orbit', true, 0.00003, 5);
INSERT INTO public.moon VALUES (16, 'Ananke', 'Moon with dark surface', false, 0.02, 5);
INSERT INTO public.moon VALUES (17, 'Titan', 'Is the largest moon of Saturn orbit', true, 1.352, 6);
INSERT INTO public.moon VALUES (18, 'Miranda', 'Moon with cliffs, canyons and icy terrains', true, 0.079, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 'Moon with a mix of old and young terrains', true, 0.346, 7);
INSERT INTO public.moon VALUES (20, 'Triton', 'Is the largest moon of Neptune orbital', false, 0.779, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4600, 'Is the closest planet to the Sun and is known for its extreme temperature', false, 3.7, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 'A rocky planet with a thick toxic atmosphere', false, 8.87, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 'Known for its diverse ecosystems and abundance of liquid water', true, 9.81, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 4600, 'A cold, desert planet with evidence of past water flows', false, 3.71, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, 'The largest planet in our solar system', false, 24.79, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 'A gas giant with prominent rings made of ice and rock particles', false, 10.44, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, 'An ice giant with a unique sideways rotation and its atmosphere containing methane', false, 8.69, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, 'Another ice giant with a deep blue color', false, 11.15, 7);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 4850, 'An exoplanet orbiting the red dwarf star Proxima Centauri', false, NULL, 4);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri Bb', 4850, 'Is classified as a Super Earth due its size', false, NULL, 4);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', NULL, 'Is considered potentially habitable', false, NULL, 8);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1f', NULL, 'Is considered potentially habitable', false, NULL, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirus', 300, 'A1V', 1711.0, 1);
INSERT INTO public.star VALUES (2, 'Beltegeuse', 8, 'M1-M2lab-l', 14300, 1);
INSERT INTO public.star VALUES (3, 'Polaris', 70, 'F7lb-ll', 46, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 5000, 'M5.5Ve', 200.0, 1);
INSERT INTO public.star VALUES (5, 'Antares', 12, 'M1.5lab-lb', 883.0, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 10, 'B8la', 115.0, 1);
INSERT INTO public.star VALUES (7, 'Sun', 4600, '-26.74', 1.4, 1);
INSERT INTO public.star VALUES (8, 'TRAPPIST-1', 7600, 'M8V', NULL, 1);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 47, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

