<?php

namespace App\Controllers;

class ProductTypesController extends Controller{
    public function index(){
		
		$this->view('productTypes.index');
	}
	public function create(){
		
		$this->view('productTypes.create');
	}
}
