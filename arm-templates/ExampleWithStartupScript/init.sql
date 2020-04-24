--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-03-23 16:12:53

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
-- TOC entry 202 (class 1259 OID 16400)
-- Name: external_id_mapping; Type: TABLE; Schema: public; Owner: postgres
--

DROP TABLE public.external_id_mapping;

CREATE TABLE public.external_id_mapping (
    id integer NOT NULL,
    sf_id character varying(30) NOT NULL,
    external_id character varying(30) NOT NULL,
    org_id character varying(30) NOT NULL
);


ALTER TABLE public.external_id_mapping OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16416)
-- Name: external_id_mapping_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.external_id_mapping_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.external_id_mapping_id_seq OWNER TO postgres;

--
-- TOC entry 2825 (class 0 OID 0)
-- Dependencies: 203
-- Name: external_id_mapping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.external_id_mapping_id_seq OWNED BY public.external_id_mapping.id;


--
-- TOC entry 2689 (class 2604 OID 16418)
-- Name: external_id_mapping id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.external_id_mapping ALTER COLUMN id SET DEFAULT nextval('public.external_id_mapping_id_seq'::regclass);


--
-- TOC entry 2691 (class 2606 OID 16426)
-- Name: external_id_mapping PKEY; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.external_id_mapping
    ADD CONSTRAINT "PKEY" PRIMARY KEY (id);


--
-- TOC entry 2693 (class 2606 OID 16436)
-- Name: external_id_mapping external_id_mapping_sf_id_external_id_org_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.external_id_mapping
    ADD CONSTRAINT external_id_mapping_sf_id_external_id_org_id_key UNIQUE (sf_id, external_id, org_id);


-- Completed on 2020-03-23 16:12:53

--
-- PostgreSQL database dump complete
--

