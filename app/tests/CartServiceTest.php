<?php

require 'vendor/autoload.php';

use PHPUnit\Framework\TestCase;
use App\Services\Cart\CartService;
use App\Repositories\Cart\CartRepository;
use App\Services\Product\ProductService;

class CartServiceTest extends TestCase {
    public function testAddItem() {
        $cartService = new CartService();
        
        $cartService->addItem(1);

        $cart = $cartService->getCart();
 
        $this->assertCount(1, $cart);
    }

    public function testRemoveItem() {
        $cartService = new CartService();

        $itemId = 1;

        $cartService->removeItem($itemId);

        $cart = $cartService->getCart();
        $this->assertEmpty($cart);
    }

    public function testGetCart() {
        $cartService = new CartService();
        $cart = $cartService->getCart();
        $this->assertEmpty($cart);
    }

    public function testClearCart() {
        $cartService = new CartService();

        $cartService->addItem(1);

        $cartService->clearCart();

        $cart = $cartService->getCart();
        $this->assertEmpty($cart);
    }
}
