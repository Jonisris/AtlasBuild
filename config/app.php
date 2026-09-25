<?php

declare(strict_types=1);

return [
    'name' => $_ENV['APP_NAME'] ?? 'ATLASBUILD',
    'environment' => $_ENV['APP_ENV'] ?? 'local',
    'debug' => filter_var(
        $_ENV['APP_DEBUG'] ?? false,
        FILTER_VALIDATE_BOOLEAN
    ),
    'url' => $_ENV['APP_URL'] ?? 'http://localhost/atlasbuild',
    'timezone' => 'Africa/Casablanca',
];