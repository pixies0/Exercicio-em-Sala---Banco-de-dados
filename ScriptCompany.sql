CREATE TABLE LOCALIZACAO_DEP (
  Dnumero_FK INTEGER NOT NULL,
  Dlocal VARCHAR(30) NOT NULL,
  PRIMARY KEY(Dnumero_FK, Dlocal)
);

CREATE TABLE PROJETO (
  Projnumero INTEGER NOT NULL,
  Projnome VARCHAR(30) NOT NULL,
  Projlocal VARCHAR(30) NOT NULL,
  Dnum_FK INTEGER NOT NULL,
  PRIMARY KEY(Projnumero)
);

CREATE TABLE TRABALHA_EM (
  Fcpf_FK VARCHAR(20) NOT NULL,
  Pnr_FK INTEGER NOT NULL,
  Horas NUMERIC NULL,
  PRIMARY KEY(Fcpf_FK, Pnr_FK)
);

CREATE TABLE DEPARTAMENTO (
  Dnumero INTEGER NOT NULL,
  Dnome VARCHAR(40) NOT NULL,
  CPF_Gerente VARCHAR(20) NOT NULL,
  Data_inicio_gerente VARCHAR(20) NOT NULL,
  PRIMARY KEY(Dnumero)
);

CREATE TABLE DEPENDENTE (
  Fcpf_FK VARCHAR(20) NOT NULL,
  Nome_dependente VARCHAR(30) NOT NULL,
  Sexo VARCHAR(1) NOT NULL,
  Datanasc VARCHAR(20) NOT NULL,
  Parentesco VARCHAR(20) NOT NULL,
  PRIMARY KEY(Fcpf_FK, Nome_dependente)
);

CREATE TABLE FUNCIONARIO (
  CPF VARCHAR(20) NOT NULL,
  Pnome VARCHAR(20) NOT NULL,
  Minicial VARCHAR(1) NOT NULL,
  Unome VARCHAR(20) NOT NULL,
  Datanasc VARCHAR(20) NOT NULL,
  Endereco VARCHAR(100) NOT NULL,
  Sexo VARCHAR(1) NOT NULL,
  Salario INTEGER NOT NULL,
  CPF_Supervisor_FK VARCHAR(20) NULL,
  Dnr_Fk INTEGER NOT NULL,
  PRIMARY KEY(CPF)
);


