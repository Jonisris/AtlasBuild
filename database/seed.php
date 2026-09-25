<?php

declare(strict_types=1);

// ==========================================
// ATLASBUILD - Database Seeder Runner
// ==========================================

// Load database configuration
$config = require __DIR__ . '/../config/database.php';

$host = $config['host'];
$port = $config['port'];
$username = $config['username'];
$password = $config['password'];
$database = $config['database'];

try {
    // ==========================================
    // 1. Connect to ATLASBUILD database
    // ==========================================
    $pdo = new PDO(
        "mysql:host=$host;port=$port;dbname=$database;charset=utf8mb4",
        $username,
        $password,
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]
    );

    echo "Connected to database '$database'.\n";

    // ==========================================
    // 2. Find seeder files
    // ==========================================
    $seederPath = __DIR__ . '/seeders';

    if (!is_dir($seederPath)) {
        throw new RuntimeException(
            "Seeder directory not found: $seederPath"
        );
    }

    $files = glob($seederPath . '/*.sql');

    sort($files, SORT_STRING);

    // ==========================================
    // 3. Execute seeders
    // ==========================================
    foreach ($files as $file) {
        $seederName = basename($file);

        echo "RUNNING: $seederName\n";

        $sql = file_get_contents($file);

        if ($sql === false) {
            throw new RuntimeException(
                "Could not read seeder: $seederName"
            );
        }

        $pdo->exec($sql);

        echo "SUCCESS: $seederName\n";
    }

    echo "\nAll seeders completed successfully.\n";

} catch (PDOException $e) {

    echo "Database error: " . $e->getMessage() . "\n";
    exit(1);

} catch (Throwable $e) {

    echo "Error: " . $e->getMessage() . "\n";
    exit(1);
}