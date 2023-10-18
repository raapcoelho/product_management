
{include file="../header.tpl"}


<div class="container mt-4">
    <h1 class="text-center">Carrinho de Compras</h1>
    <form>
        <div class="form-group">
            <label for="produto">Escolha o Produto</label>
            <select class="form-control" id="produto">
                <option value="produto1">Produto 1</option>
                <option value="produto2">Produto 2</option>
                <option value="produto3">Produto 3</option>
            </select>
        </div>
        <button type="button" class="btn btn-primary mt-4" id="adicionarAoCarrinho">Adicionar ao Carrinho</button>

        <h3 class="mt-4">Itens no Carrinho</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>Produto</th>
                    <th>Valor</th>
                    <th>Imposto</th>
                </tr>
            </thead>
            <tbody>
                <!-- Linhas da tabela com os itens no carrinho -->
                <tr>
                    <td>Produto 1</td>
                    <td>R$ 50.00</td>
                    <td>R$ 5.00</td>
                </tr>
                <!-- Adicione mais linhas conforme você adicionar itens ao carrinho -->
            </tbody>
            <tfoot>
                <tr>
                    <td>Subtotal</td>
                    <td>R$ 150.00</td>
                    <td>R$ 15.00</td>
                </tr>
                <tr>
                    <td>Total Geral</td>
                    <td>R$ 165.00</td>
                    <td>R$ 16.50</td>
                </tr>
            </tfoot>
        </table>

        <div class="form-group">
            <label for="cliente">Nome do Cliente</label>
            <input type="text" class="form-control" id="cliente" placeholder="Digite o nome do cliente">
        </div>
        <button type="submit" class="btn btn-success mt-4">Concluir Compra</button>
    </form>
</div>





{include file="../footer.tpl"}