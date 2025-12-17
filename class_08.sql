ALTER TABLE viagens.users
ADD rua VARCHAR(100),
ADD numero VARCHAR(10),
ADD cidade VARCHAR(50),
ADD estado VARCHAR(20);


ALTER TABLE viagens.users
DROP COLUMN address

INSERT INTO viagens.users (name, email, birth, rua, numero, cidade, estado)
VALUES ("pedro", "pedro@gmail.com", "2005-10-11", "Rua D", "124", "Cidade X", "Estado Y")