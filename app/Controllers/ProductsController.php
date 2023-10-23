<?php

namespace App\Controllers;

use App\Services\Product\ProductService;
use App\Services\ProductType\ProductTypeService;

class ProductsController extends Controller {

    private $productService;
    private $productTypeService;

    public function __construct() {
		$productService = new ProductService();
        $this->productService = $productService;

        $productTypeService = new ProductTypeService();
        $this->productTypeService = $productTypeService;
    }

    public function index() {
        $this->view('products.index', $this->productService->get());
    }

    public function create() {
        $this->view('products.create', $this->productTypeService->get());
    }

    public function store(){
        
        $name = $_POST['name'];
        $description = $_POST['description'];
        $price = $_POST['price'];
        $productTypeId = $_POST['productTypeId'];

        $this->productService->store(
            name: $name, 
            description: $description,
            price: $price,
            productTypeId: $productTypeId
        );
        
        header('Location: ?action=products');
        exit;
    }
}
