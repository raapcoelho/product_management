create table if not exists product_types(
    id int not null auto_increment primary key,
    name varchar(255),
    description varchar(255),
    tax_rate DECIMAL(10, 2),
    created_at dateTime default now(),
    updated_at dateTime default now()
);

INSERT INTO product_types (name, description, tax_rate, created_at, updated_at) VALUES
    ('Alimento', 'Categoria de produtos relacionados a alimentos', 0.10, NOW(), NOW()),
    ('Vestuário', 'Categoria de produtos relacionados a roupas', 0.15, NOW(), NOW()),
    ('Eletrônicos', 'Categoria de produtos relacionados a eletrônicos', 0.08, NOW(), NOW()),
    ('Decoração', 'Categoria de produtos relacionados a decoração', 0.12, NOW(), NOW()),
    ('Cosméticos', 'Categoria de produtos relacionados a cosméticos', 0.09, NOW(), NOW()),
    ('Brinquedos', 'Categoria de produtos relacionados a brinquedos', 0.11, NOW(), NOW()),
    ('Esportes', 'Categoria de produtos relacionados a esportes', 0.14, NOW(), NOW()),
    ('Livros', 'Categoria de produtos relacionados a livros', 0.07, NOW(), NOW()),
    ('Ferramentas', 'Categoria de produtos relacionados a ferramentas', 0.13, NOW(), NOW()),
    ('Jóias', 'Categoria de produtos relacionados a jóias', 0.06, NOW(), NOW());
