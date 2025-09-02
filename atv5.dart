import 'dart:io';

void main() {
  try {
    print('Digite o nome do aluno:');
    String? nomeAluno = stdin.readLineSync();

    if (nomeAluno == null || nomeAluno.trim().isEmpty) {
      print('Erro: Nome do aluno não pode estar vazio.');
      return;
    }

    List<double> notas = [];
    List<double> pesos = [];

    for (int i = 1; i <= 4; i++) {
      print('Digite a ${i}ª nota:');
      String? entradaNota = stdin.readLineSync();
      double nota = double.parse(entradaNota!);

      if (nota < 0 || nota > 10) {
        print('Erro: A nota deve estar entre 0 e 10.');
        return;
      }

      notas.add(nota);
    }

    for (int i = 1; i <= 4; i++) {
      print('Digite o peso da ${i}ª nota:');
      String? entradaPeso = stdin.readLineSync();
      double peso = double.parse(entradaPeso!);

      if (peso <= 0) {
        print('Erro: O peso deve ser um valor positivo.');
        return;
      }

      pesos.add(peso);
    }

    double somaProdutos = 0;
    for (int i = 0; i < 4; i++) {
      somaProdutos += notas[i] * pesos[i];
    }

    double somaPesos = 0;
    for (double peso in pesos) {
      somaPesos += peso;
    }

    double mediaFinal = somaProdutos / somaPesos;

    print('\n=== RELATÓRIO DE NOTAS - ${nomeAluno.toUpperCase()} ===');
    print('Notas e pesos:');
    for (int i = 0; i < 4; i++) {
      print(
        '  ${i + 1}ª nota: ${notas[i].toStringAsFixed(2)} (peso: ${pesos[i].toStringAsFixed(1)})',
      );
    }

    print('\nCálculo da média ponderada:');
    print('Fórmula: (n1×p1 + n2×p2 + n3×p3 + n4×p4) ÷ (p1+p2+p3+p4)');

    String calculo = '';
    for (int i = 0; i < 4; i++) {
      if (i > 0) calculo += ' + ';
      calculo +=
          '(${notas[i].toStringAsFixed(2)}×${pesos[i].toStringAsFixed(1)})';
    }
    calculo += ' ÷ ${somaPesos.toStringAsFixed(1)}';
    print('Substituindo: $calculo');

    String produtos = '';
    for (int i = 0; i < 4; i++) {
      if (i > 0) produtos += ' + ';
      produtos += '${(notas[i] * pesos[i]).toStringAsFixed(2)}';
    }
    produtos += ' ÷ ${somaPesos.toStringAsFixed(1)}';
    print('Calculando: $produtos');
    print(
      'Resultado: ${somaProdutos.toStringAsFixed(2)} ÷ ${somaPesos.toStringAsFixed(1)}',
    );

    print('\nMÉDIA FINAL: ${mediaFinal.toStringAsFixed(2)}');

    String situacao;
    if (mediaFinal >= 7.0) {
      situacao = 'APROVADO';
    } else if (mediaFinal >= 5.0) {
      situacao = 'RECUPERAÇÃO';
    } else {
      situacao = 'REPROVADO';
    }
    print('Situação: $situacao');
  } catch (e) {
    print('Erro: Por favor, digite apenas números válidos.');
    print('Use ponto (.) para separar decimais, se necessário.');
  }
}
