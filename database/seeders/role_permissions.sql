
-- ADMIN
-- Full access to every permission
INSERT IGNORE INTO role_permissions (role_id, permission_id)
SELECT r.id, p.id
FROM roles r
CROSS JOIN permissions p
WHERE r.name = 'admin';


-- PROJECT MANAGER
INSERT INTO role_permissions (role_id, permission_id)
SELECT r.id, p.id
FROM roles r
JOIN permissions p
    ON p.name IN (
        'dashboard.view',

        'clients.view',
        'clients.create',
        'clients.update',
        'clients.delete',

        'workers.view',
        'workers.create',
        'workers.update',
        'workers.delete',

        'projects.view',
        'projects.create',
        'projects.update',
        'projects.delete',

        'tasks.view',
        'tasks.create',
        'tasks.update',
        'tasks.delete',

        'task_assignments.view',
        'task_assignments.create',
        'task_assignments.delete',

        'progress_updates.view',
        'progress_updates.create',

        'suppliers.view',
        'suppliers.create',
        'suppliers.update',
        'suppliers.delete',

        'materials.view',
        'materials.create',
        'materials.update',
        'materials.delete',

        'project_materials.view',
        'project_materials.create',
        'project_materials.update',
        'project_materials.delete',

        'payments.view',
        'payments.create',
        'payments.update',

        'expense_categories.view',
        'expense_categories.create',
        'expense_categories.update',
        'expense_categories.delete',

        'expenses.view',
        'expenses.create',
        'expenses.update',

        'documents.view',
        'documents.create',
        'documents.delete'
    )
WHERE r.name = 'project_manager';


-- SITE SUPERVISOR
INSERT INTO role_permissions (role_id, permission_id)
SELECT r.id, p.id
FROM roles r
JOIN permissions p
    ON p.name IN (
        'dashboard.view',

        'projects.view',

        'tasks.view',
        'tasks.create',
        'tasks.update',

        'task_assignments.view',
        'task_assignments.create',
        'task_assignments.delete',

        'progress_updates.view',
        'progress_updates.create',

        'workers.view',

        'materials.view',

        'project_materials.view',
        'project_materials.create',
        'project_materials.update',

        'documents.view',
        'documents.create'
    )
WHERE r.name = 'site_supervisor';


-- WORKER
INSERT INTO role_permissions (role_id, permission_id)
SELECT r.id, p.id
FROM roles r
JOIN permissions p
    ON p.name IN (
        'dashboard.view',

        'projects.view',

        'tasks.view',
        'tasks.update',

        'task_assignments.view',

        'progress_updates.view',
        'progress_updates.create',

        'documents.view'
    )
WHERE r.name = 'worker';


-- CLIENT
INSERT INTO role_permissions (role_id, permission_id)
SELECT r.id, p.id
FROM roles r
JOIN permissions p
    ON p.name IN (
        'dashboard.view',

        'projects.view',

        'progress_updates.view',

        'payments.view',

        'documents.view'
    )
WHERE r.name = 'client';