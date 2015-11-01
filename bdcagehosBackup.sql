--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5beta1
-- Dumped by pg_dump version 9.5beta1

-- Started on 2015-11-01 19:13:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE bdcagehos;
--
-- TOC entry 2111 (class 1262 OID 16429)
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
-- TOC entry 2112 (class 0 OID 0)
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
-- TOC entry 2114 (class 0 OID 0)
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
-- TOC entry 180 (class 1259 OID 16430)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres
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
-- TOC entry 181 (class 1259 OID 16433)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres
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
-- TOC entry 2106 (class 0 OID 16436)
-- Dependencies: 182
-- Data for Name: empregado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO empregado (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades, data_nascimento) VALUES ('teste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO empregado (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades, data_nascimento) VALUES ('ZimbabueTESTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO empregado (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades, data_nascimento) VALUES ('ZimbabueTESTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- TOC entry 2104 (class 0 OID 16430)
-- Dependencies: 180
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO medico (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, crm, pron_tratamento, area_especialidades, data_nascimento) VALUES ('Julio Cesar Ceron', '023.770.820-50', 'RG', '4105026415', 'Masculino', 'Solteiro(a)', 'Erechim', 'RS', '99.700-000', 'Giacomo Luiz Berticelli', '307', 'Atlântico', 'Casa verde', '23452345', 'Méd.', 'dfasdfasdfasdf', '26/07/1990 ');
INSERT INTO medico (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, crm, pron_tratamento, area_especialidades, data_nascimento) VALUES ('Leonardo Falk ', '023.770.820-50', 'RG', '1450204651', 'Masculino', 'Solteiro(a)', 'Getúlio Vargas', 'RS', '99.700-000', 'Jorge Amado batista Raul Seixas da Silva Souza', '6545', 'Floresta Negra Afro', 'Vem que tem', '123423243', 'Méd.', 'tirei as chaves primarias e secundárias por que tava dando bosta em tudo, então não tem ligação ainda entre as tabelas, deixamos isso para o final,
se caso ainda quisermos colocar.', '24/05/1994 ');


--
-- TOC entry 2105 (class 0 OID 16433)
-- Dependencies: 181
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO paciente (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, tipo_sanguineo, tipo_atendimento, medico_preferencial, observacoes, data_nascimento) VALUES ('Jorge Teste', '023.770.820   ', 'RG', '4105026415', 'Masculino', 'Solteiro', 'Erechim', 'RS', '99.700-00 ', 'Giacom luiz torresmo', '524', 'boca de lajota', 'rapadura seca', 'A+', 'Normal', 'Toninho Zico', 'Muleque piranha, piso em caco de vidro, encravo duas unha', NULL);
INSERT INTO paciente (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, tipo_sanguineo, tipo_atendimento, medico_preferencial, observacoes, data_nascimento) VALUES ('Maria tere motogrande', '003.170.320   ', 'RG', '5206955623', 'Feminino', 'Solteiro', 'Erechim', 'RS', '99.700-00 ', 'Davi Gilmor floyd', '658', 'três toques forte na garganta', 'agua dura tando bate', 'A+', 'Normal', 'Eduardo Servero', 'mina malandra, gravida gemeos, 3 meses marido não sabe, ta trabalhando de caminhoneiro no ceará', NULL);


--
-- TOC entry 2113 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-11-01 19:13:11

--
-- PostgreSQL database dump complete
--

