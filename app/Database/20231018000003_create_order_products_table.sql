create table if not exists order_products(
    id int not null auto_increment primary key,
    order_id int,
    product_id int,
    name varchar(255),
    price DECIMAL(10, 2),
    tax_rate DECIMAL(5, 4),
    created_at dateTime,
    updated_at dateTime
);
