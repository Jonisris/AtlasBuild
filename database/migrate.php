<?php

declare(strict_types=1);

// ==========================================
// ATLASBUILD - Database Migration Runner
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
    // 1. Connect to MySQL server
    //    No database selected yet
    // ==========================================
    $pdo = new PDO(
        "mysql:host=$host;port=$port",
        $username,
        $password,
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]
    );

    echo "Connected to MySQL server.\n";

    // ==========================================
    // 2. Create database if it does not exist
    // ==========================================
    $pdo->exec("
        CREATE DATABASE IF NOT EXISTS `$database`
        CHARACTER SET utf8mb4
        COLLATE utf8mb4_unicode_ci
    ");

    echo "Database '$database' is ready.\n";

    // ==========================================
    // 3. Select ATLASBUILD database
    // ==========================================
    $pdo->exec("USE `$database`");

    // ==========================================
    // 4. Create migration tracking table
    // ==========================================
    $pdo->exec("
        CREATE TABLE IF NOT EXISTS migrations (
            id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
            migration VARCHAR(255) NOT NULL UNIQUE,
            executed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        )
    ");

    echo "Migration table is ready.\n";

    // ==========================================
    // 5. Find migration files
    // ==========================================
    $migrationPath = __DIR__ . '/migrations';

    if (!is_dir($migrationPath)) {
        throw new RuntimeException(
            "Migration directory not found: $migrationPath"
        );
    }

    $files = glob($migrationPath . '/*.sql');

    sort($files, SORT_STRING);

    // ==========================================
    // 6. Execute pending migrations
    // ==========================================
    foreach ($files as $file) {
        $migrationName = basename($file);

        $statement = $pdo->prepare("
            SELECT id
            FROM migrations
            WHERE migration = :migration
        ");

        $statement->execute([
            'migration' => $migrationName
        ]);

        if ($statement->fetch()) {
            echo "SKIPPED: $migrationName\n";
            continue;
        }

        echo "RUNNING: $migrationName\n";

        $sql = file_get_contents($file);

        if ($sql === false) {
            throw new RuntimeException(
                "Could not read migration: $migrationName"
            );
        }

        $pdo->exec($sql);

        $statement = $pdo->prepare("
            INSERT INTO migrations (migration)
            VALUES (:migration)
        ");

        $statement->execute([
            'migration' => $migrationName
        ]);

        echo "SUCCESS: $migrationName\n";
    }

    echo "\nAll migrations completed successfully.\n";

} catch (PDOException $e) {

    echo "Database error: " . $e->getMessage() . "\n";
    exit(1);

} catch (Throwable $e) {

    echo "Error: " . $e->getMessage() . "\n";
    exit(1);
}