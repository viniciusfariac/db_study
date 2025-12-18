INSERT INTO viagens.destinos (name)
VALUES("MAck")

INSERT INTO viagens.reservas (id_user, id_destination, data, status)
VALUES (5, 3, "2025-12-18", "Pendente")


SELECT * FROM viagens.reservas rs
INNER JOIN viagens.users us ON us.id = rs.id_user
INNER JOIN viagens.destinos ds ON rs.id_destination = ds.id


SELECT * FROM viagens.reservas rs 
RIGHT JOIN viagens.users us ON us.id = rs.id_user

SELECT * FROM viagens.reservas rs 
LEFT JOIN viagens.users us ON us.id = rs.id_user

SELECT * FROM viagens.destinos
WHERE id NOT IN (SELECT id_destination FROM viagens.reservas)

SELECT COUNT(*) as total_usuarios FROM viagens.users

SELECT MAX(TIMESTAMPDIFF(YEAR, birth, CURRENT_DATE())) AS maior_idade
FROM viagens.users

SELECT COUNT(*) AS quantidade_reservas, id_destination
FROM viagens.reservas
GROUP BY id_destination