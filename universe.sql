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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    extracol text,
    othercol integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    count integer,
    planet_id integer,
    extracol text,
    othercol integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    other_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    othercol integer
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: other_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_id_seq OWNER TO freecodecamp;

--
-- Name: other_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_id_seq OWNED BY public.other.other_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    g_constant numeric,
    iscool boolean,
    star_id integer,
    othercol integer,
    extracol text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    count integer,
    isconstellation boolean,
    galaxy_id integer,
    extracol text,
    othercol integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: other other_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other ALTER COLUMN other_id SET DEFAULT nextval('public.other_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'A galaxy.', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Black Eye', 'A galaxy.', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cigar', 'A galaxy.', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic', 'A galaxy.', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'A galaxy.', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'A galaxy.', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'b', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'v', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'c', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'x', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, 's', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'w', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'e', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'd', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'f', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'r', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 't', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'g', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'g', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'g', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'g', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'g', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'g', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'g', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'g', 1, 1, NULL, NULL);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'a', NULL, NULL);
INSERT INTO public.other VALUES (2, 'b', NULL, NULL);
INSERT INTO public.other VALUES (3, 'c', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1.0, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 2.0, true, 3, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 2.0, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 12.1, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1.01, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 0.02, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 22, true, 6, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 22, true, 5, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Some Planet 1', 12, true, 4, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Some Planet 2', 12, true, 4, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Some Planet 3', 12, true, 4, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 1, true, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Mirach', 1, true, 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Mu Andromedae', 1, true, 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Pi Andromedae', 1, true, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Xi Andromedae', 1, true, 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Iota Andromedae', 1, true, 1, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: other_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_othercol_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_othercol_key UNIQUE (othercol);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_othercol_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_othercol_key UNIQUE (othercol);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other other_othercol_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_othercol_key UNIQUE (othercol);


--
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


--
-- Name: planet planet_othercol_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_othercol_key UNIQUE (othercol);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_othercol_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_othercol_key UNIQUE (othercol);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

