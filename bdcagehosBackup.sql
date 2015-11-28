--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5beta1
-- Dumped by pg_dump version 9.5beta1

-- Started on 2015-11-26 13:26:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE bdcagehos;
--
-- TOC entry 2117 (class 1262 OID 16429)
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
-- TOC entry 2118 (class 0 OID 0)
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
-- TOC entry 2120 (class 0 OID 0)
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
    nome character varying(85) NOT NULL,
    cpf character(14) NOT NULL,
    tipo_id character varying(3) NOT NULL,
    numero_id character varying(12) NOT NULL,
    sexo character varying(12) NOT NULL,
    estado_civil character varying(18) NOT NULL,
    cidade character varying(46),
    estado character(2),
    cep character(10),
    logradouro character varying(80),
    numero character varying(6),
    bairro character varying(40),
    complemento character varying(50),
    setor character varying(20) NOT NULL,
    cargo character varying(20) NOT NULL,
    area_especialidades character varying(500),
    data_nascimento character(11) NOT NULL
);


ALTER TABLE empregado OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16430)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE medico (
    nome character varying(85) NOT NULL,
    cpf character(14) NOT NULL,
    tipo_id character varying(3) NOT NULL,
    numero_id character varying(12) NOT NULL,
    sexo character varying(12) NOT NULL,
    estado_civil character varying(18) NOT NULL,
    cidade character varying(46),
    estado character(2),
    cep character(10),
    logradouro character varying(80),
    numero character varying(6),
    bairro character varying(40),
    complemento character varying(50),
    crm character varying(12) NOT NULL,
    pron_tratamento character varying(4) NOT NULL,
    area_especialidades character varying(500),
    data_nascimento character(11) NOT NULL
);


ALTER TABLE medico OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16433)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE paciente (
    nome character varying(85) NOT NULL,
    cpf character(14) NOT NULL,
    tipo_id character varying(3) NOT NULL,
    numero_id character varying(12) NOT NULL,
    sexo character varying(12) NOT NULL,
    estado_civil character varying(18) NOT NULL,
    cidade character varying(46),
    estado character(2),
    cep character(10),
    logradouro character varying(80),
    numero character varying(6),
    bairro character varying(40),
    complemento character varying(50),
    tipo_sanguineo character varying(3) NOT NULL,
    medico_preferencial character varying(85),
    observacoes character varying(500) NOT NULL,
    data_nascimento character(11) NOT NULL
);


ALTER TABLE paciente OWNER TO postgres;

