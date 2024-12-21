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
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    galaxy_type character varying,
    distance_from_earth numeric,
    galaxy_rank integer NOT NULL
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
    name character varying NOT NULL,
    has_life boolean,
    planet_id integer,
    moon_size numeric NOT NULL
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
    name character varying NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    star_id integer,
    planet_size numeric,
    has_rings boolean
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
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    name character varying NOT NULL,
    location character varying NOT NULL,
    capacity integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_space_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_space_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_space_station_id_seq OWNED BY public.space_station.space_station_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    star_type character varying NOT NULL,
    galaxy_id integer,
    galaxy_rank integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_station space_station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN space_station_id SET DEFAULT nextval('public.space_station_space_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13000, 'Spiral', 0, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Neighbor galaxy', 10000, 'Spiral', 2530000, 2);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small galaxy', 12000, 'Spiral', 3000000, 3);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Famous galaxy', 12000, 'Spiral', 2300000, 4);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Named after a hat', 15000, 'Spiral', 2800000, 5);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Massive elliptical galaxy', 13000, 'Elliptical', 5300000, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 1, 3474.8);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 2, 22.4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 2, 12.4);
INSERT INTO public.moon VALUES (4, 'Io', false, 3, 3643.2);
INSERT INTO public.moon VALUES (5, 'Europa', false, 3, 3121.6);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 3, 5268.0);
INSERT INTO public.moon VALUES (7, 'Titan', false, 4, 5150.0);
INSERT INTO public.moon VALUES (8, 'Rhea', false, 4, 1527.6);
INSERT INTO public.moon VALUES (9, 'Enceladus', false, 4, 504.2);
INSERT INTO public.moon VALUES (10, 'Triton', false, 6, 2706.0);
INSERT INTO public.moon VALUES (11, 'Charon', false, 7, 1212.0);
INSERT INTO public.moon VALUES (12, 'Oberon', false, 8, 1522.0);
INSERT INTO public.moon VALUES (13, 'Umbriel', false, 8, 1174.0);
INSERT INTO public.moon VALUES (14, 'Miranda', false, 8, 471.6);
INSERT INTO public.moon VALUES (15, 'Proteus', false, 8, 418.0);
INSERT INTO public.moon VALUES (16, 'Titania', false, 8, 1578.0);
INSERT INTO public.moon VALUES (17, 'Iapetus', false, 4, 1469.0);
INSERT INTO public.moon VALUES (18, 'Mimas', false, 4, 396.0);
INSERT INTO public.moon VALUES (19, 'Hyperion', false, 4, 360.0);
INSERT INTO public.moon VALUES (20, 'Phoebe', false, 4, 213.0);
INSERT INTO public.moon VALUES (21, 'Dione', false, 4, 1123.0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 4500, 1, 12742, false);
INSERT INTO public.planet VALUES (2, 'Mars', true, 4000, 1, 6779, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', true, 4600, 1, 139820, true);
INSERT INTO public.planet VALUES (4, 'Saturn', true, 4500, 1, 116460, true);
INSERT INTO public.planet VALUES (5, 'Venus', true, 4600, 1, 12104, false);
INSERT INTO public.planet VALUES (6, 'Mercury', true, 4600, 1, 4879, false);
INSERT INTO public.planet VALUES (7, 'Neptune', true, 4600, 2, 49528, true);
INSERT INTO public.planet VALUES (8, 'Uranus', true, 4600, 2, 51118, true);
INSERT INTO public.planet VALUES (9, 'Pluto', true, 4600, 1, 2376, false);
INSERT INTO public.planet VALUES (10, 'Titan', true, 4600, 4, 2575, true);
INSERT INTO public.planet VALUES (11, 'Ceres', true, 4600, 5, 940, false);
INSERT INTO public.planet VALUES (12, 'Eris', true, 4600, 5, 2326, false);


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'International Space Station', 'Low Earth Orbit', 6, 1);
INSERT INTO public.space_station VALUES (2, 'Lunar Gateway', 'Moon Orbit', 4, 1);
INSERT INTO public.space_station VALUES (3, 'Mars Station', 'Mars Orbit', 10, 2);
INSERT INTO public.space_station VALUES (4, 'Titan Outpost', 'Titan Orbit', 8, 4);
INSERT INTO public.space_station VALUES (5, 'SpaceX Station', 'Near Earth Orbit', 12, 1);
INSERT INTO public.space_station VALUES (6, 'Mars Base Alpha', 'Mars Orbit', 15, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 'G-type', 1, 1);
INSERT INTO public.star VALUES (2, 'Sirius', true, 'A-type', 1, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', false, 'Red supergiant', 1, 3);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', true, 'G-type', 2, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', true, 'Red dwarf', 2, 2);
INSERT INTO public.star VALUES (6, 'Rigel', false, 'Blue supergiant', 3, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_space_station_id_seq', 6, true);


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
-- Name: space_station space_station_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_name_key UNIQUE (name);


--
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (space_station_id);


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
-- Name: space_station space_station_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

