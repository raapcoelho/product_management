create table if not exists product_types(
    id int not null auto_increment primary key,
    name varchar(255),
    description varchar(255),
    tax_rate DECIMAL(5, 4),
    created_at dateTime,
    updated_at dateTime
);
