--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.0

-- Started on 2026-05-18 10:29:04

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
-- TOC entry 218 (class 1259 OID 16407)
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    id integer NOT NULL,
    nombre character varying(75) NOT NULL,
    apellido character varying(75) NOT NULL,
    id_curso integer,
    fecha_nacimiento date,
    hace_deportes boolean
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16406)
-- Name: alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alumnos_id_seq OWNER TO postgres;

--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 217
-- Name: alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumnos_id_seq OWNED BY public.alumnos.id;


--
-- TOC entry 222 (class 1259 OID 16426)
-- Name: calificaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calificaciones (
    id integer NOT NULL,
    id_alumno integer NOT NULL,
    id_materia integer NOT NULL,
    nota integer NOT NULL,
    fecha date DEFAULT CURRENT_DATE NOT NULL
);


ALTER TABLE public.calificaciones OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16425)
-- Name: calificaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calificaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.calificaciones_id_seq OWNER TO postgres;

--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 221
-- Name: calificaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calificaciones_id_seq OWNED BY public.calificaciones.id;


--
-- TOC entry 216 (class 1259 OID 16400)
-- Name: cursos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cursos (
    id integer NOT NULL,
    nombre character varying(75) NOT NULL
);


ALTER TABLE public.cursos OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: cursos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cursos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cursos_id_seq OWNER TO postgres;

--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 215
-- Name: cursos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cursos_id_seq OWNED BY public.cursos.id;


--
-- TOC entry 220 (class 1259 OID 16419)
-- Name: materias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materias (
    id integer NOT NULL,
    nombre character varying(75) NOT NULL
);


ALTER TABLE public.materias OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16418)
-- Name: materias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.materias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.materias_id_seq OWNER TO postgres;

--
-- TOC entry 4826 (class 0 OID 0)
-- Dependencies: 219
-- Name: materias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.materias_id_seq OWNED BY public.materias.id;


--
-- TOC entry 4650 (class 2604 OID 16410)
-- Name: alumnos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos ALTER COLUMN id SET DEFAULT nextval('public.alumnos_id_seq'::regclass);


--
-- TOC entry 4652 (class 2604 OID 16429)
-- Name: calificaciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones ALTER COLUMN id SET DEFAULT nextval('public.calificaciones_id_seq'::regclass);


--
-- TOC entry 4649 (class 2604 OID 16403)
-- Name: cursos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos ALTER COLUMN id SET DEFAULT nextval('public.cursos_id_seq'::regclass);


--
-- TOC entry 4651 (class 2604 OID 16422)
-- Name: materias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias ALTER COLUMN id SET DEFAULT nextval('public.materias_id_seq'::regclass);


