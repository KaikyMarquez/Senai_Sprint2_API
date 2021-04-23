USE inlock_games_tarde

INSERT INTO Estudios (NomeEstudio)
VALUES				('Blizzard'),
					('Rockstar Studios'),
					('Square Enix');

INSERT INTO Jogos (NomeJogo,DescricaoJogo,Datadelancamento,Valor,idestudio)
VALUES		      ('Diablo 3', 'é um jogo que contém bastante ação e é viciante, seja você um novato ou um fã', '15 de maio de 2012', '99.00', 1),
				  ('Red Dead Redemption II','jogo eletrônico de ação-aventura western.','26 de outubro de 2018', '120.00', 2);

INSERT INTO TipoUsuario (Titulo)
VALUES				    ('Administrador'),
						('Cliente');

INSERT INTO Usuario		(idTipoUsusario,Email,Senha)
VALUES					(1,'admin@admin.com','admin'),
						(2,'cliente@cliente.com','cliente');
