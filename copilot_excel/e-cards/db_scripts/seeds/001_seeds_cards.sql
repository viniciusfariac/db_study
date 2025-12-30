INSERT INTO tbl_tcg_types (name) VALUES
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic'),
('Fighting'),
('Darkness'),
('Metal'),
('Fairy'),
('Dragon'),
('Normal'),
('Ice'),
('Poison'),
('Ground'),
('Flying'),
('Bug'),
('Rock'),
('Ghost'),
('Steel');

INSERT INTO tbl_tcg_stages (name) VALUES
('Basic'),
('Stage 1'),
('Stage 2');

INSERT INTO tbl_tcg_save_collection
(collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62),
('Promo', '1999-01-01', 53);

INSERT INTO tbl_tcg_cards
(collection_id, cardNumberInCollection, name, hp, type_id, stage_id, attack, damage, weakness_type_id, resistance_type_id, retreat)
VALUES
-- Base Set
(1, 4, 'Charmander', 50, 1, 1, 'Ember', 30, 2, NULL, 1),
(1, 5, 'Charmeleon', 80, 1, 2, 'Flamethrower', 50, 2, NULL, 2),
(1, 6, 'Charizard', 120, 1, 3, 'Fire Spin', 100, 2, 3, 3),

(1, 7, 'Squirtle', 50, 2, 1, 'Bubble', 10, 4, NULL, 1),
(1, 8, 'Wartortle', 80, 2, 2, 'Water Gun', 40, 4, NULL, 2),
(1, 9, 'Blastoise', 120, 2, 3, 'Hydro Pump', 60, 4, NULL, 3),

(1, 1, 'Bulbasaur', 40, 3, 1, 'Vine Whip', 20, 1, 2, 1),
(1, 2, 'Ivysaur', 60, 3, 2, 'Razor Leaf', 30, 1, 2, 2),
(1, 3, 'Venusaur', 100, 3, 3, 'Solar Beam', 60, 1, 2, 3);

SELECT c.name, t.name AS type, s.name AS stage
FROM tbl_tcg_cards c
JOIN tbl_tcg_types t ON c.type_id = t.id
JOIN tbl_tcg_stages s ON c.stage_id = s.id;
