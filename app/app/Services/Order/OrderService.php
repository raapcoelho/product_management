<?php

namespace App\Services\Order;

use App\Repositories\Order\OrderInterface;
use App\Repositories\Order\OrderRepository;
use App\Services\Cart\CartService;

class orderService{

    public $order;
    public $cartService;

    public function __construct(){
        $orderRepository = new OrderRepository;
        $this->order = $orderRepository;

        $cartService = new CartService();
        $this->cartService = $cartService;
    }
    public function get(){
        return $this->order->get();
    }

    public function store(string $customer){

        $products = $this->cartService->getCart();

        $this->order->store($customer, $products);

        return $this->cartService->clearCart();
    }
}