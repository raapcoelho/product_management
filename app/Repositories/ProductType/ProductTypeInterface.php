<?php

namespace App\Repositories\ProductType;

interface ProductTypeInterface{
    public function get() : array;
    public function getById(int $productTypeId) : array;
    public function store(string $name, string $description, float $tax_rate) : array;
}