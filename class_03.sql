CREATE DATABASE viagens
    DEFAULT CHARACTER SET = 'utf8mb4';
USE viagens;

CREATE TABLE viagens.usuarios (
    id INT AUTO_INCREMENT UNIQUE,
    name VARCHAR(255) NOT NULL COMMENT 'User name',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'User email',
    address VARCHAR(50) NOT NULL COMMENT 'User address',
    birth DATE NOT NULL COMMENT 'User birth'
);

CREATE TABLE viagens.destinos (
    id INT AUTO_INCREMENT UNIQUE,
    name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Destination'
);

CREATE TABLE viagens.reservas(
    id INT AUTO_INCREMENT UNIQUE,
    id_user INT,
    id_destination INT,
    data DATE NOT NULL COMMENT 'Reserve date',
    status ENUM('Pendente', 'Realizada', 'Em processo', 'Cancelada')
)