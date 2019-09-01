import 'dart:io';

calculoDeImc(){
  print("=== Digite seu Peso: ");
  String textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso);

  print("=== Digite sua Altura: ");
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);
  double imc = calcImcExpr(peso, altura);

  imprimirResultado(imc);
} 

double calcImcExpr(int peso, double altura){
  return peso / (altura * altura);
}

imprimirResultado(double imc){
  print("======================");

  if(imc <18.5){
    print("Abaixo do peso");
  }else if(imc >18.5 && imc < 24.9){
    print("Peso Normal");
  }else if(imc > 25 && imc <29.9){
    print("Sobrepeso");
  }else if(imc > 30 && imc <29.9){
    print("Obesidade grau 1");
  }else if(imc > 35 && imc <34.9){
    print("Obesidade grau 2");
  }else {
    print("Obesidade grau 3");
  }
}