<?php

namespace App\Repositories\Product;

interface ProductInterface{
    public function get() : array;
    public function getById(int $productId) : array;

    public function store(string $name, string $description, float $price, int $productTypeId) : array;
}