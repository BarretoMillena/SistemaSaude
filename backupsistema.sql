--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-26 19:11:32 BRST

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
    nm_descricao character varying NOT NULL,
    dt_data character varying(8) NOT NULL
);


ALTER TABLE calendario OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 33026)
-- Name: login; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE login (
    ds_senha character(10) NOT NULL,
    nm_nomecompleto text,
    ds_email character varying(30) NOT NULL
);


ALTER TABLE login OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 33014)
-- Name: medico; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE medico (
    nm_nomecompleto text NOT NULL,
    ds_email character varying NOT NULL,
    ds_senha numeric(10,0) NOT NULL,
    ds_fichadopaciente character varying(1) NOT NULL,
    nm_especialidade text NOT NULL
);


ALTER TABLE medico OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 33020)
-- Name: paciente; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE paciente (
    nm_nomecompleto text NOT NULL,
    ds_senha numeric NOT NULL,
    ds_email character varying NOT NULL,
    ds_datanascimento date,
    ds_convenio numeric
);


ALTER TABLE paciente OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 33032)
-- Name: pasta; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE pasta (
    nm_receita text NOT NULL,
    nm_prontuario character varying NOT NULL,
    nm_exames character varying NOT NULL,
    nr_diasconsulta date NOT NULL
);


ALTER TABLE pasta OWNER TO postgres;

--
-- TOC entry 2163 (class 0 OID 33008)
-- Dependencies: 182
-- Data for Name: calendario; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY calendario (nm_descricao, dt_data) FROM stdin;
\.


--
-- TOC entry 2166 (class 0 OID 33026)
-- Dependencies: 185
-- Data for Name: login; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY login (ds_senha, nm_nomecompleto, ds_email) FROM stdin;
\.


--
-- TOC entry 2164 (class 0 OID 33014)
-- Dependencies: 183
-- Data for Name: medico; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY medico (nm_nomecompleto, ds_email, ds_senha, ds_fichadopaciente, nm_especialidade) FROM stdin;
\.


--
-- TOC entry 2165 (class 0 OID 33020)
-- Dependencies: 184
-- Data for Name: paciente; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY paciente (nm_nomecompleto, ds_senha, ds_email, ds_datanascimento, ds_convenio) FROM stdin;
\.


--
-- TOC entry 2167 (class 0 OID 33032)
-- Dependencies: 186
-- Data for Name: pasta; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY pasta (nm_receita, nm_prontuario, nm_exames, nr_diasconsulta) FROM stdin;
\.


--
-- TOC entry 2040 (class 2606 OID 33065)
-- Name: calendario_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY calendario
    ADD CONSTRAINT calendario_pkey PRIMARY KEY (nm_descricao, dt_data);


--
-- TOC entry 2046 (class 2606 OID 33057)
-- Name: login_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_pkey PRIMARY KEY (ds_senha, ds_email);


--
-- TOC entry 2042 (class 2606 OID 33059)
-- Name: medico_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (nm_nomecompleto, ds_email, ds_senha, ds_fichadopaciente, nm_especialidade);


--
-- TOC entry 2044 (class 2606 OID 33061)
-- Name: paciente_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (nm_nomecompleto, ds_senha, ds_email);


--
-- TOC entry 2048 (class 2606 OID 33063)
-- Name: pasta_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY pasta
    ADD CONSTRAINT pasta_pkey PRIMARY KEY (nr_diasconsulta, nm_receita, nm_prontuario, nm_exames);


-- Completed on 2018-11-26 19:11:32 BRST

--
-- PostgreSQL database dump complete
--

