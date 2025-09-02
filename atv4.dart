import 'dart:io';

void main() {
  try {
    print('Digite a primeira nota (peso 2):');
    String? entradaNota1 = stdin.readLineSync();
    double nota1 = double.parse(entradaNota1!);

    print('Digite a segunda nota (peso 3):');
    String? entradaNota2 = stdin.readLineSync();
    double nota2 = double.parse(entradaNota2!);

    print('Digite a terceira nota (peso 5):');
    String? entradaNota3 = stdin.readLineSync();
    double nota3 = double.parse(entradaNota3!);

    if (nota1 < 0 ||
        nota1 > 10 ||
        nota2 < 0 ||
        nota2 > 10 ||
        nota3 < 0 ||
        nota3 > 10) {
      print('Erro: As notas devem estar entre 0 e 10.');
      return;
    }

    int peso1 = 2;
    int peso2 = 3;
    int peso3 = 5;
    int somaPesos = peso1 + peso2 + peso3; // 10

    double mediaFinal =
        (nota1 * peso1 + nota2 * peso2 + nota3 * peso3) / somaPesos;

    print('\n=== CÁLCULO DA MÉDIA PONDERADA ===');
    print('Nota 1 (peso $peso1): ${nota1.toStringAsFixed(2)}');
    print('Nota 2 (peso $peso2): ${nota2.toStringAsFixed(2)}');
    print('Nota 3 (peso $peso3): ${nota3.toStringAsFixed(2)}');
    print('\nCálculo:');
    print(
      '(${nota1.toStringAsFixed(2)} × $peso1) + (${nota2.toStringAsFixed(2)} × $peso2) + (${nota3.toStringAsFixed(2)} × $peso3) ÷ $somaPesos',
    );
    print(
      '(${(nota1 * peso1).toStringAsFixed(2)}) + (${(nota2 * peso2).toStringAsFixed(2)}) + (${(nota3 * peso3).toStringAsFixed(2)}) ÷ $somaPesos',
    );
    print(
      '${(nota1 * peso1 + nota2 * peso2 + nota3 * peso3).toStringAsFixed(2)} ÷ $somaPesos',
    );
    print('\nMédia final: ${mediaFinal.toStringAsFixed(2)}');

    if (mediaFinal >= 7.0) {
      print('Situação: APROVADO');
    } else if (mediaFinal >= 5.0) {
      print('Situação: RECUPERAÇÃO');
    } else {
      print('Situação: REPROVADO');
    }
  } catch (e) {
    print('Erro: Por favor, digite apenas números válidos.');
    print('Use ponto (.) para separar decimais, se necessário.');
  }
}
