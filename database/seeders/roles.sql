INSERT IGNORE INTO roles (name, description)
VALUES
    ('admin', 'Full system access and platform administration'),
    ('project_manager', 'Manages project budgets, scheduling, procurement, and financials'),
    ('site_supervisor', 'Oversees daily field operations, logs progress, and manages site workers'),
    ('worker', 'Field tradesperson or subcontractor with access to assigned tasks'),
    ('client', 'External project stakeholder with access to their project information');