<?php

namespace App\Repositories\Order;

interface OrderInterface{
    public function get() : array;

    public function store(string $customer, array $products) : array;
}