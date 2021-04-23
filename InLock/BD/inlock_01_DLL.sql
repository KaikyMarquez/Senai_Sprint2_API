CREATE DATABASE inlock_games_tarde

USE inlock_games_tarde

-- Criar tabela Estudio
CREATE TABLE Estudios
(
	idestudio INT IDENTITY PRIMARY KEY
	,NomeEstudio VARCHAR(200) NOT NULL
);
GO

-- Criar tabela Jogos
CREATE TABLE Jogos
(
	idJogo INT IDENTITY PRIMARY KEY
	,NomeJogo VARCHAR(200) NOT NULL
	,DescricaoJogo VARCHAR(200) NOT NULL
	,Datadelancamento VARCHAR (200) NOT NULL 
	,Valor MONEY NOT NULL
	,idestudio INT FOREIGN KEY REFERENCES Estudios (idestudio)
);
GO

-- Criar tabela Tipo Usuario
CREATE TABLE TipoUsuario
(
    idTipoUsuario    INT PRIMARY KEY IDENTITY
    ,Titulo            VARCHAR(200)
);
GO

-- Criar tabela Usuario
CREATE TABLE Usuario
(
    idUsuario			INT PRIMARY KEY IDENTITY
    ,idTipoUsusario		INT FOREIGN KEY REFERENCES TipoUsuario(idTipoUsuario)
    ,Email				VARCHAR(200) UNIQUE NOT NULL
    ,Senha				VARCHAR(200) 
);
GO
