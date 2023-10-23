<?php

namespace App\Repositories\Cart;

interface CartInterface{
    public function addItem(int $id, string $name, float $price, float $tax_rate) : void;

    public function removeItem(int $id) : void;

    public function getCart() : array;

    public function clearCart() : void;
}