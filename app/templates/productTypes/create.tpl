
{include file="../header.tpl"}






<div class="container mt-4">
    <h1 class="text-center">Cadastrar Tipo</h1>
    <form class="form" action="?action=storeProductType" method="POST">
        <div class="form-group">
            <label for="name">Tipo do Produto</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Digite o tipo do produto">
        </div>
        <div class="form-group">
            <label for="description">Descrição do Produto</label>
            <input type="text" class="form-control" id="description" name="description" placeholder="Digite a descrição do produto">
        </div>
        <div class="form-group">
            <label for="tax_rate">Valor do imposto em porcentagem</label>
            <input type="numeric" class="form-control" id="tax_rate" name="tax_rate" placeholder="Valor do imposto em porcentagem">
        </div>
        <button type="submit" class="btn btn-primary mt-4">Cadastrar</button>
    </form>
</div>






{include file="../footer.tpl"}