--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-27 11:09:34 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 10 (class 2615 OID 24700)
-- Name: sistemasaude; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sistemasaude;


ALTER SCHEMA sistemasaude OWNER TO postgres;

SET search_path = sistemasaude, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 192 (class 1259 OID 24741)
-- Name: arquivodopaciente; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE arquivodopaciente (
    ds_receita character varying(50),
    nr_diasdeconsultas numeric,
    ds_fichadopaciente character varying(50),
    ds_exames character varying(100)
);


ALTER TABLE arquivodopaciente OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 24701)
-- Name: calendario; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE calendario (
    nm_descricao character varying NOT NULL,
    dt_data character varying(8) NOT NULL
);


ALTER TABLE calendario OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 24707)
-- Name: login; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE login (
    ds_senha character(10) NOT NULL,
    nm_nomecompleto text,
    ds_email character varying(30) NOT NULL,
    ds_convenio character varying(50),
    ds_numerofamilia character varying(50)
);


ALTER TABLE login OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 24713)
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
-- TOC entry 190 (class 1259 OID 24719)
-- Name: paciente; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE paciente (
    nm_nomecompleto text NOT NULL,
    ds_senha numeric NOT NULL,
    ds_email character varying NOT NULL,
    ds_datanascimento date,
    ds_convenio numeric,
    ds_numerofamilia character varying(50)
);


ALTER TABLE paciente OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 24725)
-- Name: pasta; Type: TABLE; Schema: sistemasaude; Owner: postgres
--

CREATE TABLE pasta (
    nm_receita text NOT NULL,
    ds_observacaomedica character varying(100) NOT NULL,
    nm_exames character varying NOT NULL,
    nr_diasconsulta date NOT NULL
);


ALTER TABLE pasta OWNER TO postgres;

--
-- TOC entry 2187 (class 0 OID 24741)
-- Dependencies: 192
-- Data for Name: arquivodopaciente; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY arquivodopaciente (ds_receita, nr_diasdeconsultas, ds_fichadopaciente, ds_exames) FROM stdin;
\.


--
-- TOC entry 2182 (class 0 OID 24701)
-- Dependencies: 187
-- Data for Name: calendario; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY calendario (nm_descricao, dt_data) FROM stdin;
\.


--
-- TOC entry 2183 (class 0 OID 24707)
-- Dependencies: 188
-- Data for Name: login; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY login (ds_senha, nm_nomecompleto, ds_email, ds_convenio, ds_numerofamilia) FROM stdin;
\.


--
-- TOC entry 2184 (class 0 OID 24713)
-- Dependencies: 189
-- Data for Name: medico; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY medico (nm_nomecompleto, ds_email, ds_senha, ds_fichadopaciente, nm_especialidade) FROM stdin;
\.


--
-- TOC entry 2185 (class 0 OID 24719)
-- Dependencies: 190
-- Data for Name: paciente; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY paciente (nm_nomecompleto, ds_senha, ds_email, ds_datanascimento, ds_convenio, ds_numerofamilia) FROM stdin;
\.


--
-- TOC entry 2186 (class 0 OID 24725)
-- Dependencies: 191
-- Data for Name: pasta; Type: TABLE DATA; Schema: sistemasaude; Owner: postgres
--

COPY pasta (nm_receita, ds_observacaomedica, nm_exames, nr_diasconsulta) FROM stdin;
\.


--
-- TOC entry 2059 (class 2606 OID 24732)
-- Name: calendario_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY calendario
    ADD CONSTRAINT calendario_pkey PRIMARY KEY (nm_descricao, dt_data);


--
-- TOC entry 2061 (class 2606 OID 24734)
-- Name: login_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_pkey PRIMARY KEY (ds_senha, ds_email);


--
-- TOC entry 2063 (class 2606 OID 24736)
-- Name: medico_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (nm_nomecompleto, ds_email, ds_senha, ds_fichadopaciente, nm_especialidade);


--
-- TOC entry 2065 (class 2606 OID 24738)
-- Name: paciente_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (nm_nomecompleto, ds_senha, ds_email);


--
-- TOC entry 2067 (class 2606 OID 24754)
-- Name: pasta_pkey; Type: CONSTRAINT; Schema: sistemasaude; Owner: postgres
--

ALTER TABLE ONLY pasta
    ADD CONSTRAINT pasta_pkey PRIMARY KEY (nr_diasconsulta, nm_receita, ds_observacaomedica, nm_exames);


-- Completed on 2018-11-27 11:09:34 BRST

--
-- PostgreSQL database dump complete
--

