CREATE TABLE viagens.users (
    id INT AUTO_INCREMENT UNIQUE,
    name VARCHAR(255) NOT NULL COMMENT 'User name',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'User email',
    address VARCHAR(50) NOT NULL COMMENT 'User address',
    birth DATE NOT NULL COMMENT 'User birth'
);

INSERT INTO users (id, name, email, address, birth)
SELECT id, nome, email, endereco, data_nascimento FROM users

DROP TABLE usuarios

ALTER TABLE viagens.users_new RENAME viagens.users

ALTER TABLE viagens.users MODIFY COLUMN address VARCHAR(250)