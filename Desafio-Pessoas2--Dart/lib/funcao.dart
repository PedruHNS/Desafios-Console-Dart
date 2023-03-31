import 'dart:io';

import 'package:desafio/classe.dart';

String input({required String mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

void exibirMapa(Map<String, dynamic> pessoa) {
  pessoa.forEach((key, value) => print("$key $value"));
}

void idade50pesoInferior60(Map<String, dynamic> pessoa) {
  int contPessoasAcima50Abaixo60kg = 0;

  pessoa.forEach((key, value) {
    if (pessoa[key]["idade"] > 50 && pessoa[key]["peso"] < 60.00) {
      contPessoasAcima50Abaixo60kg++;
    }
  });

  print(
      "pessoas com mais de 50 anos e  peso inferior a 60kg: $contPessoasAcima50Abaixo60kg");
}

void percentAltura(Map<String, dynamic> pessoa) {
  int contPessoaBaixa = 0;
  int total = pessoa.length;

  pessoa.forEach((key, value) {
    if (pessoa[key]["altura"] < 1.50) {
      contPessoaBaixa++;
    }
  });
  print(
      "percentual de pessoas com menos de 1.50 de altura: ${contPessoaBaixa / total * 100}%");
}

void percentOlhos(Map<String, dynamic> pessoa) {
  int contPreto = 0,
      contCastanho = 0,
      contAzul = 0,
      contVerde = 0,
      contErro = 0,
      total = pessoa.length;
  pessoa.forEach(
    (key, value) {
      switch (pessoa[key]["olhos"]) {
        case Olho.preto:
          contPreto++;
          break;
        case Olho.castanho:
          contCastanho++;
          break;
        case Olho.azul:
          contAzul++;
          break;
        case Olho.verde:
          contVerde++;
          break;
        default:
          contErro++;
          break;
      }
    },
  );

  print("porcentagem de pessoa com olhos azuis: ${contAzul / total * 100}%\n"
      "porcentagem de pessoa com olhos Pretos: ${contPreto / total * 100}%\n"
      "porcentagem de pessoa com olhos Castanhos: ${contCastanho / total * 100}%\n"
      "porcentagem de pessoa com olhos Verde: ${contVerde / total * 100}%\n"
      "percentual de olhos não identificados: ${contErro / total * 100}%\n");
}

void ruivasNaoAzul(Map<String, dynamic> pessoa) {
  int contRuivo = 0;
  pessoa.forEach(
    (key, value) {
      if (pessoa[key]["cabelo"] == Cabelo.ruivo &&
          pessoa[key]["olhos"] != Olho.azul) {
        contRuivo++;
      }
    },
  );
  print("pessoas ruivas que não possuem olhos azuis: $contRuivo");
}
