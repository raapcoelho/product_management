create table if not exists products(
    id int not null auto_increment primary key,
    product_type_id int not null,
    name varchar(255),
    description varchar(255),
    price DECIMAL(10, 2),
    created_at dateTime default now(),
    updated_at dateTime default now()
);

INSERT INTO products (product_type_id, name, description, price, created_at, updated_at) VALUES
    (FLOOR(1 + RAND() * 10), 'Camisa Polo', 'Camisa Polo de algodão', 29.99, NOW(), NOW()),
    (FLOOR(1 + RAND() * 10), 'Tênis Esportivo', 'Tênis para corrida', 79.95, NOW(), NOW()),
    (FLOOR(1 + RAND() * 10), 'Smartphone Android', 'Telefone Android de última geração', 399.99, NOW(), NOW()),
    (FLOOR(1 + RAND() * 10), 'Máquina de Café', 'Máquina de café automática', 89.99, NOW(), NOW()),
    (FLOOR(1 + RAND() * 10), 'Fones de Ouvido Bluetooth', 'Fones de ouvido sem fio', 49.99, NOW(), NOW()),
    (FLOOR(1 + RAND() * 10), 'Notebook Ultraleve', 'Notebook fino e leve', 899.50, NOW(), NOW()),
    (FLOOR(1 + RAND() * 10), 'Câmera DSLR', 'Câmera digital profissional', 1199.95, NOW(), NOW()),
    (FLOOR(1 + RAND() * 10), 'Livro de Ficção', 'Romance best-seller', 14.99, NOW(), NOW()),
    (FLOOR(1 + RAND() * 10), 'Ferramenta de Jardinagem', 'Kit de ferramentas para jardinagem', 49.75, NOW(), NOW()),
    (FLOOR(1 + RAND() * 10), 'Relógio de Pulso', 'Relógio elegante para uso diário', 199.99, NOW(), NOW());
