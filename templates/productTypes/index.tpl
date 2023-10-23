{include file="../header.tpl"}

<div class="container mt-4">
    <h1 class="text-center">Listagem de Tipos de Protudo</h1>
    
    <table class="table table-striped">
        <thead class="thead-light">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome do Produto</th>
                <th scope="col">Taxa</th>
            </tr>
        </thead>
        <tbody>
            {foreach $data as $item}
            <tr>
                <td>{$item.id}</td>
                <td>{$item.name}</td>
                <td>{$item.tax_rate} %</td>
            </tr>
            {/foreach}
        </tbody>
    </table>
</div>

{include file="../footer.tpl"}
