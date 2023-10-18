create table if not exists orders(
    id int not null auto_increment primary key,
    total varchar(255),
    created_at dateTime,
    updated_at dateTime
);
