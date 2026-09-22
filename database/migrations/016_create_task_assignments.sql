CREATE TABLE task_assignments (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    task_id BIGINT UNSIGNED NOT NULL,
    worker_id BIGINT UNSIGNED NOT NULL,
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_task_assignments_task
        FOREIGN KEY (task_id)
        REFERENCES tasks(id),

    CONSTRAINT fk_task_assignments_worker
        FOREIGN KEY (worker_id)
        REFERENCES workers(id),

    CONSTRAINT uq_task_assignments
        UNIQUE (task_id, worker_id)
);