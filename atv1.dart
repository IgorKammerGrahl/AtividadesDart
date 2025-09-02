import 'dart:io';

void main() {
  print('Digite um número:');

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    try {
      double numero = double.parse(entrada);

      double antecessor = numero - 1;

      print('O antecessor de $numero é $antecessor');
    } catch (e) {
      print('Erro: Por favor, digite um número válido.');
    }
  } else {
    print('Erro: Nenhuma entrada fornecida.');
  }
}
