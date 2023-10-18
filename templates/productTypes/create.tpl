
{include file="../header.tpl"}






<div class="container mt-4">
    <h1 class="text-center">Cadastrar Tipo</h1>
    <form class="form">
        <div class="form-group">
            <label for="type">Tipo do Produto</label>
            <input type="text" class="form-control" id="type" placeholder="Digite o tipo do produto">
        </div>
        <div class="form-group">
            <label for="description">Descrição do Produto</label>
            <input type="text" class="form-control" id="description" placeholder="Digite a descrição do produto">
        </div>
        <div class="form-group">
            <label for="price">Valor do imposto em porcentagem</label>
            <input type="text" class="form-control" id="price" placeholder="Valor do imposto em porcentagem">
        </div>
        <button type="submit" class="btn btn-primary mt-4">Cadastrar</button>
    </form>
</div>






{include file="../footer.tpl"}