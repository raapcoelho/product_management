<?php

namespace App\Repositories\Product;

use App\Core\DatabaseConnection;

class ProductRepository implements ProductInterface{

    private $dbConnection;

    public function __construct() {
        $this->dbConnection = new DatabaseConnection();
    }
    public function get() : array{

        $products = $this->dbConnection->select("select * from products");

        return $products;
    }

    public function getById(int $productId) : array{

        $products = $this->dbConnection->select("select * from products where id = ?", [$productId])[0];

        return $products;
    }

    public function store(string $name, string $description, float $price, int $productTypeId) : array{

        $products = $this->dbConnection->execute("insert into products(name, description, price, product_type_id) values(?, ?, ?, ?)", [$name, $description, $price, $productTypeId]);

        return [];
    }
}