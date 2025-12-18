INSERT INTO viagens.usuarios (nome, email, endereco, data_nascimento)  VALUES ("Vinicius Faria", "vfariacerqueira@gmail.com","FLores" ,"2005-10-11")

INSERT INTO viagens.destinos (name) 
VALUES ("Maldivas")

INSERT INTO viagens.reservas (id_user, id_destination, data, status) VALUES (1, 1, "2026-10-11", "Pendente");

SELECT * FROM usuarios;

SELECT * FROM usuarios WHERE id = 1 and nome LIKE "%n%";