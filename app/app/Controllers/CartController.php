<?php

namespace App\Controllers;

use App\Services\Cart\CartService;

class CartController extends Controller{

	private $cartService;

    public function __construct() {
		$cartService = new CartService();
        $this->cartService = $cartService;
    }
	public function store(){

        $productId = $_POST['productId'];

		$this->cartService->addItem($productId);

        header('Location: ?action=createOrder');
        exit;
	}

    public function destroy(){

        $productId = $_GET['productId'];

		$this->cartService->removeItem($productId);

        header('Location: ?action=createOrder');
        exit;
	}
}
