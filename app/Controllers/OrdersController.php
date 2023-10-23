<?php

namespace App\Controllers;

use App\Services\Product\ProductService;
use App\Services\Cart\CartService;
use App\Services\Order\OrderService;

class OrdersController extends Controller{

	private $productService;
	private $cartService;
	private $orderService;

    public function __construct() {
		$productService = new ProductService();
        $this->productService = $productService;

		$cartService = new CartService();
        $this->cartService = $cartService;

		$orderService = new OrderService();
        $this->orderService = $orderService;
    }

    public function index(){
		$this->view('orders.index', $this->orderService->get());
	}
	public function create(){

		$params = array(
			'products' => $this->productService->get(),
			'cart' => $this->cartService->getCart()
		);
		$this->view('orders.create', $params);
	}
	public function store(){
        
        $customer = $_POST['customer'];

        $this->orderService->store(
            customer: $customer
        );
        
        header('Location: ?action=orders');
        exit;
    }
}
