--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-12-20 16:35:52 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 25629)
-- Name: arquivodopaciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE arquivodopaciente (
    ds_receita character varying(50),
    nr_diasdeconsultas numeric,
    ds_fichadopaciente character varying(50),
    ds_exames character varying(100)
);


ALTER TABLE arquivodopaciente OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 25635)
-- Name: calendario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE calendario (
    nm_descricao character varying NOT NULL,
    dt_data character varying(8) NOT NULL
);


ALTER TABLE calendario OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 25683)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hibernate_sequence OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 25641)
-- Name: login; Type: TABLE; Schema: public; Owner: postgres
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
-- TOC entry 184 (class 1259 OID 25647)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres
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
-- TOC entry 186 (class 1259 OID 25675)
-- Name: pacientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pacientes (
    nomecompleto character varying(200),
    senha character varying(100),
    email character varying(200),
    dtnasc character varying(200),
    convenio character varying(200),
    numerofamilia character varying(200),
    cod_pac numeric(11,10) NOT NULL
);


ALTER TABLE pacientes OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 25659)
-- Name: pasta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pasta (
    nm_receita text NOT NULL,
    ds_observacaomedica character varying(100) NOT NULL,
    nm_exames character varying NOT NULL,
    nr_diasconsulta date NOT NULL
);


ALTER TABLE pasta OWNER TO postgres;

--
-- TOC entry 2169 (class 0 OID 25629)
-- Dependencies: 181
-- Data for Name: arquivodopaciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY arquivodopaciente (ds_receita, nr_diasdeconsultas, ds_fichadopaciente, ds_exames) FROM stdin;
\.


--
-- TOC entry 2170 (class 0 OID 25635)
-- Dependencies: 182
-- Data for Name: calendario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY calendario (nm_descricao, dt_data) FROM stdin;
\.


--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 187
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hibernate_sequence', 6, true);


--
-- TOC entry 2171 (class 0 OID 25641)
-- Dependencies: 183
-- Data for Name: login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY login (ds_senha, nm_nomecompleto, ds_email, ds_convenio, ds_numerofamilia) FROM stdin;
\.


--
-- TOC entry 2172 (class 0 OID 25647)
-- Dependencies: 184
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY medico (nm_nomecompleto, ds_email, ds_senha, ds_fichadopaciente, nm_especialidade) FROM stdin;
\.


--
-- TOC entry 2174 (class 0 OID 25675)
-- Dependencies: 186
-- Data for Name: pacientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pacientes (nomecompleto, senha, email, dtnasc, convenio, numerofamilia, cod_pac) FROM stdin;
gpv@gmail.com	macae	99917524	NEIN	NEIN	NEIN	2.0000000000
drfhyg	ggf	gfh@GMA	2018-12-12	gfh	hgf	3.0000000000
drfhyg	1234	gfh@GMA	2018-12-12	1234	1234	4.0000000000
haXHJGSXHJ	1234	BXB@GMAIL.COM	2018-12-25	BRADESCO	6F452	5.0000000000
haXHJGSXHJ	1234	BXB@GMAIL.COM	2018-12-25	BRADESCO	6F452	6.0000000000
\.


--
-- TOC entry 2173 (class 0 OID 25659)
-- Dependencies: 185
-- Data for Name: pasta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pasta (nm_receita, ds_observacaomedica, nm_exames, nr_diasconsulta) FROM stdin;
\.


--
-- TOC entry 2046 (class 2606 OID 25666)
-- Name: calendario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY calendario
    ADD CONSTRAINT calendario_pkey PRIMARY KEY (nm_descricao, dt_data);


--
-- TOC entry 2054 (class 2606 OID 25682)
-- Name: cod_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pacientes
    ADD CONSTRAINT cod_user PRIMARY KEY (cod_pac);


--
-- TOC entry 2048 (class 2606 OID 25668)
-- Name: login_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_pkey PRIMARY KEY (ds_senha, ds_email);


--
-- TOC entry 2050 (class 2606 OID 25670)
-- Name: medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (nm_nomecompleto, ds_email, ds_senha, ds_fichadopaciente, nm_especialidade);


--
-- TOC entry 2052 (class 2606 OID 25674)
-- Name: pasta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pasta
    ADD CONSTRAINT pasta_pkey PRIMARY KEY (nr_diasconsulta, nm_receita, ds_observacaomedica, nm_exames);


-- Completed on 2018-12-20 16:35:53 BRST

--
-- PostgreSQL database dump complete
--

