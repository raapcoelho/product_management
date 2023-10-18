<?php

require 'vendor/autoload.php';

use App\Core\DatabaseConnection;


$dbConnection = new DatabaseConnection();

$dbConnection->checkOrCreateDatabase();

$directory = 'app/Database/';

$files = array_diff(scandir($directory), ['.', '..']);

foreach ($files as $file) {
    $filePath = $directory . $file;
    
    if (is_file($filePath)) {
        
        $dbConnection->execute(file_get_contents($filePath));
    }
}

