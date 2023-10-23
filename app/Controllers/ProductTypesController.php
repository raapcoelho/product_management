<?php

namespace App\Controllers;

use App\Services\ProductType\ProductTypeService;

class ProductTypesController extends Controller{
	private $productTypeService;

    public function __construct() {
		$productTypeService = new ProductTypeService();
        $this->productTypeService = $productTypeService;
    }

    public function index(){
		
		$this->view('productTypes.index',  $this->productTypeService->get());
	}
	public function create(){
		
		$this->view('productTypes.create');
	}
	
	public function store(){
        
        
        $name = $_POST['name'];
        $description = $_POST['description'];
        $tax_rate = $_POST['tax_rate'];

        $this->productTypeService->store(
            name: $name, 
            description: $description,
            tax_rate: $tax_rate
        );

        header('Location: ?action=productTypes');
        exit;
    }
}
