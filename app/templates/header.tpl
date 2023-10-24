<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gerenciar Produtos</title>
    
    <!-- Inclua a última versão do Bootstrap (CSS) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="d-flex justify-content-center mb-4">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.php">Gerenciar Produtos</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="index.php?action=createProduct">Cadastrar Produto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?action=products">Listar Produtos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?action=createProductType">Cadastrar Tipo</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?action=productTypes">Listar Tipos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?action=createOrder">Fazer Venda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?action=orders">Listar Vendas</a>
                </li>
            </ul>
        </div>
    </nav>
</div>