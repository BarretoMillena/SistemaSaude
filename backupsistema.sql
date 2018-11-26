--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-26 18:49:24 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 33006)
-- Name: sistemasaude; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sistemasaude;


ALTER SCHEMA sistemasaude OWNER TO postgres;

SET search_path = sistemasaude, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 33008)
-- Name: calendario; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE calendario (
    nm_descricao character varying,
    dt_data character varying(8)
);


ALTER TABLE calendario OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 33026)
-- Name: login; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE login (
    ds_senha character(10),
    nm_nomecompleto text,
    ds_email character varying(30)
);


ALTER TABLE login OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 33014)
-- Name: medico; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE medico (
    nm_nomecompleto text,
    ds_email character varying,
    ds_senha numeric(10,0),
    ds_fichadopaciente character varying(1),
    nm_especialidade text
);


ALTER TABLE medico OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 33020)
-- Name: paciente; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE paciente (
    nm_nomecompleto text,
    ds_senha numeric,
    ds_email character varying,
    ds_datanascimento date,
    ds_convenio numeric
);


ALTER TABLE paciente OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 33032)
-- Name: pasta; Type: TABLE; Schema: sistemasaude; Owner: postgres
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
-- Data for Name: calendario; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY calendario (nm_descricao, dt_data) FROM stdin;
\.


--
-- TOC entry 2156 (class 0 OID 33026)
-- Dependencies: 185
-- Data for Name: login; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY login (ds_senha, nm_nomecompleto, ds_email) FROM stdin;
\.


--
-- TOC entry 2154 (class 0 OID 33014)
-- Dependencies: 183
-- Data for Name: medico; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY medico (nm_nomecompleto, ds_email, ds_senha, ds_fichadopaciente, nm_especialidade) FROM stdin;
\.


--
-- TOC entry 2155 (class 0 OID 33020)
-- Dependencies: 184
-- Data for Name: paciente; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY paciente (nm_nomecompleto, ds_senha, ds_email, ds_datanascimento, ds_convenio) FROM stdin;
\.


--
-- TOC entry 2157 (class 0 OID 33032)
-- Dependencies: 186
-- Data for Name: pasta; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY pasta (nm_receita, nm_prontuario, nm_exames, nr_diasconsulta) FROM stdin;
\.


-- Completed on 2018-11-26 18:49:24 BRST

--
-- PostgreSQL database dump complete
--

