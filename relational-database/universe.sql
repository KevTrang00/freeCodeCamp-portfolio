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
-- Name: astronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronaut (
    astronaut_id integer NOT NULL,
    name character varying(100) NOT NULL,
    astronaut_position character varying(60),
    adventures integer
);


ALTER TABLE public.astronaut OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(30),
    description text,
    has_public_access boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_visited boolean,
    moon_type character varying(40),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    population integer,
    average_celsius_temperature numeric(5,1),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_safe boolean,
    star_type character varying(1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: astronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronaut VALUES (1, 'Chad Armstrong', 'Commander', 99);
INSERT INTO public.astronaut VALUES (2, 'Pete Maverick', 'Pilot', 243);
INSERT INTO public.astronaut VALUES (3, 'Einstein Iceman', 'Aerospace Engineer', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Whirlpool', 'Spiral', 'A spinning view of water-based objects', true);
INSERT INTO public.galaxy VALUES (2, 'Boom', 'Irregular', 'Something is exploding every 10 seconds', false);
INSERT INTO public.galaxy VALUES (3, 'Plutus', 'Peculiar', 'An abundance of wealth to be collected', true);
INSERT INTO public.galaxy VALUES (4, 'Aural', 'Elliptical', 'Different types of force and energy scattered', false);
INSERT INTO public.galaxy VALUES (5, 'Gluttonius', 'Irregular', 'A dream come true for starved individuals', true);
INSERT INTO public.galaxy VALUES (6, 'Harpocrates', 'Elliptical', 'Restricted access to a wealth of knowledge and secrets', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Slidenslope', true, 'waning crescent', 1);
INSERT INTO public.moon VALUES (2, 'Seaweed', false, 'waxing crescent', 2);
INSERT INTO public.moon VALUES (3, 'Arcoin', true, 'full moon', 3);
INSERT INTO public.moon VALUES (4, 'Secondplate', true, 'full moon', 4);
INSERT INTO public.moon VALUES (5, 'Weddinghope', true, 'new moon', 5);
INSERT INTO public.moon VALUES (6, 'Jadeship', true, 'full moon', 6);
INSERT INTO public.moon VALUES (7, 'Tradetime', false, 'new moon', 6);
INSERT INTO public.moon VALUES (8, 'Goldeneye', false, 'first quarter', 7);
INSERT INTO public.moon VALUES (9, 'Pearlmoon', false, 'full moon', 7);
INSERT INTO public.moon VALUES (10, 'GPSMoon', false, 'full moon', 7);
INSERT INTO public.moon VALUES (11, 'Nuggetmoon', true, 'waxing gibbous', 8);
INSERT INTO public.moon VALUES (12, 'Mashedmoon', false, 'full moon', 8);
INSERT INTO public.moon VALUES (13, 'Donutmoon', true, 'full moon', 9);
INSERT INTO public.moon VALUES (14, 'Macamoon', true, 'full moon', 9);
INSERT INTO public.moon VALUES (15, 'Bunmoon', true, 'full moon', 10);
INSERT INTO public.moon VALUES (16, 'Sodamoon', false, 'third quarter', 10);
INSERT INTO public.moon VALUES (17, 'Shakemoon', false, 'new moon', 11);
INSERT INTO public.moon VALUES (18, 'Scallopmoon', true, 'full moon', 11);
INSERT INTO public.moon VALUES (19, 'Tomatomoon', true, 'waxing crescent', 12);
INSERT INTO public.moon VALUES (20, 'Orangemoon', true, 'full', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Aquadom', true, 1975000, 30.2, 1);
INSERT INTO public.planet VALUES (2, 'Algaetopia', false, 0, 12.5, 1);
INSERT INTO public.planet VALUES (3, 'Goldenroad', false, 0, -10.0, 3);
INSERT INTO public.planet VALUES (4, 'Silverware', false, 0, -17.0, 3);
INSERT INTO public.planet VALUES (5, 'Diamondstone', false, 0, -40.0, 3);
INSERT INTO public.planet VALUES (6, 'Emeraldspring', true, 420000000, 25.5, 3);
INSERT INTO public.planet VALUES (7, 'Treasuretown', true, 25000000, 21.2, 4);
INSERT INTO public.planet VALUES (8, 'Chickcity', true, 1000000000, 35.5, 5);
INSERT INTO public.planet VALUES (9, 'Sweetdream', true, 31119000, 27.9, 5);
INSERT INTO public.planet VALUES (10, 'Burgergrove', true, 999999999, 42.0, 5);
INSERT INTO public.planet VALUES (11, 'Proteinhaven', true, 12500000, 23.0, 6);
INSERT INTO public.planet VALUES (12, 'Veggieville', true, 80000000, 35.2, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Parks', true, 'M', 1);
INSERT INTO public.star VALUES (2, 'Poseidon', false, 'F', 1);
INSERT INTO public.star VALUES (3, 'Theia', true, 'M', 3);
INSERT INTO public.star VALUES (4, 'Ubik', true, 'B', 3);
INSERT INTO public.star VALUES (5, 'Junkilla', true, 'O', 5);
INSERT INTO public.star VALUES (6, 'Organova', true, 'G', 5);


--
-- Name: astronaut astronaut_astronaut_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_astronaut_id_key UNIQUE (astronaut_id);


--
-- Name: astronaut astronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronaut
    ADD CONSTRAINT astronaut_pkey PRIMARY KEY (astronaut_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon fkey_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fkey_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fkey_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkey_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fkey_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fkey_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
