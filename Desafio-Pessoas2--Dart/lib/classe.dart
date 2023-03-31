enum Olho {
  azul,
  preto,
  verde,
  castanho,
  invalido,
}

Olho olhos(String cor) {
  switch (cor) {
    case "a": return Olho.azul;
    case "p": return Olho.preto;
    case "v": return Olho.verde;
    case "c": return Olho.castanho;
    default: return Olho.invalido;
  }
}

enum Cabelo {
  preto,
  castanho,
  loiro,
  ruivo,
  invalido,
}

Cabelo cabelos(String cor) {
  switch (cor) {
    case "p": return Cabelo.preto;
    case "c": return Cabelo.castanho;
    case "l": return Cabelo.loiro;
    case "r": return Cabelo.ruivo;
    default: return Cabelo.invalido;
  }
}

class Pessoa {
  int idade;
  double peso;
  double altura;
  Olho olho;
  Cabelo cabelo;

  Pessoa({
    required this.idade,
    required this.peso,
    required this.altura,
    required this.olho,
    required this.cabelo,
  });
}
