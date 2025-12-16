UPDATE viagens.usuarios
SET email = "teste@update"
WHERE id = 1

INSERT INTO viagens.usuarios (nome, email, endereco, data_nascimento)  VALUES ("Alicia", "alicia@gmail.com","FLores" ,"2005-11-11")

DELETE FROM viagens.usuarios
WHERE id = 2;