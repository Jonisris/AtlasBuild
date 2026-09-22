CREATE TABLE project_materials (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    project_id BIGINT UNSIGNED NOT NULL,
    material_id BIGINT UNSIGNED NOT NULL,
    quantity DECIMAL(12,3) NOT NULL,
    unit_price DECIMAL(12,2) NOT NULL,
    total_price DECIMAL(14,2)
        GENERATED ALWAYS AS (quantity * unit_price) STORED,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_project_materials_project
        FOREIGN KEY (project_id)
        REFERENCES projects(id),

    CONSTRAINT fk_project_materials_material
        FOREIGN KEY (material_id)
        REFERENCES materials(id),

    CONSTRAINT chk_project_materials_quantity
        CHECK (quantity > 0),

    CONSTRAINT chk_project_materials_unit_price
        CHECK (unit_price >= 0)
);