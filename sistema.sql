--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-14 13:58:20 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2152 (class 1262 OID 16425)
-- Dependencies: 2151
-- Name: pacoquinhadatabase; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE pacoquinhadatabase IS 'preciso passar de serie ';


--
-- TOC entry 9 (class 2615 OID 16498)
-- Name: paciente; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA paciente;


ALTER SCHEMA paciente OWNER TO postgres;

--
-- TOC entry 7 (class 2615 OID 16426)
-- Name: pacoquinhabarreto; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pacoquinhabarreto;


ALTER SCHEMA pacoquinhabarreto OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = paciente, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 16514)
-- Name: calendario; Type: TABLE; Schema: paciente; Owner: postgres
--

CREATE TABLE calendario (
    nr_data date,
    nm_descricao text
);


ALTER TABLE calendario OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16508)
-- Name: medico; Type: TABLE; Schema: paciente; Owner: postgres
--

CREATE TABLE medico (
    nm_nomecompleto text,
    ds_email text,
    ds_senha numeric,
    ds_fichadopaciente character varying(1)
);


ALTER TABLE medico OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16502)
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
-- TOC entry 2146 (class 0 OID 16514)
-- Dependencies: 185
-- Data for Name: calendario; Type: TABLE DATA; Schema: paciente; Owner: postgres
--

COPY calendario (nr_data, nm_descricao) FROM stdin;
\.


--
-- TOC entry 2145 (class 0 OID 16508)
-- Dependencies: 184
-- Data for Name: medico; Type: TABLE DATA; Schema: paciente; Owner: postgres
--

COPY medico (nm_nomecompleto, ds_email, ds_senha, ds_fichadopaciente) FROM stdin;
\.


--
-- TOC entry 2144 (class 0 OID 16502)
-- Dependencies: 183
-- Data for Name: paciente; Type: TABLE DATA; Schema: paciente; Owner: postgres
--

COPY paciente (nm_nomecompleto, ds_senha, ds_email, ds_datanascimento, ds_convenio) FROM stdin;
\.


--
-- TOC entry 2154 (class 0 OID 0)
-- Dependencies: 8
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-14 13:58:20 BRST

--
-- PostgreSQL database dump complete
--

