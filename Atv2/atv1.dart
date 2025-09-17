import 'dart:io';

class Cliente {
  int numeroConta;
  String nome;
  double saldo;

  Cliente(this.numeroConta, this.nome, this.saldo);

  bool get saldoPositivo => saldo >= 0;

  void imprimirDados() {
    print(
      'Conta: $numeroConta | Nome: $nome | Saldo: R\$ ${saldo.toStringAsFixed(2)} | ${saldoPositivo ? "POSITIVO" : "NEGATIVO"}',
    );
  }
}

class Agencia {
  static const int limiteClientes = 10000;
  final List<Cliente> _clientes = [];

  void adicionarCliente(Cliente cliente) {
    if (_clientes.length < limiteClientes) {
      _clientes.add(cliente);
    } else {
      print("Limite máximo de clientes atingido!");
    }
  }

  void imprimirRelatorio() {
    print("\n--- RELATÓRIO DE CLIENTES ---");
    for (var cliente in _clientes) {
      cliente.imprimirDados();
    }

    int totalNegativos = _clientes.where((c) => !c.saldoPositivo).length;
    double saldoAgencia = _clientes.fold(0.0, (total, c) => total + c.saldo);

    print("\n--- RESUMO ---");
    print("Total de clientes: ${_clientes.length}");
    print("Clientes com saldo NEGATIVO: $totalNegativos");
    print("Saldo total da agência: R\$ ${saldoAgencia.toStringAsFixed(2)}");
  }
}

void main() {
  Agencia agencia = Agencia();

  while (true) {
    stdout.write("\nDigite o número da conta (-999 para sair): ");
    int numeroConta = int.parse(stdin.readLineSync()!);

    if (numeroConta == -999 ||
        agencia._clientes.length >= Agencia.limiteClientes) {
      break;
    }

    stdout.write("Digite o nome do cliente: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Digite o saldo do cliente: ");
    double saldo = double.parse(stdin.readLineSync()!);

    Cliente cliente = Cliente(numeroConta, nome, saldo);
    agencia.adicionarCliente(cliente);
  }

  agencia.imprimirRelatorio();
}
