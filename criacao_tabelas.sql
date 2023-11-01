DROP TABLE IF EXISTS formulario CASCADE;
DROP TABLE IF EXISTS paciente CASCADE;
DROP TABLE IF EXISTS parasito CASCADE;

CREATE TABLE formulario (
    ID serial PRIMARY KEY,
    UF varchar(2) NOT NULL,
    CIDADE varchar(255) NOT NULL,
    REGIAO varchar(255) NOT NULL

);

CREATE TABLE paciente(
    ID serial PRIMARY KEY,
    NOME_PACIENTE varchar(255) NOT NULL,
    GENERO_PACIENTE varchar(1) NOT NULL

);

CREATE TABLE parasito (

    ID serial PRIMARY KEY,
    LOCAL_COLETADO varchar(255) NOT NULL,
    UF_PACIENTE varchar(2),
    ID_PACIENTE int

);

ALTER TABLE parasito
ADD FOREIGN KEY(UF_PACIENTE) REFERENCE formulario(UF) ON DELETE SET NULL;
ADD FOREIGN KEY(ID_PACIENTE) REFERENCE 

