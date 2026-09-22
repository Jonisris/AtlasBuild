CREATE TABLE documents (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    project_id BIGINT UNSIGNED NULL,
    uploaded_by BIGINT UNSIGNED NOT NULL,
    name VARCHAR(150) NOT NULL,
    file_path VARCHAR(500) NOT NULL,
    file_type VARCHAR(100) NOT NULL,
    file_size BIGINT UNSIGNED NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL,

    CONSTRAINT fk_documents_project
        FOREIGN KEY (project_id)
        REFERENCES projects(id),

    CONSTRAINT fk_documents_uploader
        FOREIGN KEY (uploaded_by)
        REFERENCES users(id)
);