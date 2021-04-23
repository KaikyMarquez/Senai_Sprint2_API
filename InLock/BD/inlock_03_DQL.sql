USE inlock_games_tarde

--Listar todos os usuários
SELECT * FROM Usuario

-- Listar todos os estúdios
SELECT * FROM Estudios

-- Listar todos os jogos
SELECT * FROM Jogos

-- Listar todos os jogos e seus respectivos estúdios
SELECT NomeJogo, NomeEstudio FROM Jogos
INNER JOIN Estudios
ON Jogos.idestudio = Estudios.idestudio


-- Buscar e trazer na lista todos os estúdios com os respectivos jogos. Obs.: Listartodos os estúdios mesmo que eles não contenham nenhum jogo de referência
SELECT NomeJogo, NomeEstudio FROM Estudios
LEFT JOIN Jogos
ON  Estudios.idestudio = Jogos.idestudio

-- Buscar um usuário por e-mail e senha (login)
SELECT Email, Senha FROM Usuario where email = 'admin@admin.com' and Senha = 'admin'

-- Buscar um jogo por idJogo
SELECT NomeJogo, DescricaoJogo, Datadelancamento, Valor, NomeEstudio FROM Jogos
INNER JOIN Estudios
ON Jogos.idestudio = Estudios.idestudio
WHERE idJogo = 1

-- Buscar um estúdio por idEstudio
SELECT NomeEstudio FROM Estudios WHERE idestudio = 2



