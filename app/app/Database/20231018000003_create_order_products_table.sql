create table if not exists order_products(
    id int not null auto_increment primary key,
    order_id int,
    product_id int,
    name varchar(255),
    price DECIMAL(10, 2),
    tax_rate DECIMAL(10, 2),
    quantity int,
    total_tax DECIMAL(10, 2),
    total DECIMAL(10, 2),
    created_at dateTime default now(),
    updated_at dateTime default now()
);
