<?php

namespace App\Repositories\Cart;


class CartRepository implements CartInterface{
    private $cart;

    public function __construct() {

        if (!isset($_SESSION['cart'])) {
            $_SESSION['cart'] = [];
        }

        $this->cart = &$_SESSION['cart'];
    }

    public function addItem(int $id, string $name, float $price, float $tax_rate) : void{
        if (isset($this->cart[$id])) {
            $this->cart[$id]['quantity'] += 1;
        } else {
            $this->cart[$id] = ['name' => $name, 'price' => $price, 'tax_rate' => $tax_rate, 'quantity' => 1];
        }
    }

    public function removeItem(int $id) : void{
        
        if (isset($this->cart[$id])) {
            unset($this->cart[$id]);
        }
    }

    public function getCart() : array {

        return $this->cart;
    }

    public function clearCart() : void{
        
        $_SESSION['cart'] = [];
        $this->cart = &$_SESSION['cart'];
    }
}