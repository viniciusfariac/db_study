CREATE TABLE tbl_tcg_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,

    collection_id INT NOT NULL,
    cardNumberInCollection INT NOT NULL,

    name VARCHAR(100) NOT NULL,
    hp INT NOT NULL,

    type_id INT NOT NULL,
    stage_id INT NOT NULL,

    info TEXT,

    attack VARCHAR(100),
    damage INT,

    weakness_type_id INT,
    resistance_type_id INT,

    retreat INT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_cards_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_tcg_save_collection(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_cards_type
        FOREIGN KEY (type_id)
        REFERENCES tbl_tcg_types(id),

    CONSTRAINT fk_cards_stage
        FOREIGN KEY (stage_id)
        REFERENCES tbl_tcg_stages(id),

    CONSTRAINT fk_cards_weakness
        FOREIGN KEY (weakness_type_id)
        REFERENCES tbl_tcg_types(id),

    CONSTRAINT fk_cards_resistance
        FOREIGN KEY (resistance_type_id)
        REFERENCES tbl_tcg_types(id),

    UNIQUE (collection_id, cardNumberInCollection)
) ENGINE=InnoDB;
