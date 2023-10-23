
{include file="../header.tpl"}


<div class="container mt-4">
    <h1 class="text-center">Carrinho de Compras</h1>

    <form action="?action=storeCart" method="post">
        <div class="form-group">
            <label for="productId">Escolha o Produto</label>
            <select class="form-control" id="productId" name="productId">
                {foreach $data['products'] as $item}
                    <option value="{$item.id}">{$item.name}</option>
                {/foreach}
            </select>
        </div>
        <button type="submit" class="btn btn-primary mt-4" id="adicionarAoCarrinho">Adicionar ao Carrinho</button>
    </form>
    <form action="?action=storeOrder" method="POST">
        

        <h3 class="mt-4">Itens no Carrinho</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>Produto</th>
                    <th>Quantidade</th>
                    <th>Imposto por unidade</th>
                    <th>Valor por unidade</th>
                    <th><b>Total Imposto</b></th>
                    <th><b>Total Valor</b></th>
                    
                    <th>Remover</th>
                </tr>
            </thead>
            <tbody>
                {assign var="totalFinal" value=0}
                {assign var="totalFinalTax" value=0}
                {assign var="subtotalFinal" value=0}

                
                {foreach $data['cart'] as $key => $item}
                    
                    {assign var="totalFinal" value=$totalFinal + $item.total}
                    {assign var="totalFinalTax" value=$totalFinalTax + $item.tax}
                    {assign var="subtotalFinal" value=$subtotalFinal + $item.subtotal}

                    <tr>
                        <td>{$item.name}</td>
                        <td>{$item.quantity}</td>
                        <td>R$ {$item.tax_rate}</td>
                        <td>R$ {$item.price}</td>
                        <td>R$ {$item.tax}</td>
                        <td>R$ {$item.total}</td>
                        
                        <td><a href="?action=destroyCart&productId={$key}">Remover</a></td>
                    </tr>
                {/foreach}
            </tbody>
        </table>

        <table class="table" style="margin-top: 100px; margin-bottom: 50px;">

            <thead>
                <tr>
                    <th></th>
                    <th>Imposto</th>
                    <th>Valor</th>
                    

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Subtotal</td>
                    <td>R$ {$totalFinalTax}</td>
                    <td>R$ {$subtotalFinal}</td>
                </tr>
                <tr>
                    <td colspan="2"><b>Total Geral</b></td>
                    <td><b>R$ {$totalFinal}</b></td>
                </tr>
            </tbody>
  
        </table>

        <div class="form-group">
            <label for="customer">Nome do Cliente</label>
            <input type="text" class="form-control" id="customer" name="customer" placeholder="Digite o nome do cliente" required>
        </div>
        <button type="submit" class="btn btn-success mt-4">Concluir Compra</button>
    </form>
</div>





{include file="../footer.tpl"}