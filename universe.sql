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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    diameter_ly numeric,
    age_billions_years numeric,
    distance_from_earth_ly numeric
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
-- Name: meteor_stream; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor_stream (
    meteor_stream_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_years numeric,
    cross_the_earth boolean,
    velocity_kms integer,
    parent_body text
);


ALTER TABLE public.meteor_stream OWNER TO freecodecamp;

--
-- Name: meteor_stream_meteor_stream_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_stream_meteor_stream_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_stream_meteor_stream_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_stream_meteor_stream_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_stream_meteor_stream_id_seq OWNED BY public.meteor_stream.meteor_stream_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    size numeric,
    planet_id integer,
    age_billions_years numeric
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
    name character varying(60) NOT NULL,
    diameter_km numeric,
    star_id integer,
    age_billions_years numeric,
    gas_giant boolean,
    number_of_moons integer
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
    name character varying(60) NOT NULL,
    diameter_million_km numeric,
    galaxy_id integer,
    age_billions_years numeric
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: meteor_stream meteor_stream_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor_stream ALTER COLUMN meteor_stream_id SET DEFAULT nextval('public.meteor_stream_meteor_stream_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13610, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 10010, 2500000);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel Galaxy', 170000, NULL, 208700000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 60000, 400.3, 30000000);
INSERT INTO public.galaxy VALUES (5, 'Tadpole Galaxy', 280000, 100, 420000000);
INSERT INTO public.galaxy VALUES (6, 'Hoags Object', 100000, 12750, 600000000);


--
-- Data for Name: meteor_stream; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor_stream VALUES (3, 'Leonids', 14587, true, 71, NULL);
INSERT INTO public.meteor_stream VALUES (1, 'Taurids', 30000, true, 29, '29/Encke');
INSERT INTO public.meteor_stream VALUES (2, 'Draconids', 9452, true, 20, '21P/Giacobini-Zinner');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474.8, 1, 4.53);
INSERT INTO public.moon VALUES (2, 'Fobos', 22.533, 2, 4.503);
INSERT INTO public.moon VALUES (3, 'Decimos', 12.4, 2, 4.503);
INSERT INTO public.moon VALUES (4, 'Europa', 1560.8, 3, 4.503);
INSERT INTO public.moon VALUES (5, 'Ganimedes', 2634.1, 3, 4.503);
INSERT INTO public.moon VALUES (6, 'Pandora', 11447, 8, 4.345);
INSERT INTO public.moon VALUES (8, 'Ribeye', 4542, 9, 5.145);
INSERT INTO public.moon VALUES (9, 'Titan', 5149.4, 4, 4.503);
INSERT INTO public.moon VALUES (10, 'Feather', 10.248, 10, 4.603);
INSERT INTO public.moon VALUES (11, 'Jurassic Park', 11447, 11, 0.00000000003);
INSERT INTO public.moon VALUES (12, 'War', 1604, 6, 4.245);
INSERT INTO public.moon VALUES (13, 'Elrond', 6321, 12, 8.878);
INSERT INTO public.moon VALUES (14, 'Galadriel', 6245, 12, 8.878);
INSERT INTO public.moon VALUES (15, 'Ocean', 12547, 7, 4.365);
INSERT INTO public.moon VALUES (7, 'Death Star', 160, 6, 0.000000000046);
INSERT INTO public.moon VALUES (16, 'Frodo', 574.2, 13, 5.654);
INSERT INTO public.moon VALUES (17, 'Sam', 587.9, 13, 5.748);
INSERT INTO public.moon VALUES (18, 'Merry', 621.4, 13, 5.124);
INSERT INTO public.moon VALUES (19, 'Pippin', 512.1, 13, 5.478);
INSERT INTO public.moon VALUES (20, 'Bilbo', 547.5, 13, 6.547);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, 1, 4.543, false, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 6779, 1, 4.603, false, 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', 139820, 1, 4.603, true, 95);
INSERT INTO public.planet VALUES (4, 'Saturn', 116460, 1, 4.503, true, 145);
INSERT INTO public.planet VALUES (5, 'Gaea', 10531, 2, 4.321, false, 3);
INSERT INTO public.planet VALUES (6, 'Ares', 5698, 2, 4.454, false, 4);
INSERT INTO public.planet VALUES (7, 'Oceanus', 106547, 2, 4.454, true, 48);
INSERT INTO public.planet VALUES (8, 'Polyphemus', 125412, 2, 4.454, true, 14);
INSERT INTO public.planet VALUES (9, 'Steak', 6648, 3, 6.214, false, 6);
INSERT INTO public.planet VALUES (10, 'Chicken Wings', 2148, 4, 4.751, false, 4);
INSERT INTO public.planet VALUES (11, 'T-Rex Wings', 18354, 5, 4.987, false, 7);
INSERT INTO public.planet VALUES (12, 'Rivendell', 8457, 6, 9.124, false, 3);
INSERT INTO public.planet VALUES (13, 'The Shire', 6451, 6, 7.214, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpha Century A,B and C', 1.67, 1, 6);
INSERT INTO public.star VALUES (3, 'Cow Star', 2.6, 2, 3);
INSERT INTO public.star VALUES (4, 'Chicken', 0.7, 4, 10.5);
INSERT INTO public.star VALUES (5, 'T-Rex Star', 5.2, 4, 12.5);
INSERT INTO public.star VALUES (6, 'Middle-Earth Star', 3.3, 5, 3.2);
INSERT INTO public.star VALUES (1, 'Sun', 1.3927, 1, 4.603);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: meteor_stream_meteor_stream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_stream_meteor_stream_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: meteor_stream meteor_stream_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor_stream
    ADD CONSTRAINT meteor_stream_name_key UNIQUE (name);


--
-- Name: meteor_stream meteor_stream_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor_stream
    ADD CONSTRAINT meteor_stream_pkey PRIMARY KEY (meteor_stream_id);


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
