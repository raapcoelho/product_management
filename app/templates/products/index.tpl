{include file="../header.tpl"}

<div class="container mt-4">
    <h1 class="text-center">Listagem de Produtos</h1>
    
    <table class="table table-striped">
        <thead class="thead-light">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome do Produto</th>
                <th scope="col">Descrição</th>
                <th scope="col">Tipo</th>
                <th scope="col">Imposto</th>
                <th scope="col">Preço</th>
            </tr>
        </thead>
        <tbody>
            {foreach $data as $item}
            <tr>
                <td>{$item.id}</td>
                <td>{$item.name}</td>
                <td>{$item.description}</td>
                <td>{$item.type.name}</td>
                <td>{$item.type.tax_rate}%</td>
                <td>R$ {$item.price}</td>
            </tr>
            {/foreach}
        </tbody>
    </table>
</div>

{include file="../footer.tpl"}
