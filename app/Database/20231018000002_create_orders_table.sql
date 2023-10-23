create table if not exists orders(
    id int not null auto_increment primary key,
    customer varchar(255),
    due_date dateTime,
    created_at dateTime default now(),
    updated_at dateTime default now()
);
