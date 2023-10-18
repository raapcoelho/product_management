<?php

namespace App\Controllers;

class ProductsController extends Controller{
    public function index(){
		
		$this->view('products.index');
	}
	public function create(){
		
		$this->view('products.create');
	}
}
