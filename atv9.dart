import 'dart:io';

void main() {
  try {
    print('Quanto você ganha por hora (R\$)?');
    String? entradaValorHora = stdin.readLineSync();
    double valorPorHora = double.parse(entradaValorHora!);

    if (valorPorHora <= 0) {
      print('Erro: O valor por hora deve ser positivo.');
      return;
    }

    print('Quantas horas você trabalhou no mês?');
    String? entradaHoras = stdin.readLineSync();
    double horasTrabalhadas = double.parse(entradaHoras!);

    if (horasTrabalhadas <= 0) {
      print('Erro: O número de horas deve ser positivo.');
      return;
    }

    double salarioBruto = valorPorHora * horasTrabalhadas;

    double percentualIR = 11.0;
    double percentualINSS = 8.0;
    double percentualSindicato = 5.0;

    double descontoIR = salarioBruto * (percentualIR / 100);
    double descontoINSS = salarioBruto * (percentualINSS / 100);
    double descontoSindicato = salarioBruto * (percentualSindicato / 100);

    double totalDescontos = descontoIR + descontoINSS + descontoSindicato;

    double salarioLiquido = salarioBruto - totalDescontos;

    print('\n=== DADOS INFORMADOS ===');
    print('Valor por hora: R\$ ${valorPorHora.toStringAsFixed(2)}');
    print('Horas trabalhadas no mês: ${horasTrabalhadas.toStringAsFixed(1)}h');

    print('\n=== DEMONSTRATIVO DE PAGAMENTO ===');
    print('+ Salário Bruto       : R\$ ${salarioBruto.toStringAsFixed(2)}');
    print(
      '- IR (${percentualIR.toStringAsFixed(0)}%)           : R\$ ${descontoIR.toStringAsFixed(2)}',
    );
    print(
      '- INSS (${percentualINSS.toStringAsFixed(0)}%)         : R\$ ${descontoINSS.toStringAsFixed(2)}',
    );
    print(
      '- Sindicato (${percentualSindicato.toStringAsFixed(0)}%)    : R\$ ${descontoSindicato.toStringAsFixed(2)}',
    );
    print('                      ────────────────');
    print('= Salário Líquido     : R\$ ${salarioLiquido.toStringAsFixed(2)}');

    print('\n=== RESUMO ===');
    print('Salário bruto: R\$ ${salarioBruto.toStringAsFixed(2)}');
    print('Quanto pagou ao INSS: R\$ ${descontoINSS.toStringAsFixed(2)}');
    print(
      'Quanto pagou ao sindicato: R\$ ${descontoSindicato.toStringAsFixed(2)}',
    );
    print('Salário líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}');

    print('\n=== INFORMAÇÕES ADICIONAIS ===');
    print(
      'Total de descontos: R\$ ${totalDescontos.toStringAsFixed(2)} (${((totalDescontos / salarioBruto) * 100).toStringAsFixed(1)}%)',
    );
    print(
      'Percentual líquido: ${((salarioLiquido / salarioBruto) * 100).toStringAsFixed(1)}%',
    );
  } catch (e) {
    print('Erro: Por favor, digite apenas números válidos.');
    print('Use ponto (.) para separar decimais, se necessário.');
    print('Exemplo: 25.50 para valor por hora, 160 para horas trabalhadas');
  }
}
