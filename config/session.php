<?php

declare(strict_types=1);

return [
    'session' => [
        'name' => 'atlasbuild_session',
        'lifetime' => 7200,
        // HTTPS only in production
        'secure' => ($_ENV['APP_ENV'] ?? 'local') === 'production',

        // JavaScript cannot access the session cookie
        'httponly' => true,

        // Helps protect against CSRF
        'samesite' => 'Lax',
    ],
];