<?php

namespace App\Services\ProductType;

use App\Repositories\ProductType\ProductTypeRepository;
use App\Repositories\ProductType\ProductTypeInterface;

class ProductTypeService{

    public $productType;

    public function __construct(){
        $productTypeInterface = new ProductTypeRepository;
        $this->productType = $productTypeInterface;
    }

    public function get(){
        return $this->productType->get();
    }
    public function getById($productTypeId) {
        return $this->productType->getById($productTypeId);
    }
    public function store(string $name, string $description, float $tax_rate){
        return $this->productType->store($name, $description, $tax_rate);
    }
}