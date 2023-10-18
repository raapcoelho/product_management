<?php

namespace App\Core;

use PDO;
use PDOException;
use Dotenv\Dotenv;

class DatabaseConnection {
    private $host;
    private $username;
    private $password;
    private $dbname;
    private $charset;
    private $pdo;

    public function __construct() {

        $env = Dotenv::createImmutable(__DIR__ . '/../../'); // Defina o diretório onde está o arquivo .env
        $env->load();

        $this->host = $_ENV['DB_HOST'];
        $this->username = $_ENV['DB_USERNAME'];
        $this->password = $_ENV['DB_PASSWORD'];
        $this->dbname = $_ENV['DB_NAME'];
        $this->charset = $_ENV['DB_CHARSET'];

        $this->checkOrCreateDatabase();

        // Estabelece a conexão com o banco de dados no construtor
        $this->connect();
        
    }

    private function connect() {
        $dsn = "mysql:host={$this->host};dbname={$this->dbname};charset={$this->charset}";

        try {
            $this->pdo = new PDO($dsn, $this->username, $this->password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die('Erro na conexão com o banco de dados: ' . $e->getMessage());
        }
    }

    public function getConnection() {
        return $this->pdo;
    }

    public function checkOrCreateDatabase() {
        try {
            $pdo = new PDO("mysql:host={$this->host}", $this->username, $this->password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            // Verifique se o banco de dados já existe
            $databaseExists = in_array($this->dbname, $pdo->query('SHOW DATABASES')->fetchAll(PDO::FETCH_COLUMN));

            // Se o banco de dados não existir, crie-o
            if (!$databaseExists) {
                $createDatabaseSQL = "CREATE DATABASE IF NOT EXISTS {$this->dbname} CHARACTER SET {$this->charset}";
                $pdo->exec($createDatabaseSQL);
                echo "Banco de dados '{$this->dbname}' criado com sucesso!";
            }
        } catch (PDOException $e) {
            die('Erro ao verificar ou criar o banco de dados: ' . $e->getMessage());
        }
    }
 
    public function select($sql, $params = []) {
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function execute($sql, $params = []) {
        $stmt = $this->pdo->prepare($sql);
        return $stmt->execute($params);
    }
}
