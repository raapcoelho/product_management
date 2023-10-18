create table if not exists products(
    id int not null auto_increment primary key,
    name varchar(255),
    description varchar(255),
    price DECIMAL(10, 2),
    created_at dateTime,
    updated_at dateTime
);