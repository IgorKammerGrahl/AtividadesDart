import 'dart:io';

void main() {
  try {
    print('Digite o número total de eleitores do município:');
    String? entradaEleitores = stdin.readLineSync();
    int totalEleitores = int.parse(entradaEleitores!);

    print('Digite o número de votos brancos:');
    String? entradaBrancos = stdin.readLineSync();
    int votosBrancos = int.parse(entradaBrancos!);

    print('Digite o número de votos nulos:');
    String? entradaNulos = stdin.readLineSync();
    int votosNulos = int.parse(entradaNulos!);

    print('Digite o número de votos válidos:');
    String? entradaValidos = stdin.readLineSync();
    int votosValidos = int.parse(entradaValidos!);

    int totalVotos = votosBrancos + votosNulos + votosValidos;

    if (totalVotos > totalEleitores) {
      print(
        'Erro: O total de votos ($totalVotos) não pode ser maior que o total de eleitores ($totalEleitores).',
      );
      return;
    }

    double percentualBrancos = (votosBrancos / totalEleitores) * 100;
    double percentualNulos = (votosNulos / totalEleitores) * 100;
    double percentualValidos = (votosValidos / totalEleitores) * 100;
    double percentualAbstencoes =
        ((totalEleitores - totalVotos) / totalEleitores) * 100;

    print('\n=== RELATÓRIO DE VOTAÇÃO ===');
    print('Total de eleitores: $totalEleitores');
    print('Total de votos computados: $totalVotos');
    print('Abstenções: ${totalEleitores - totalVotos}');
    print('\n=== PERCENTUAIS ===');
    print(
      'Votos brancos: $votosBrancos (${percentualBrancos.toStringAsFixed(2)}%)',
    );
    print('Votos nulos: $votosNulos (${percentualNulos.toStringAsFixed(2)}%)');
    print(
      'Votos válidos: $votosValidos (${percentualValidos.toStringAsFixed(2)}%)',
    );
    print(
      'Abstenções: ${totalEleitores - totalVotos} (${percentualAbstencoes.toStringAsFixed(2)}%)',
    );

    double somaPercentuais =
        percentualBrancos +
        percentualNulos +
        percentualValidos +
        percentualAbstencoes;
    print(
      '\nVerificação: Soma dos percentuais = ${somaPercentuais.toStringAsFixed(2)}%',
    );
  } catch (e) {
    print('Erro: Por favor, digite apenas números inteiros válidos.');
  }
}
