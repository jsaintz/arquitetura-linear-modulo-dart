import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

cadastrarPessoa() {
  bool condicao = true;
  limpaTerminal();
  
  while (condicao) {
    print("=== Digite um comando ===");
    String comando = stdin.readLineSync();

    if (comando == "sair") {
      print("=== Programa Finalizado ===");
      condicao = false;
    } else if (comando == "cadastro") {
      limpaTerminal();
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print("=== Esse Comando não existe===");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("=== Digite seu nome ===");
  cadastro["nome"] = stdin.readLineSync();

  print("=== Digite sua idade ===");
  cadastro["idade"] = stdin.readLineSync();

  print("=== Digite sua cidade ===");
  cadastro["cidade"] = stdin.readLineSync();

  print("=== Digite sua estado ===");
  cadastro["estado"] = stdin.readLineSync();
  cadastros.add(cadastro);
}

limpaTerminal() {
  print("\x1B[2J\x1B[0;0H");
}
