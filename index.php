<?php

require 'vendor/autoload.php';

use App\Controllers\ProductsController;
use App\Controllers\ProductTypesController;
use App\Controllers\OrdersController;


$action = isset($_GET['action']) ? $_GET['action'] : '';

switch ($action) {
    case 'createProduct':
        $productsController = new ProductsController();
		$productsController->create();
        break;
    case 'products':
        $productsController = new ProductsController();
		$productsController->index();
        break;
    case 'createType':
        $productTypesController = new ProductTypesController();
		$productTypesController->create();
        break;
    case 'types':
        $productTypesController = new ProductTypesController();
		$productTypesController->index();
        break;
    case 'createOrder':
        $ordersController = new OrdersController();
		$ordersController->create();
        break;
    case 'orders':
        $ordersController = new OrdersController();
		$ordersController->index();
        break;
    default:
        $productsController = new ProductsController();
		$productsController->index();
        break;
}
?>
