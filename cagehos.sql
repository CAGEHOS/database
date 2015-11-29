--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.5
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-11-29 21:07:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP DATABASE bdcagehos;
--
-- TOC entry 2006 (class 1262 OID 16412)
-- Name: bdcagehos; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE bdcagehos WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE bdcagehos OWNER TO postgres;

\connect bdcagehos

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2007 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 175 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2009 (class 0 OID 0)
-- Dependencies: 175
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 16413)
-- Name: empregado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE empregado (
    nome character varying(85),
    cpf character varying(14),
    tipo_id character varying(3),
    numero_id character varying(15),
    sexo character varying(12),
    estado_civil character varying(18),
    cidade character varying(46),
    estado character(2),
    cep character varying(10),
    logradouro character varying(80),
    numero character varying(6),
    bairro character varying(40),
    complemento character varying(50),
    setor character varying(20),
    cargo character varying(20),
    area_especialidades character varying(500),
    data_nascimento character(11)
);


ALTER TABLE empregado OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 16419)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE medico (
    nome character varying(85) NOT NULL,
    cpf character(14),
    tipo_id character varying(3),
    numero_id character varying(15),
    sexo character varying(12),
    estado_civil character varying(18),
    cidade character varying(46),
    estado character(2),
    cep character(10),
    logradouro character varying(80),
    numero character varying(6),
    bairro character varying(40),
    complemento character varying(50),
    crm character varying(12),
    pron_tratamento character varying(4),
    area_especialidades character varying(500),
    data_nascimento character(11)
);


ALTER TABLE medico OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 16425)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE paciente (
    nome character varying(85),
    cpf character(14),
    tipo_id character varying(3),
    numero_id character varying(15),
    sexo character varying(12),
    estado_civil character varying(18),
    cidade character varying(46),
    estado character(2),
    cep character(10),
    logradouro character varying(80),
    numero character varying(6),
    bairro character varying(40),
    complemento character varying(50),
    tipo_sanguineo character varying(3),
    tipo_atendimento character varying(10),
    medico_preferencial character varying(30) NOT NULL,
    observacoes character varying(500),
    data_nascimento character(11)
);


ALTER TABLE paciente OWNER TO postgres;

--
-- TOC entry 1999 (class 0 OID 16413)
-- Dependencies: 172
-- Data for Name: empregado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO empregado (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades, data_nascimento) VALUES ('Moises Nocousegue', '321.756.213-59', 'RG', '41854648', 'Masculino', 'Casado(a)', 'Erechim', 'RS', '99.700-000', 'Avenida Mauricio Cardoso', '1675', 'Centro', 'Apartamento 302', 'Segurança', 'Guarda da Recepção', '', '20/06/1994 ');
INSERT INTO empregado (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades, data_nascimento) VALUES ('Emily Araujo Almeida', '637.489.159-77', 'CNH', '881313477981', 'Feminino', 'Solteiro(a)', 'São Paulo', 'SP', '04.011-033', 'Rua Eça de Queiroz', '518', 'Vitoria', '', 'Saúde', 'Enfermeira Padrão', 'Pronto socorro;
Maternidade;', '23/09/1990 ');


--
-- TOC entry 2000 (class 0 OID 16419)
-- Dependencies: 173
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO medico (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, crm, pron_tratamento, area_especialidades, data_nascimento) VALUES ('Drauzio Varella', '764.416.390-50', 'RG', '1234567', 'Masculino', 'Casado(a)', 'Sao Paulo', 'SP', '46.478-971', 'Rua dos Papagaios', '375', 'Progresso', '', '1346795', 'Dr.', 'Esse manja de tudo;', '01/01/1943 ');
INSERT INTO medico (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, crm, pron_tratamento, area_especialidades, data_nascimento) VALUES ('Carlos Dias Azevedo', '523.514.820-77', 'RG', '4646748641', 'Masculino', 'Casado(a)', 'Manaus', 'AM', '69.037-721', 'Travessa Rio Negro', '1215', 'Rio Toldo', '', '134695', 'Méd.', 'Cirurgião geral;', '16/08/1948 ');


--
-- TOC entry 2001 (class 0 OID 16425)
-- Dependencies: 174
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO paciente (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, tipo_sanguineo, tipo_atendimento, medico_preferencial, observacoes, data_nascimento) VALUES ('Joaquim Juscelino Jobim', '974.093.681-44', 'RG', '46864687', 'Masculino', 'Separado(a)', 'Tres Arroios', 'RS', '99.725-000', 'Rua Borges de Medeiros', '375', 'Progresso', '', 'O-', NULL, 'Drauzio Varella', 'HIV Positivo;', '25/09/1965 ');
INSERT INTO paciente (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, tipo_sanguineo, tipo_atendimento, medico_preferencial, observacoes, data_nascimento) VALUES ('Geisy Arruda', '935.434.777-06', 'RG', '46898791', 'Feminino', 'Solteiro(a)', 'Sao Paulo', 'SP', '71.379-100', 'Rua dos Papagaios', '1267', 'Centro', '', 'A+', NULL, 'Drauzio Varella', 'IMC alto;', '30/03/1984 ');


--
-- TOC entry 2008 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-11-29 21:07:05

--
-- PostgreSQL database dump complete
--

