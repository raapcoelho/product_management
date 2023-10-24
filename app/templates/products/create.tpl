
{include file="../header.tpl"}






<div class="container mt-4">
    <h1 class="text-center">Cadastrar Produto</h1>
    <form class="form" action="?action=storeProduct" method="POST">
        <div class="form-group">
            <label for="name">Nome do Produto</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Digite o nome do produto">
        </div>
        <div class="form-group">
            <label for="description">Descrição do Produto</label>
            <input type="text" class="form-control" id="description" name="description" placeholder="Digite a descrição do produto">
        </div>
        <div class="form-group">
            <label for="price">Preço do Produto</label>
            <input type="number" class="form-control" id="price" name="price" placeholder="Digite o preço do produto">
        </div>
        <div class="form-group">
            <label for="productTypeId">Tipo do prodto</label>
            <select id="productTypeId" name="productTypeId" class="form-control">
                {foreach $data as $item}
                <option value="{$item['id']}">{$item['name']} - {$item['tax_rate']}%</option>
                {/foreach}
            </select>
        </div>
        <button type="submit" class="btn btn-primary mt-4">Cadastrar</button>
    </form>
</div>






{include file="../footer.tpl"}