--
-- TOC entry 4813 (class 0 OID 16407)
-- Dependencies: 218
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (1, 'Federico', 'De La Puente Sztajer', 1, '2007-03-14', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (2, 'Nicolas', 'Frenkel', 1, '2008-11-02', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (3, 'Andres', 'Furland Otero', 1, '2007-06-21', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (4, 'Brandon Ivan', 'Gaguine Alexandrovich', 1, '2008-08-09', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (5, 'Luca', 'Gamas De Maio', 1, '2007-01-18', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (6, 'Benjamin', 'Hamra Minian', 1, '2008-05-30', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (7, 'Martina Sol', 'Korinfeld Asher', 1, '2007-09-11', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (8, 'Eitan Uriel', 'Koze', 1, '2008-12-25', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (9, 'Benjamin Esteban', 'Kracovitz', 1, '2007-04-07', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (10, 'Tomás Vinicio', 'Lopez', 1, '2008-09-13', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (11, 'Tomás', 'Mandelman', 1, '2007-07-19', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (12, 'Joaquín', 'Medina', 1, '2008-02-03', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (13, 'Nicolas Darren', 'Navarro Feinberg', 1, '2007-10-28', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (14, 'Catalina Luján', 'Rodriguez Grosso', 1, '2008-06-15', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (15, 'Lucas Ioel', 'Roitman', 1, '2007-05-08', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (16, 'Martín', 'Saban', 1, '2008-03-27', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (17, 'Florencia', 'Sirotinsky', 1, '2007-08-16', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (18, 'Victoria', 'Tandeter', 1, '2008-10-05', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (19, 'Elian', 'Ulman', 1, '2007-02-22', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (20, 'Milena', 'Winer', 1, '2008-07-01', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (21, 'Camila', 'Zielonka', 1, '2007-11-09', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (22, 'Zoe', 'Acquistapace', 2, '2008-04-14', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (23, 'Vitas', 'Alán', 2, '2007-06-02', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (24, 'Felipe', 'Andraca', 2, '2008-09-18', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (25, 'Felipe', 'Beckford', 2, '2007-01-11', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (26, 'Ilán', 'Bleicher', 2, '2008-12-07', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (27, 'Facundo', 'Cardoso Peri', 2, '2007-03-24', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (28, 'Juan Sebastián', 'Carús', 2, '2008-08-29', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (29, 'Lucas', 'Chechik', 2, '2007-10-12', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (30, 'Catalina', 'Cohen', 2, '2008-05-21', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (31, 'Nicolás', 'Cukier', 2, '2007-07-03', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (32, 'Gastón', 'Daiksel', 2, '2008-11-14', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (33, 'Federico', 'Drucker', 2, '2007-02-27', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (34, 'Felipe', 'Feldman', 2, '2008-06-18', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (35, 'Uriel', 'Galanti', 2, '2007-04-30', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (36, 'Alán', 'Gordon', 2, '2008-09-05', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (37, 'Tomás', 'Grinstein', 2, '2007-01-16', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (38, 'Canela', 'Ledezma', 2, '2008-03-08', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (39, 'Manuel', 'Mandel', 2, '2007-12-01', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (40, 'Matias', 'Naddeo', 2, '2008-07-25', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (41, 'Brisa', 'Monastiridis Vorornicoff', 2, '2007-05-19', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (42, 'Chloe', 'Monastirsky', 2, '2008-10-10', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (43, 'Levi Iván', 'Moscovich', 2, '2007-01-28', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (44, 'Máximo', 'Patejim', 2, '2008-08-17', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (45, 'Juan Manuel', 'Sabathie Lopez', 2, '2007-03-06', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (46, 'Florencia', 'Sack', 2, '2008-05-23', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (47, 'Naomi', 'Serebrinsky', 2, '2007-09-12', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (48, 'Suti', 'Uriel', 2, '2008-11-30', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (49, 'Julieta', 'Usoz', 2, '2007-06-15', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (50, 'Luciano', 'Vallejos', 2, '2008-02-09', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (51, 'Matias', 'Wolfus', 2, '2007-07-27', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (52, 'Agustin', 'Aiello', 3, '2008-04-03', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (53, 'Jazmin', 'Arias', 3, '2007-10-21', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (54, 'Alejo', 'Campano', 3, '2008-12-13', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (55, 'Julian', 'Canievsky', 3, '2007-05-29', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (56, 'Santiago', 'Choe', 3, '2008-09-07', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (57, 'Damian', 'Cymerman', 3, '2007-02-14', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (58, 'Tobias', 'Digestani', 3, '2008-06-11', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (59, 'Valentina', 'Elterman', 3, '2007-08-25', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (60, 'Andrés', 'Fishman', 3, '2008-01-31', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (61, 'Fidel', 'Goldsman', 3, '2007-11-18', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (62, 'Julian', 'Hofman', 3, '2008-03-03', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (63, 'Santiago', 'Hong', 3, '2007-07-14', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (64, 'Joaquin', 'Iribas', 3, '2008-10-26', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (65, 'Nicolas', 'Jajurin', 3, '2007-04-09', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (66, 'Ignacio', 'Kohn', 3, '2008-06-20', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (67, 'Victoria', 'Kriger', 3, '2007-12-02', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (68, 'Alan', 'Laizerovich', 3, '2008-05-15', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (69, 'Damian', 'Leibman', 3, '2007-09-27', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (70, 'Facundo', 'Lukacher', 3, '2008-02-08', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (71, 'Pedro', 'Malowicki', 3, '2007-11-22', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (72, 'Dante', 'Martinez', 3, '2008-03-17', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (73, 'Jonatan', 'Naifeld', 3, '2007-08-04', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (74, 'Diana', 'Park', 3, '2008-01-25', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (75, 'Ciro', 'Perazzo', 3, '2007-06-30', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (76, 'Santiago', 'Schettini', 3, '2008-10-11', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (77, 'Nicolas', 'Schnaider', 3, '2007-05-07', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (78, 'Ailin', 'Severino', 3, '2008-09-19', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (79, 'Sofia', 'Zalucki', 3, '2007-12-28', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (80, 'Gael', 'Zolotow', 3, '2008-04-24', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (81, 'Cecilia', 'Abreu', 4, '2007-07-13', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (82, 'Federico', 'Ajami', 4, '2008-02-16', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (83, 'Maximiliano', 'Bernardoni', 4, '2007-10-03', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (84, 'Sebastián', 'Calviño', 4, '2008-06-09', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (85, 'Santiago', 'Dobrovitzky', 4, '2007-01-12', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (86, 'Lucas', 'Dorin', 4, '2008-11-01', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (87, 'Lucas', 'Dueñaz', 4, '2007-03-29', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (88, 'Tobias', 'Epsztein', 4, '2008-08-18', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (89, 'Ignacio', 'Eskenazi', 4, '2007-05-26', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (90, 'Manuel', 'Gartenkrot Casal', 4, '2008-09-30', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (91, 'Tomás', 'Goldentul', 4, '2007-02-05', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (92, 'Uriel', 'Grinfeld', 4, '2008-07-21', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (93, 'Máximo', 'Hevia', 4, '2007-12-14', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (94, 'Luciana', 'Kampel', 4, '2008-04-06', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (95, 'Martín', 'Ku', 4, '2007-10-23', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (96, 'Juana', 'Lopez Valenzuela', 4, '2008-01-17', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (97, 'Tobias', 'Nul', 4, '2007-06-28', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (98, 'Augusto', 'Perez', 4, '2008-11-09', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (99, 'Ramiro', 'Pita', 4, '2007-08-31', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (100, 'Felipe', 'Plat', 4, '2008-03-12', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (101, 'Ciro', 'Ranieli', 4, '2007-05-04', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (102, 'Joaquín', 'Stock', 4, '2008-09-15', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (103, 'Iara', 'Szwarstein', 4, '2007-02-20', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (104, 'Lior', 'Tanel', 4, '2008-07-08', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (105, 'Theo', 'Trosman', 4, '2007-11-24', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (106, 'Clara', 'Wolman', 4, '2008-04-27', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (107, 'Federico Victor', 'Abas', 5, '2007-01-30', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (108, 'Facundo Eliel', 'Angel', 5, '2008-06-13', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (109, 'Micaela', 'Berman Kreserman', 5, '2007-09-22', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (110, 'Matias Ramiro', 'Brasburg', 5, '2008-03-05', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (111, 'Kiara Sofía', 'Brukiew', 5, '2007-12-19', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (112, 'Ilan Uriel', 'Busso', 5, '2008-05-10', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (113, 'Franco', 'Cappella', 5, '2007-08-01', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (114, 'Francisco', 'Castillo', 5, '2008-10-14', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (115, 'Ludmila Uma', 'Grün', 5, '2007-04-11', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (116, 'Uriel Federico', 'Hamu', 5, '2008-07-26', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (117, 'Eliel', 'Jamilis', 5, '2007-11-06', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (118, 'Delfina', 'Kaltman', 5, '2008-02-15', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (119, 'Federico', 'Kreserman', 5, '2007-06-22', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (120, 'Benjamin', 'Liberman', 5, '2008-09-08', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (121, 'Mateo Julian', 'Milano', 5, '2007-01-09', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (122, 'Gael Ricardo', 'Mizrahi', 5, '2008-12-03', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (123, 'Andres', 'Perel', 5, '2007-05-17', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (124, 'Tobías', 'Rohr', 5, '2008-08-27', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (125, 'Bruno', 'Roth', 5, '2007-03-01', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (126, 'Ivan Daniel', 'Shoffer', 5, '2008-10-20', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (127, 'Sofia', 'Sufryn', 5, '2007-07-02', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (128, 'Milena', 'Svatzky', 5, '2008-11-11', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (129, 'Augusto Amadeo', 'Traverso', 5, '2007-04-18', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (130, 'Maica', 'Trutner Kobryniec', 5, '2008-06-29', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (131, 'Tobias Yoel', 'Turquie', 5, '2007-09-16', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (132, 'Franco', 'Urquizo Barba', 5, '2008-01-24', true);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (133, 'Alexia', 'Wainstok', 5, '2007-08-07', false);
INSERT INTO public.alumnos (id, nombre, apellido, id_curso, fecha_nacimiento, hace_deportes) VALUES (134, 'Morena Yael', 'Zalcman', 5, '2008-05-12', true);


--
-- TOC entry 4817 (class 0 OID 16426)
-- Dependencies: 222
-- Data for Name: calificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.calificaciones (id, id_alumno, id_materia, nota, fecha) VALUES (2, 1, 4, 9, '2026-05-18');


--
-- TOC entry 4811 (class 0 OID 16400)
-- Dependencies: 216
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cursos (id, nombre) VALUES (1, '5IA');
INSERT INTO public.cursos (id, nombre) VALUES (2, '5IB');
INSERT INTO public.cursos (id, nombre) VALUES (3, '5IC');
INSERT INTO public.cursos (id, nombre) VALUES (4, '5ID');
INSERT INTO public.cursos (id, nombre) VALUES (5, '5IE');


--
-- TOC entry 4815 (class 0 OID 16419)
-- Dependencies: 220
-- Data for Name: materias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.materias (id, nombre) VALUES (2, 'Lengua');
INSERT INTO public.materias (id, nombre) VALUES (3, 'Historia');
INSERT INTO public.materias (id, nombre) VALUES (4, 'Programación');
INSERT INTO public.materias (id, nombre) VALUES (5, 'Base de Datos');
INSERT INTO public.materias (id, nombre) VALUES (6, '');
INSERT INTO public.materias (id, nombre) VALUES (7, 'Educación Física');


--
-- TOC entry 4827 (class 0 OID 0)
-- Dependencies: 217
-- Name: alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumnos_id_seq', 134, true);


--
-- TOC entry 4828 (class 0 OID 0)
-- Dependencies: 221
-- Name: calificaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calificaciones_id_seq', 2, true);


--
-- TOC entry 4829 (class 0 OID 0)
-- Dependencies: 215
-- Name: cursos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cursos_id_seq', 5, true);


--
-- TOC entry 4830 (class 0 OID 0)
-- Dependencies: 219
-- Name: materias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materias_id_seq', 7, true);


--
-- TOC entry 4657 (class 2606 OID 16412)
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (id);


--
-- TOC entry 4661 (class 2606 OID 16434)
-- Name: calificaciones calificaciones_id_alumno_id_materia_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_id_alumno_id_materia_key UNIQUE (id_alumno, id_materia);


--
-- TOC entry 4663 (class 2606 OID 16432)
-- Name: calificaciones calificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4655 (class 2606 OID 16405)
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id);


--
-- TOC entry 4659 (class 2606 OID 16424)
-- Name: materias materias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (id);


--
-- TOC entry 4664 (class 2606 OID 16413)
-- Name: alumnos alumnos_id_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id);


--
-- TOC entry 4665 (class 2606 OID 16435)
-- Name: calificaciones calificaciones_id_alumno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_id_alumno_fkey FOREIGN KEY (id_alumno) REFERENCES public.alumnos(id);


--
-- TOC entry 4666 (class 2606 OID 16440)
-- Name: calificaciones calificaciones_id_materia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones
    ADD CONSTRAINT calificaciones_id_materia_fkey FOREIGN KEY (id_materia) REFERENCES public.materias(id);


-- Completed on 2026-05-18 10:29:04

--
-- PostgreSQL database dump complete
--

