import 'dart:io';

String calcularComissao(
  String nome,
  double salario,
  double vendas,
  double percentual,
) {
  double comissao = vendas * (percentual / 100);
  double total = salario + comissao;

  return "O funcionário $nome deverá receber este mês o valor R\$ ${total.toStringAsFixed(2)}, "
      "sendo R\$ ${salario.toStringAsFixed(2)} de salário e R\$ ${comissao.toStringAsFixed(2)} de comissão.";
}

void main() {
  stdout.write("Digite o nome do funcionário: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Digite o salário do funcionário: ");
  double salario = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor total de vendas do mês passado: ");
  double vendas = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o percentual de comissão (%): ");
  double percentual = double.parse(stdin.readLineSync()!);

  String resultado = calcularComissao(nome, salario, vendas, percentual);
  print("\n$resultado");
}
