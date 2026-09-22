CREATE TABLE projects (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    client_id BIGINT UNSIGNED NOT NULL,
    name VARCHAR(150) NOT NULL,
    description TEXT NULL,
    location VARCHAR(255) NULL,
    start_date DATE NOT NULL,
    end_date DATE NULL,
    status ENUM(
        'planning',
        'in_progress',
        'completed',
        'on_hold'
    ) NOT NULL DEFAULT 'planning',
    budget DECIMAL(14,2) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL,

    CONSTRAINT fk_projects_client
        FOREIGN KEY (client_id)
        REFERENCES clients(id)
);