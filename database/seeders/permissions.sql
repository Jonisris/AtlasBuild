INSERT INTO permissions (name, description)
VALUES
    ('dashboard.view', 'View the application dashboard'),

    ('users.view', 'View users'),
    ('users.create', 'Create users'),
    ('users.update', 'Update users'),
    ('users.delete', 'Delete users'),

    ('roles.view', 'View roles'),
    ('roles.create', 'Create roles'),
    ('roles.update', 'Update roles'),
    ('roles.delete', 'Delete roles'),

    ('clients.view', 'View clients'),
    ('clients.create', 'Create clients'),
    ('clients.update', 'Update clients'),
    ('clients.delete', 'Delete clients'),

    ('workers.view', 'View workers'),
    ('workers.create', 'Create workers'),
    ('workers.update', 'Update workers'),
    ('workers.delete', 'Delete workers'),

    ('projects.view', 'View projects'),
    ('projects.create', 'Create projects'),
    ('projects.update', 'Update projects'),
    ('projects.delete', 'Delete projects'),

    ('tasks.view', 'View tasks'),
    ('tasks.create', 'Create tasks'),
    ('tasks.update', 'Update tasks'),
    ('tasks.delete', 'Delete tasks'),

    ('task_assignments.view', 'View task assignments'),
    ('task_assignments.create', 'Assign workers to tasks'),
    ('task_assignments.delete', 'Remove workers from tasks'),

    ('progress_updates.view', 'View task progress updates'),
    ('progress_updates.create', 'Create task progress updates'),

    ('suppliers.view', 'View suppliers'),
    ('suppliers.create', 'Create suppliers'),
    ('suppliers.update', 'Update suppliers'),
    ('suppliers.delete', 'Delete suppliers'),

    ('materials.view', 'View materials'),
    ('materials.create', 'Create materials'),
    ('materials.update', 'Update materials'),
    ('materials.delete', 'Delete materials'),

    ('project_materials.view', 'View project materials'),
    ('project_materials.create', 'Add materials to projects'),
    ('project_materials.update', 'Update project materials'),
    ('project_materials.delete', 'Remove materials from projects'),

    ('payments.view', 'View project payments'),
    ('payments.create', 'Record project payments'),
    ('payments.update', 'Update project payments'),

    ('expense_categories.view', 'View expense categories'),
    ('expense_categories.create', 'Create expense categories'),
    ('expense_categories.update', 'Update expense categories'),
    ('expense_categories.delete', 'Delete expense categories'),

    ('expenses.view', 'View expenses'),
    ('expenses.create', 'Create expenses'),
    ('expenses.update', 'Update expenses'),

    ('documents.view', 'View documents'),
    ('documents.create', 'Upload documents'),
    ('documents.delete', 'Delete documents');