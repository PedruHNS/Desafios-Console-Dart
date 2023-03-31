import 'package:desafio/classe.dart';
import 'package:desafio/funcao.dart';

void main() {
  Map<String, dynamic> grupo = {};
  int cont = int.parse(input(mensagem: "deseja cadastrar quantas pessoas?"));
  for (int i = 0; i < cont; i++) {
    String chave = input(mensagem: "qual o nome?");

    Pessoa pessoa = Pessoa(
      idade: int.parse(input(mensagem: "qual idade?")),
      peso: double.parse(input(mensagem: "qual peso?")),
      altura: double.parse(input(mensagem: "qual altura?")),
      olho: olhos(input(mensagem: "qual cor dos olhos?").toLowerCase()),
      cabelo: cabelos(input(mensagem: "qual a cor do cabelo?").toLowerCase()),
    );

    grupo[chave] = {
      "idade": pessoa.idade,
      "peso": pessoa.peso,
      "altura": pessoa.altura,
      "olhos": pessoa.olho,
      "cabelo": pessoa.cabelo
    };
  }
  print("----------Lista---------");
  exibirMapa(grupo);
  print("total cadastrados: ${grupo.length}");
  print("-------Questão1--------");
  percentAltura(grupo);
  print("-------Questão2--------");
  idade50pesoInferior60(grupo);
  print("-------Questão3--------");
  percentOlhos(grupo);
  print("------Questão4----------");
  ruivasNaoAzul(grupo);
}
