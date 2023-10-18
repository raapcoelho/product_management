<?php

namespace App\Controllers;

class OrdersController extends Controller{
    public function index(){
		
		$this->view('orders.index');
	}
	public function create(){
		
		$this->view('orders.create');
	}
}
