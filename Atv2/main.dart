import 'client.dart';
import 'produto.dart';
import 'venda_item.dart';
import 'venda.dart';

void main() {
  var cliente = Cliente(nome: "Igor Grahl", cpf: "123.456.789-00");

  var produto1 = Produto(
    codigo: 1,
    nome: "Notebook",
    preco: 3500,
    desconto: 10,
  );
  var produto2 = Produto(
    codigo: 2,
    nome: "Mouse Gamer",
    preco: 150,
    desconto: 5,
  );
  var produto3 = Produto(
    codigo: 3,
    nome: "Teclado Mecânico",
    preco: 400,
    desconto: 0,
  );

  var item1 = VendaItem(produto: produto1, quantidade: 1);
  var item2 = VendaItem(produto: produto2, quantidade: 2);
  var item3 = VendaItem(produto: produto3, quantidade: 1);

  var venda = Venda(cliente: cliente, itens: [item1, item2, item3]);

  print("Cliente: ${venda.cliente.nome} - CPF: ${venda.cliente.cpf}");
  for (var item in venda.itens) {
    print(
      "Produto: ${item.produto.nome} | Qtd: ${item.quantidade} | Unitário: R\$ ${item.preco.toStringAsFixed(2)} | Subtotal: R\$ ${(item.preco * item.quantidade).toStringAsFixed(2)}",
    );
  }

  print("\nValor total da venda: R\$ ${venda.valorTotal.toStringAsFixed(2)}");
}
