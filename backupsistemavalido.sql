--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-26 18:14:35 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 33006)
-- Name: paciente; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA paciente;


ALTER SCHEMA paciente OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2165 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = paciente, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 33008)
-- Name: calendario; Type: TABLE; Schema: paciente; Owner: postgres
--

CREATE TABLE calendario (
    nr_data date,
    nm_descricao text
);


ALTER TABLE calendario OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 33026)
-- Name: login; Type: TABLE; Schema: paciente; Owner: postgres
--

CREATE TABLE login (
    ds_senha character(1),
    nm_nomecompleto text,
    nm_email text
);


ALTER TABLE login OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 33014)
-- Name: medico; Type: TABLE; Schema: paciente; Owner: postgres
--

CREATE TABLE medico (
    nm_nomecompleto text,
    ds_email text,
    ds_senha numeric,
    ds_fichadopaciente character varying(1),
    nm_especialidade text
);


ALTER TABLE medico OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 33020)
-- Name: paciente; Type: TABLE; Schema: paciente; Owner: postgres
--

CREATE TABLE paciente (
    nm_nomecompleto text,
    ds_senha numeric,
    ds_email text,
    ds_datanascimento date,
    ds_convenio numeric
);


ALTER TABLE paciente OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 33032)
-- Name: pasta; Type: TABLE; Schema: paciente; Owner: postgres
--

CREATE TABLE pasta (
    nm_receita character varying,
    nm_prontuario character varying,
    nm_exames character varying,
    nr_diasconsulta date
);


ALTER TABLE pasta OWNER TO postgres;

--
-- TOC entry 2153 (class 0 OID 33008)
-- Dependencies: 182
-- Data for Name: calendario; Type: TABLE DATA; Schema: paciente; Owner: postgres
--

COPY calendario (nr_data, nm_descricao) FROM stdin;
\.


--
-- TOC entry 2156 (class 0 OID 33026)
-- Dependencies: 185
-- Data for Name: login; Type: TABLE DATA; Schema: paciente; Owner: postgres
--

COPY login (ds_senha, nm_nomecompleto, nm_email) FROM stdin;
\.


--
-- TOC entry 2154 (class 0 OID 33014)
-- Dependencies: 183
-- Data for Name: medico; Type: TABLE DATA; Schema: paciente; Owner: postgres
--

COPY medico (nm_nomecompleto, ds_email, ds_senha, ds_fichadopaciente, nm_especialidade) FROM stdin;
\.


--
-- TOC entry 2155 (class 0 OID 33020)
-- Dependencies: 184
-- Data for Name: paciente; Type: TABLE DATA; Schema: paciente; Owner: postgres
--

COPY paciente (nm_nomecompleto, ds_senha, ds_email, ds_datanascimento, ds_convenio) FROM stdin;
\.


--
-- TOC entry 2157 (class 0 OID 33032)
-- Dependencies: 186
-- Data for Name: pasta; Type: TABLE DATA; Schema: paciente; Owner: postgres
--

COPY pasta (nm_receita, nm_prontuario, nm_exames, nr_diasconsulta) FROM stdin;
\.


--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 8
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-26 18:14:36 BRST

--
-- PostgreSQL database dump complete
--

