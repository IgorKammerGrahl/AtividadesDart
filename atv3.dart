import 'dart:io';

void main() {
  try {
    print('Digite o salário mensal atual do funcionário (R\$):');
    String? entradaSalario = stdin.readLineSync();
    double salarioAtual = double.parse(entradaSalario!);

    if (salarioAtual <= 0) {
      print('Erro: O salário deve ser um valor positivo.');
      return;
    }

    print('Digite o percentual de reajuste (%):');
    String? entradaPercentual = stdin.readLineSync();
    double percentualReajuste = double.parse(entradaPercentual!);

    double valorReajuste = salarioAtual * (percentualReajuste / 100);

    double novoSalario = salarioAtual + valorReajuste;

    print('\n=== CÁLCULO DE REAJUSTE SALARIAL ===');
    print('Salário atual: R\$ ${salarioAtual.toStringAsFixed(2)}');
    print('Percentual de reajuste: ${percentualReajuste.toStringAsFixed(2)}%');
    print('Valor do reajuste: R\$ ${valorReajuste.toStringAsFixed(2)}');
    print('Novo salário: R\$ ${novoSalario.toStringAsFixed(2)}');

    double aumentoPercentual =
        ((novoSalario - salarioAtual) / salarioAtual) * 100;
    print(
      '\nAumento total: R\$ ${(novoSalario - salarioAtual).toStringAsFixed(2)} (${aumentoPercentual.toStringAsFixed(2)}%)',
    );
  } catch (e) {
    print('Erro: Por favor, digite apenas números válidos.');
    print('Use ponto (.) para separar decimais, se necessário.');
  }
}
