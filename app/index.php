<?php

require 'vendor/autoload.php';

session_start();

use App\Controllers\ProductsController;
use App\Controllers\ProductTypesController;
use App\Controllers\OrdersController;
use App\Controllers\CartController;


$action = isset($_GET['action']) ? $_GET['action'] : '';

$productsController = new ProductsController();
$ordersController = new OrdersController();
$productTypesController = new ProductTypesController();
$cartsController = new CartController();

switch ($action) {
    case 'createProduct':
		    $productsController->create();
        break;
    case 'storeProduct':
		    $productsController->store();
        break;
    case 'products':
		    $productsController->index();
        break;
    case 'createProductType':
		    $productTypesController->create();
        break;
    case 'storeProductType':
		    $productTypesController->store();
        break;
    case 'productTypes':
		    $productTypesController->index();
        break;
    case 'createOrder':
		    $ordersController->create();
        break;
    case 'storeOrder':
		    $ordersController->store();
        break;
    case 'orders':
		    $ordersController->index();
        break;
    case 'storeCart':
		    $cartsController->store();
        break;
    case 'destroyCart':
		    $cartsController->destroy();
        break;
    default:
		    $productsController->index();
        break;
}
?>
