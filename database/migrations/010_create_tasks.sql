CREATE TABLE tasks (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    project_id BIGINT UNSIGNED NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT NULL,
    status ENUM(
        'pending',
        'in_progress',
        'completed',
        'blocked'
    ) NOT NULL DEFAULT 'pending',
    priority ENUM(
        'low',
        'medium',
        'high'
    ) NOT NULL DEFAULT 'medium',
    progress_percentage DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    weight DECIMAL(5,2) NOT NULL DEFAULT 1.00,
    due_date DATE NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_tasks_project
        FOREIGN KEY (project_id)
        REFERENCES projects(id),

    CONSTRAINT chk_tasks_progress
        CHECK (progress_percentage BETWEEN 0.00 AND 100.00),

    CONSTRAINT chk_tasks_weight
        CHECK (weight > 0)
);