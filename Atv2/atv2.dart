import 'dart:io';

class PesquisaIdades {
  int menores21 = 0;
  int maiores50 = 0;

  void adicionarIdade(int idade) {
    if (idade < 0 || idade > 140) {
      print("Idade inválida. Deve estar entre 0 e 140 anos.");
      return;
    }
    if (idade < 21) {
      menores21++;
    } else if (idade > 50) {
      maiores50++;
    }
  }

  void mostrarResultado() {
    print("\n--- RESULTADO ---");
    print("Total de pessoas com menos de 21 anos: $menores21");
    print("Total de pessoas com mais de 50 anos: $maiores50");
  }
}

void main() {
  PesquisaIdades pesquisa = PesquisaIdades();

  while (true) {
    stdout.write("Digite a idade da pessoa (-1 para encerrar): ");
    int idade = int.parse(stdin.readLineSync()!);

    if (idade == -1) break;

    pesquisa.adicionarIdade(idade);
  }

  pesquisa.mostrarResultado();
}
