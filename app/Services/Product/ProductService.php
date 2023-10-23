<?php

namespace App\Services\Product;

use App\Repositories\Product\ProductInterface;
use App\Repositories\Product\ProductRepository;
use App\Services\ProductType\ProductTypeService;

class ProductService{

    public $product;
    public $productTypeService;

    public function __construct(){
        $productRepository = new ProductRepository;
        $this->product = $productRepository;

        $productTypeService = new ProductTypeService();
        $this->productTypeService = $productTypeService;
    }
    public function get(){
        $products = $this->product->get();

        foreach($products as $key => $product){
            
            $type = $this->productTypeService->getById($product['product_type_id']);
            
            $products[$key]['type'] = $type;
           
        }

        return $products;
    }

    public function getById(int $productId){
        $product = $this->product->getById($productId);

        $type = $this->productTypeService->getById($product['id']);

        $product['type'] = $type;

        return $product;
    }

    public function store(string $name, string $description, float $price, int $productTypeId){
        return $this->product->store($name, $description, $price, $productTypeId);
    }
}