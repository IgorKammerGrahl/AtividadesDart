import 'dart:io';

void main() {
  try {
    print('Digite a altura da pessoa (em metros):');
    String? entradaAltura = stdin.readLineSync();
    double altura = double.parse(entradaAltura!);

    if (altura <= 0 || altura > 3.0) {
      print('Erro: A altura deve estar entre 0 e 3.0 metros.');
      return;
    }

    print('Digite o sexo da pessoa:');
    print('1 - Masculino');
    print('2 - Feminino');
    print('Opção: ');
    String? entradaSexo = stdin.readLineSync();
    int opcaoSexo = int.parse(entradaSexo!);

    if (opcaoSexo != 1 && opcaoSexo != 2) {
      print('Erro: Digite 1 para Masculino ou 2 para Feminino.');
      return;
    }

    double pesoIdeal;
    String sexo;
    String formula;

    if (opcaoSexo == 1) {
      sexo = 'Masculino';
      formula = '(72.7 × h) - 58';
      pesoIdeal = (72.7 * altura) - 58;
    } else {
      sexo = 'Feminino';
      formula = '(62.1 × h) - 44.7';
      pesoIdeal = (62.1 * altura) - 44.7;
    }

    print('\n=== CÁLCULO DO PESO IDEAL ===');
    print('Altura: ${altura.toStringAsFixed(2)} m');
    print('Sexo: $sexo');
    print('Fórmula utilizada: $formula');

    print('\nCálculo detalhado:');
    if (opcaoSexo == 1) {
      double produto = 72.7 * altura;
      print('(72.7 × ${altura.toStringAsFixed(2)}) - 58');
      print('${produto.toStringAsFixed(2)} - 58');
      print('${pesoIdeal.toStringAsFixed(2)} kg');
    } else {
      double produto = 62.1 * altura;
      print('(62.1 × ${altura.toStringAsFixed(2)}) - 44.7');
      print('${produto.toStringAsFixed(2)} - 44.7');
      print('${pesoIdeal.toStringAsFixed(2)} kg');
    }

    print('\nPESO IDEAL: ${pesoIdeal.toStringAsFixed(2)} kg');

    double imcIdeal = pesoIdeal / (altura * altura);
    print('\nIMC correspondente: ${imcIdeal.toStringAsFixed(2)}');

    if (imcIdeal >= 18.5 && imcIdeal <= 24.9) {
      print('Classificação: Peso normal');
    } else if (imcIdeal < 18.5) {
      print('Classificação: Abaixo do peso');
    } else {
      print('Classificação: Acima do peso');
    }
  } catch (e) {
    print('Erro: Por favor, digite valores válidos.');
    print('- Altura: número decimal (ex: 1.75)');
    print('- Sexo: 1 ou 2');
  }
}
