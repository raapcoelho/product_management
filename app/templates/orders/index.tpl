{include file="../header.tpl"}

<div class="container mt-4">
    <h1 class="text-center">Listagem de Vendas</h1>
    
    <table class="table table-striped">
        <thead class="thead-light">
            <tr>
                <th scope="col">ID da ordem</th>
                <th scope="col">ID da venda</th>
                <th scope="col">Cliente</th>
                <th scope="col">Nome do Produto</th>
                <th scope="col">Taxas</th>
                <th scope="col">Total</th>
            </tr>
        </thead>
        <tbody>

            {foreach $data as $orders}
            
                {foreach $orders['products'] as $product}
                <tr>
                    <td>{$orders.id}</td>
                    <td>{$product.id}</td>
                    <td>{$orders.customer}</td>
                    <td>{$product.name}</td>
                    <td>R$ {$product.total_tax}</td>
                    <td>R$ {$product.total}</td>
                </tr>
                {/foreach}
            
            {/foreach}

            
        </tbody>
    </table>
</div>

{include file="../footer.tpl"}