--
-- TOC entry 2112 (class 0 OID 16436)
-- Dependencies: 182
-- Data for Name: empregado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO empregado (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades, data_nascimento) VALUES ('José Silveira', '810.000.444-75', 'RG', '418757896', 'Masculino', 'Solteiro(a)', 'Getúlio Vargas', 'RS', '99.900-000', 'Rua das Margaridas Amarelas', '254', 'Jão Segundo', 'Casa azul', 'Recepção', 'Recepcionista', 'Atender as demais pessoas que possam aparecer no horário de trabalho, prestar informações
fazer acomapanhamento dos mesmos ah suas determinadas solicitações desde que aja expressa autorização para a mesma.', '21/05/1980 ');
INSERT INTO empregado (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades, data_nascimento) VALUES ('kkkkkk kkkk kkk', '385.316.278-93', 'RG', '403289440', 'Masculino', 'Solteiro(a)', 'kkkkkk', 'RS', '99.700-000', 'kkkkjlkkkjkk', '2154', 'kokkkooo', 'koskoso', 'kkkkkk', 'kkkkkkk', '', '05/08/0081 ');
INSERT INTO empregado (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, setor, cargo, area_especialidades, data_nascimento) VALUES ('hhhhhhhhhhhhhhhhh', '616.784.510-70', 'RG', '403289440', 'Masculino', 'Solteiro(a)', 'hhhhhhhhhhh', 'RS', '99.700-000', 'kkkkkkkkjjjjjj', '5867', 'hhhhhhhhhh', 'hhhhhhhhhh', 'hhhhhhh', 'hhhhhhh', 'ASDFOAHSDOFHAOSDHFOASHDFOHASODHFOASHDOFAHSODFHAHSDOFHASDFKKKKKKKKKKKK', '01/08/0071 ');


--
-- TOC entry 2110 (class 0 OID 16430)
-- Dependencies: 180
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO medico (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, crm, pron_tratamento, area_especialidades, data_nascimento) VALUES ('Julio Cesar Ceron', '023.770.820-50', 'RG', '4105026415', 'Masculino', 'Solteiro(a)', 'Erechim', 'RS', '99.700-000', 'Giacomo Luiz Berticelli', '307', 'Atlântico', 'Casa verde', '23452345', 'Méd.', 'dfasdfasdfasdf', '26/07/1990 ');
INSERT INTO medico (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, crm, pron_tratamento, area_especialidades, data_nascimento) VALUES ('Leonardo Falk ', '023.770.820-50', 'RG', '1450204651', 'Masculino', 'Solteiro(a)', 'Getúlio Vargas', 'RS', '99.700-000', 'Jorge Amado batista Raul Seixas da Silva Souza', '6545', 'Floresta Negra Afro', 'Vem que tem', '123423243', 'Méd.', 'tirei as chaves primarias e secundárias por que tava dando bosta em tudo, então não tem ligação ainda entre as tabelas, deixamos isso para o final,
se caso ainda quisermos colocar.', '24/05/1994 ');
INSERT INTO medico (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, crm, pron_tratamento, area_especialidades, data_nascimento) VALUES ('Jose Batista da Silva', '023.770.820-50', 'RG', '2543654625', 'Masculino', 'Solteiro(a)', 'Erechim', 'RS', '99.700-000', 'Germano Hoffman', '520', 'Centro', '', '2512', 'Méd.', 'dkajç asdlkfj alskçdfj laçksdj flkasjdlfkjas dfkçlajsdf lçajsdlkf jalçskdjflkaçs djflkja sdlkfja lskçdfjlaskd fjlkçasdj fklajsdl kfjaklsçdj fçlkasjdlfk ajsdklf ja', '20/11/1935 ');
INSERT INTO medico (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, crm, pron_tratamento, area_especialidades, data_nascimento) VALUES ('Alberto Nogueira', '351.661.544-36', 'RG', '403289440', 'Masculino', 'Solteiro(a)', 'Erechim', 'RS', '99.700-000', 'Rua Alemanha', '1520', 'Centro', 'Condominio Portela', '21545', 'Méd.', 'SHDFHASDUFHASUDHFUASHDFHAUSDHFAUSDFHUH	UHUHSAUDHFUASHDUFHASUDFHUASHDFUH	UHAUHSDUFHAUSDHFUASHDFUAHSDFUHASUD', '23/02/1960 ');
INSERT INTO medico (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, crm, pron_tratamento, area_especialidades, data_nascimento) VALUES ('adfasdfasdfa asdfasdf', '269.933.488-02', 'RG', '403289440', 'Masculino', 'Solteiro(a)', 'adfasdf asdfasdf a', 'RS', '99.700-000', 'adfadf asdfasdf asdf', '1242', 'asdfasdf asdf', 'asdfasdf', '2145', 'Dr.', 'adsfasdfasd asdfasdf asd asdf', '06/08/0081 ');


--
-- TOC entry 2111 (class 0 OID 16433)
-- Dependencies: 181
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO paciente (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, tipo_sanguineo, medico_preferencial, observacoes, data_nascimento) VALUES ('Roberto Costa', '128.443.668-30', 'RG', '403289440', 'Masculino', 'Solteiro(a)', 'Erechim', 'RS', '99.700-000', 'Henrique Segundo', '2455', 'Bela Vista', 'Casa amarela', 'O-', ' ', 'teste cadastro paciente, 2', '21/06/1980 ');
INSERT INTO paciente (nome, cpf, tipo_id, numero_id, sexo, estado_civil, cidade, estado, cep, logradouro, numero, bairro, complemento, tipo_sanguineo, medico_preferencial, observacoes, data_nascimento) VALUES ('WWWWWWWWWWWW', '433.905.507-71', 'RG', '418757896', 'Masculino', 'Solteiro(a)', 'WWWWWWWWWWW', 'RS', '99.700-000', 'WWWWWW', '5474', 'wwwww', 'wwwwww', 'A+', ' ', '', '06/10/0083 ');


--
-- TOC entry 1995 (class 2606 OID 32775)
-- Name: pk_nome_empregado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empregado
    ADD CONSTRAINT pk_nome_empregado PRIMARY KEY (nome);


--
-- TOC entry 1991 (class 2606 OID 32773)
-- Name: pk_nome_medico; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medico
    ADD CONSTRAINT pk_nome_medico PRIMARY KEY (nome);


--
-- TOC entry 1993 (class 2606 OID 32777)
-- Name: pk_nome_paciente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paciente
    ADD CONSTRAINT pk_nome_paciente PRIMARY KEY (nome);


--
-- TOC entry 2119 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-11-26 13:26:03

--
-- PostgreSQL database dump complete
--

