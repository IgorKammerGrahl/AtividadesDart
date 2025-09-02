import 'dart:io';

void main() {
  try {
    print('Digite a temperatura em graus Fahrenheit (°F):');
    String? entradaFahrenheit = stdin.readLineSync();
    double fahrenheit = double.parse(entradaFahrenheit!);

    double celsius = (5 * (fahrenheit - 32)) / 9;

    print('\n=== CONVERSÃO DE TEMPERATURA ===');
    print('Temperatura em Fahrenheit: ${fahrenheit.toStringAsFixed(2)}°F');
    print('Temperatura em Celsius: ${celsius.toStringAsFixed(2)}°C');

    print('\nCálculo realizado:');
    print('Fórmula: C = (5 × (F - 32)) ÷ 9');
    print(
      'Substituindo: C = (5 × (${fahrenheit.toStringAsFixed(2)} - 32)) ÷ 9',
    );
    print('Resolvendo: C = (5 × ${(fahrenheit - 32).toStringAsFixed(2)}) ÷ 9');
    print('Calculando: C = ${(5 * (fahrenheit - 32)).toStringAsFixed(2)} ÷ 9');
    print('Resultado: C = ${celsius.toStringAsFixed(2)}°C');

    print('\n=== REFERÊNCIAS ===');
    if (celsius <= 0) {
      print('Ponto de congelamento da água ou abaixo');
    } else if (celsius >= 100) {
      print('Ponto de ebulição da água ou acima');
    } else if (celsius >= 35) {
      print('Temperatura muito quente');
    } else if (celsius >= 25) {
      print('Temperatura quente');
    } else if (celsius >= 18) {
      print('Temperatura agradável');
    } else if (celsius >= 10) {
      print('Temperatura fresca');
    } else {
      print('Temperatura fria');
    }
  } catch (e) {
    print('Erro: Por favor, digite um número válido.');
    print('Use ponto (.) para separar decimais, se necessário.');
    print('Exemplo: 98.6 ou -40');
  }
}
