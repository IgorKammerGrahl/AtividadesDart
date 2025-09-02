import 'dart:io';

void main() {
  try {
    print('Digite o primeiro número inteiro:');
    String? entradaPrimeiro = stdin.readLineSync();
    int primeiroNumero = int.parse(entradaPrimeiro!);

    print('Digite o segundo número inteiro:');
    String? entradaSegundo = stdin.readLineSync();
    int segundoNumero = int.parse(entradaSegundo!);

    print('Digite o terceiro número (real):');
    String? entradaTerceiro = stdin.readLineSync();
    double terceiroNumero = double.parse(entradaTerceiro!);

    double dobroPrimeiro = primeiroNumero * 2;
    double metadeSegundo = segundoNumero / 2;
    double produtoA = dobroPrimeiro * metadeSegundo;

    double triploPrimeiro = primeiroNumero * 3;
    double somaB = triploPrimeiro + terceiroNumero;

    print('\n=== NÚMEROS INFORMADOS ===');
    print('Primeiro número (inteiro): $primeiroNumero');
    print('Segundo número (inteiro): $segundoNumero');
    print('Terceiro número (real): ${terceiroNumero.toStringAsFixed(2)}');

    print('\n=== CÁLCULOS REALIZADOS ===');

    print('\na) Produto do dobro do primeiro com metade do segundo:');
    print(
      '   Dobro do primeiro: $primeiroNumero × 2 = ${dobroPrimeiro.toStringAsFixed(0)}',
    );
    print(
      '   Metade do segundo: $segundoNumero ÷ 2 = ${metadeSegundo.toStringAsFixed(1)}',
    );
    print(
      '   Produto: ${dobroPrimeiro.toStringAsFixed(0)} × ${metadeSegundo.toStringAsFixed(1)} = ${produtoA.toStringAsFixed(2)}',
    );

    print('\nb) Soma do triplo do primeiro com o terceiro:');
    print(
      '   Triplo do primeiro: $primeiroNumero × 3 = ${triploPrimeiro.toStringAsFixed(0)}',
    );
    print(
      '   Soma: ${triploPrimeiro.toStringAsFixed(0)} + ${terceiroNumero.toStringAsFixed(2)} = ${somaB.toStringAsFixed(2)}',
    );

    print('\n=== RESULTADOS FINAIS ===');
    print('a) ${produtoA.toStringAsFixed(2)}');
    print('b) ${somaB.toStringAsFixed(2)}');
  } catch (e) {
    print('Erro: Por favor, digite os números no formato correto.');
    print('- Para números inteiros: digite apenas números sem decimais');
    print('- Para números reais: use ponto (.) para separar decimais');
    print('Exemplo: 5, 10, 3.14');
  }
}
