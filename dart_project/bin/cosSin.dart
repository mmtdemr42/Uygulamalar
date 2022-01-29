import 'dart:io';

void main(List<String> args) {
  print("X DEĞERİ GİRİNİZ: ");
  int x = int.parse(stdin.readLineSync()!);
  print("Adım sayısını DEĞERİ GİRİNİZ: ");
  int adim = int.parse(stdin.readLineSync()!);
  print("Sin ya da cos DEĞERİ GİRİNİZ: ");
  String sincCos = stdin.readLineSync()!;

  if (sincCos == "sin") {
    sin(x, adim);
  } else {
    cos(x, adim);
  }
}

double? sin(int x, int adim) {
  double deger;

  deger = x ;



  return deger;
}

double? cos(int x, int adim) {
  double deger;

  return deger;
}

int faktoriyel {
  
}