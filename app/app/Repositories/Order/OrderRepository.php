<?php

namespace App\Repositories\Order;

use App\Core\DatabaseConnection;

class OrderRepository implements OrderInterface{
    private $dbConnection;

    public function __construct() {
        $this->dbConnection = new DatabaseConnection();
    }

    public function get() : array{

        $orders = $this->dbConnection->select("select * from orders");

        foreach($orders as $key => $order){
            $totalTax = 0;
            $total = 0;

            $orderProducs = $this->dbConnection->select("select * from order_products where order_id = ?", [$order['id']]);

            foreach($orderProducs as $orderProduct){
                $totalTax += ($orderProduct['price'] * 100) / $orderProduct['tax_rate'];
                $total += $totalTax + $orderProduct['price'];
            }
            
            $orders[$key]['products'] = $orderProducs;
            $orders[$key]['totalTax'] = $totalTax;
            $orders[$key]['total'] = $total;
        }

        return $orders;
    }

    public function store(string $customer, array $products) : array{


        
        $this->dbConnection->execute("insert into orders(customer, due_date) values(?, ?)", [$customer, date('Y-m-d')]);

        $orderId = $this->dbConnection->lastInsertId();

        foreach($products as $key => $product){
            $this->dbConnection->execute("insert into order_products(order_id, product_id, name, price, tax_rate, quantity, total_tax, total) values(?, ?, ?, ?, ?, ?, ?, ?)", [$orderId, $key, $product['name'], $product['price'], $product['tax_rate'], $product['quantity'], $product['tax'], $product['total']]);
        }

        return [];
    }
}