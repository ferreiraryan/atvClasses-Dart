//  Atividade 1
class Pessoa {
  final String nome;
  late int _idade;

  Pessoa(this.nome, this._idade);

  void setIdade(int idade) {
    if (idade > 0) {
      _idade = idade;
    }
  }

  int getIdade() {
    return _idade;
  }

  void exibirDados() {
    print('O nome é: $nome, e a idade é: $_idade');
  }
}

class Carro {
  final String marca;
  final String modelo;
  late int _preco;

  Carro(this.marca, this.modelo, this._preco);

  void setPreco(int preco) {
    if (preco > 0) {
      _preco = preco;
    }
  }

  int getPreco() {
    return _preco;
  }

  void exibirDados() {
    print('A marca é: $marca, o modelo é: $modelo e o preco é: $_preco');
  }
}

class ContaBancaria {
  final String titular;
  late double _saldo;

  ContaBancaria(this.titular, this._saldo);

  void depositar(double valor) {
    _saldo += valor;
  }

  void sacar(double valor) {
    if (_saldo < 0) {
      _saldo -= valor;
    }
  }

  double getSaldo() {
    return _saldo;
  }
}

class Aluno {
  final String nome;
  final double _nota1;
  final double _nota2;

  Aluno(this.nome, this._nota1, this._nota2);

  double calcularMedia() {
    return (_nota1 * _nota2) / 2;
  }

  String verificarAprovacao() {
    if (calcularMedia() > 7) {
      return "Aprovado";
    } else {
      return "Reprovado";
    }
  }
}

class Produto {
  final String nome;
  final double _preco;

  Produto(this.nome, this._preco);

  Produto.desconto(this.nome, double precoOriginal, double desconto)
      : _preco = precoOriginal - (precoOriginal * (desconto / 100));

  double get preco => _preco;
}

class Funcionario {
  final String nome;
  late double _salario;

  Funcionario(this.nome, this._salario);

  double get salario => _salario;

  void aumentarSalario(double percentual) {
    if (percentual > 0) {
      _salario += _salario * (percentual / 100);
    }
  }
}

class Cadastro {
  late List<Pessoa> pessoas = [];

  void adicionarPessoa(Pessoa p) {
    pessoas.add(p);
  }

  void listarPessoas() {
    if (pessoas.isEmpty) {
      print('\nNenhuma pessoa cadastrada.');
    } else {
      for (var pessoa in pessoas) {
        print(pessoa);
      }
    }
  }
}

void main() {
  // Pessoa p1 = Pessoa("Ryan", 18);
  // p1.exibirDados();
  // p1.setIdade(20);
  // p1.exibirDados();

  // Carro c1 = Carro("AAA", "BBBBB", 2000);
  // c1.exibirDados();
  // c1.setPreco(50000);
  // c1.exibirDados();

  // ContaBancaria cb1 = ContaBancaria("Ryan", 2000.00);
  // print(cb1.getSaldo());
  // cb1.depositar(200);
  // print(cb1.getSaldo());
  // cb1.sacar(200);
  // print(cb1.getSaldo());

  // Aluno a = Aluno("Ryan", 10, 4);
  // a.calcularMedia();
  // print(a.verificarAprovacao());

  // var produto1 = Produto("Notebook", 3500.00);
  // print("Produto: ${produto1.nome}, Preço: ${produto1.preco}");
  // var produto2 = Produto.desconto("Smartphone", 2000.00, 10);
  // print("Produto: ${produto2.nome}, Preço com desconto: ${produto2.preco}");

  // Funcionario funcionario = Funcionario("João", 3000.0);
  // print(funcionario.salario);
  // funcionario.aumentarSalario(10);
  // print(funcionario.salario);
}
