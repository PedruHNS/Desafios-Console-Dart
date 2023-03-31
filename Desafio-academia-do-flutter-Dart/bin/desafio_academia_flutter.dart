

void main() {
  final List<String> pacientes = [
    "Pedro Henrique|23|estudante|RJ",
    "Sidcley Lucas|35|suporte|RJ",
    "Sirlange Cristina|28|Asb|RJ",
    "Adailson Pereira|22|desenvolvedor|PR",
    "Renata alves|37|secretaria|SP",
    "Mateus Siqueira|12|Estudante|SP",
    "Camille Siqueira|30|estudante|SP"
  ];
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  print("----pacientes com mais de 20 anos-----");
  //fazemos o for in para percorrer a lista
  for (String paciente in pacientes) {
    // aqui estamos pegando a String e quebrando ela no "|"
    final List<String> pacienteDados = paciente.split("|");
    final idade = int.parse(pacienteDados[1]);

    if (idade > 20) {
      print("nome: ${pacienteDados[0]} idade: $idade");
    }
  }
  print("------------------------------");
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, Asb, secretária)
  print("----qtd de profissoes entre os pacientes-----");
  List<String> dev = [], estudante = [], asb = [], secretaria = [];
  for (String paciente in pacientes) {
    final List<String> pacienteDados = paciente.split("|");
    final profissao = pacienteDados[2].toLowerCase();
    if (profissao == "desenvolvedor") {
      dev.add(pacienteDados.first);
    }

    if (profissao == "estudante") {
      estudante.add(pacienteDados.first);
    }
    if (profissao == "asb") {
      asb.add(pacienteDados.first);
    }
    if (profissao == "secretaria") {
      secretaria.add(pacienteDados.first);
    }
  }

  print("desenvolvedores: $dev: total dev = ${dev.length}\n"
      "estudantes: $estudante: total estudante = ${estudante.length}\n"
      "asb: $asb: total asb = ${asb.length} \n"
      "secretaria: $secretaria: total secretaria = ${secretaria.length}\n"
      "total de Pacientes: ${pacientes.length}");
  print("------------------------------");
  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print("---Pessoa que moram no Estado de São Paulo---");
  List<String> estadoSp = [];
  for (String paciente in pacientes) {
    final List<String> pacienteDados = paciente.split("|");
    final estado = pacienteDados.last.toLowerCase();
    if (estado == "sp") {
      estadoSp.add(pacienteDados.first);
    }
  }
  print("lista de pessoa que moram em São Paulo:\n"
      "$estadoSp: ${estadoSp.length} pessoas");
}
