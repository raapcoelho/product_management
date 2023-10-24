# Gestão de Produtos

## Requisitos

- PHP 8.1
- MariaDB 10.6

## Como Instalar?

Para começar, siga os passos abaixo:

### Docker

Tempo médio de instalação: 3 minutos

Copie o repositório para sua máquina e execute o seguinte comando para iniciar em contêineres Docker:

```shell
docker-compose up -d
```

Acesse a aplicação em seu navegador: [http://localhost:8082/](http://localhost:8082/)


Este é um projeto criado com o propósito de estudo.


## Instalação Manual

Tempo médio de instalação: 3 minutos

Siga estas seguintes etapas:

1. Abra o arquivo `.env` dentro da pasta `app` e altere as configurações de acordo com o seu banco de dados.

   ```bash
   DB_HOST='localhost'
   DB_USERNAME='root'
   DB_PASSWORD=''
   DB_NAME='product_management'
   DB_CHARSET='utf8'
   ```

2. Ainda dentro da pasta `app` execute o comando abaixo para instalar o banco de dados:

   ```shell
   php install.php
   ```

## Se preferir, importe o banco manualmente

O arquivo sql está com nome "product_management.sql"

## Executando

Para iniciar a aplicação, você pode usar o seguinte comando dentro da pasta `app`:

   ```shell
   php -S localhost:8081
   ```

## Pré-visualização
http://rafaelcoelho.dev.br/product_management/index.php

## Testes

Entre na pasta `app` e execute:

   ```shell
   vendor/bin/phpunit tests/CartServiceTest.php
   ```
