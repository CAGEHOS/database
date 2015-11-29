--
-- PostgreSQL database dump
--

<<<<<<< HEAD:cagehos.sql
-- Dumped from database version 9.4.5
-- Dumped by pg_dump version 9.4.0
-- Started on 2015-11-29 20:24:52
=======
-- Dumped from database version 9.5beta1
-- Dumped by pg_dump version 9.5beta1

-- Started on 2015-11-26 13:26:02
>>>>>>> origin/master:bdcagehosBackup.sql

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP DATABASE bdcagehos;
--
<<<<<<< HEAD:cagehos.sql
-- TOC entry 2006 (class 1262 OID 16412)
=======
-- TOC entry 2117 (class 1262 OID 16429)
>>>>>>> origin/master:bdcagehosBackup.sql
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
<<<<<<< HEAD:cagehos.sql
-- TOC entry 2007 (class 0 OID 0)
-- Dependencies: 6
=======
-- TOC entry 2118 (class 0 OID 0)
-- Dependencies: 5
>>>>>>> origin/master:bdcagehosBackup.sql
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 175 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
<<<<<<< HEAD:cagehos.sql
-- TOC entry 2009 (class 0 OID 0)
-- Dependencies: 175
=======
-- TOC entry 2120 (class 0 OID 0)
-- Dependencies: 183
>>>>>>> origin/master:bdcagehosBackup.sql
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
-- TOC entry 173 (class 1259 OID 16419)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
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
-- TOC entry 174 (class 1259 OID 16425)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
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
<<<<<<< HEAD:cagehos.sql
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
=======
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
>>>>>>> origin/master:bdcagehosBackup.sql
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


<<<<<<< HEAD:cagehos.sql
-- Completed on 2015-11-29 20:24:53
=======
-- Completed on 2015-11-26 13:26:03
>>>>>>> origin/master:bdcagehosBackup.sql

--
-- PostgreSQL database dump complete
--

