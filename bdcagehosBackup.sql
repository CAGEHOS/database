--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5beta1
-- Dumped by pg_dump version 9.5beta1

-- Started on 2015-11-01 14:06:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE bdcagehos;
--
-- TOC entry 2115 (class 1262 OID 16429)
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
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2116 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 183 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2118 (class 0 OID 0)
-- Dependencies: 183
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 16436)
-- Name: empregado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE empregado (
    nome character varying(85),
    data_nascimento date,
    cpf character varying(11),
    tipo_id character varying(3),
    numero_id character varying(15),
    sexo character varying(12),
    estado_civil character varying(11),
    cidade character varying(46),
    estado character(2),
    cep character varying(9),
    logradouro character varying(80),
    numero character varying(6),
    bairro character varying(40),
    complemento character varying(50),
    setor character varying(20),
    cargo character varying(20),
    area_especialidades character varying(300)
);


ALTER TABLE empregado OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16430)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE medico (
    nome character varying(85),
    cpf character(11),
    data_nascimento date,
    tipo_id character varying(3),
    numero_id character varying(15),
    sexo character varying(12),
    estado_civil character varying(11),
    cidade character varying(46),
    estado character(2),
    cep character(9),
    logradouro character varying(80),
    numero character varying(6),
    bairro character varying(40),
    complemento character varying(50),
    crm character varying(12),
    pron_tratamento character varying(4),
    area_especialidades character varying(300)
);


ALTER TABLE medico OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16433)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE paciente (
    nome character varying(85),
    cpf character(11),
    tipo_id character varying(3),
    numero_id character varying(15),
    sexo character varying(12),
    estado_civil character varying(11),
    cidade character varying(46),
    estado character(2),
    cep character(9),
    logradouro character varying(80),
    numero character varying(6),
    bairro character varying(40),
    complemento character varying(50),
    tipo_sanguineo character varying(3),
    tipo_atendimento character varying(10),
    medico_preferencial character varying(30) NOT NULL,
    observacoes character varying(300),
    data_nascimento date
);


ALTER TABLE paciente OWNER TO postgres;

--
-- TOC entry 2110 (class 0 OID 16436)
-- Dependencies: 182
-- Data for Name: empregado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO empregado (nome, data_nascimento, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades) VALUES ('teste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO empregado (nome, data_nascimento, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades) VALUES ('ZimbabueTESTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO empregado (nome, data_nascimento, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades) VALUES ('ZimbabueTESTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- TOC entry 2108 (class 0 OID 16430)
-- Dependencies: 180
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2109 (class 0 OID 16433)
-- Dependencies: 181
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO paciente (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, tipo_sanguineo, tipo_atendimento, medico_preferencial, observacoes, data_nascimento) VALUES ('Jorge Teste', '023.770.820', 'RG', '4105026415', 'Masculino', 'Solteiro', 'Erechim', 'RS', '99.700-00', 'Giacom luiz torresmo', '524', 'boca de lajota', 'rapadura seca', 'A+', 'Normal', 'Toninho Zico', 'Muleque piranha, piso em caco de vidro, encravo duas unha', '1985-05-25');
INSERT INTO paciente (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, tipo_sanguineo, tipo_atendimento, medico_preferencial, observacoes, data_nascimento) VALUES ('Maria tere motogrande', '003.170.320', 'RG', '5206955623', 'Feminino', 'Solteiro', 'Erechim', 'RS', '99.700-00', 'Davi Gilmor floyd', '658', 'três toques forte na garganta', 'agua dura tando bate', 'A+', 'Normal', 'Eduardo Servero', 'mina malandra, gravida gemeos, 3 meses marido não sabe, ta trabalhando de caminhoneiro no ceará', '1985-05-25');


--
-- TOC entry 1992 (class 2606 OID 16446)
-- Name: pk_medico; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT pk_medico PRIMARY KEY (medico_preferencial);


--
-- TOC entry 1990 (class 1259 OID 16452)
-- Name: fki_paciente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_paciente ON medico USING btree (nome);


--
-- TOC entry 1993 (class 2606 OID 16447)
-- Name: fk_paciente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medico
    ADD CONSTRAINT fk_paciente FOREIGN KEY (nome) REFERENCES paciente(medico_preferencial);


--
-- TOC entry 2117 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-11-01 14:06:40

--
-- PostgreSQL database dump complete
--

