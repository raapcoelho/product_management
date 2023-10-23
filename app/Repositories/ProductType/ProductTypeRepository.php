<?php

namespace App\Repositories\ProductType;

use App\Core\DatabaseConnection;

class ProductTypeRepository implements ProductTypeInterface{
    private $dbConnection;

    public function __construct() {
        $this->dbConnection = new DatabaseConnection();
    }
    public function get() : array{

        $productTypes = $this->dbConnection->select("select * from product_types");

        return $productTypes;
    }

    public function getById(int $productTypeId) : array{

        $productTypes = $this->dbConnection->select("select * from product_types where id = ?", [$productTypeId])[0];

        return $productTypes;
    }

    public function store(string $name, string $description, float $tax_rate) : array{

        $products = $this->dbConnection->execute("insert into product_types(name, description, tax_rate) values(?, ?, ?)", [$name, $description, $tax_rate]);

        return [];
    }
}