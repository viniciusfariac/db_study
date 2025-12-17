ALTER TABLE viagens.users ADD PRIMARY KEY (id)

ALTER TABLE viagens.destinos ADD PRIMARY KEY (id)

ALTER TABLE viagens.reservas ADD PRIMARY KEY (id)

ALTER TABLE viagens.reservas 
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY (id_user) REFERENCES viagens.users (id)
ON DELETE CASCADE;

ALTER TABLE viagens.reservas 
ADD CONSTRAINT fk_reservas_destinos
FOREIGN KEY (id_destination) REFERENCES viagens.destinos (id)


INSERT INTO viagens.reservas(id_user, id_destination, data)
VALUES (1,1, '2023-11-11')

DELETE FROM viagens.users WHERE id = 3