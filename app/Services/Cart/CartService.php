<?php

namespace App\Services\Cart;

use App\Repositories\Cart\CartInterface;
use App\Repositories\Cart\CartRepository;
use App\Services\Product\ProductService;

class CartService {
    private $cart;
    private $productService;

    public function __construct() {
        $carttRepository = new CartRepository;
        $this->cart = $carttRepository;

        $productService = new ProductService();
        $this->productService = $productService;
    }

    public function addItem(int $productId) {
        
        $product = $this->productService->getById($productId);

   

        $this->cart->addItem($productId, $product['name'], $product['price'], $product['type']['tax_rate']);
    }

    public function removeItem(int $id) {
        $this->cart->removeItem($id);
    }

    public function getCart() {
        $products = $this->cart->getCart();

        foreach($products as $key => $product){
            $products[$key]['subtotal'] = number_format($product['price'] * $product['quantity'], 2);
            $products[$key]['tax'] = number_format(($product['tax_rate'] * 100) / $product['price'], 2);
            $products[$key]['total'] = number_format($products[$key]['subtotal'] + $products[$key]['tax'], 2);
        }

        return $products;
    }

    public function clearCart() {
        $this->cart->clearCart();
    }
}
