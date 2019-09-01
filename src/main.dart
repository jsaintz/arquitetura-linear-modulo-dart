import 'cadastro-pessoa.dart';
import 'calcula-imc.dart';
import 'calculo-idade.dart';
import 'carrinho-compras.dart';

main(List<String> arguments) {
  if(arguments[0] == "calculo-idade"){
  calculoIdade();
  }else if(arguments[0] == "carrinho-compras"){
    carrinhoCompras();
  }else if(arguments[0] == "calcula-imc"){
   calculoDeImc();
  }else if(arguments[0] == "cadastro-pessoa"){
   cadastrarPessoa();
  }else{
    print("Esse Programa não Existe");
  }
}
