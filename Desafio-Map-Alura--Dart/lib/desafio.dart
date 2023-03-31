void main() {
  Pessoa pessoa1 = Pessoa(
    nome: "Pedro",
    idade: 23,
    estaAutenticada: true,
  );

  print(pessoa1.mapa());
}

class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(
      {required this.nome, required this.idade, required this.estaAutenticada});

  Map<String, dynamic> mapa() {
    Map<String, dynamic> resultado = {};
    resultado["nome"] = nome;
    resultado["idade"] = idade;
    resultado["estaAutenticada"] = estaAutenticada;

    return resultado;
  }
}
