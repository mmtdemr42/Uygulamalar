import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  diziyiSolaKaydir();
}

List dizi = [];
int? diziyiSolaKaydir() {
  List diziSol = [];
  diziyiDoldur();
  print("Bir n değeri giriniz");
  int n = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < n; i++) {
    diziSol.add(Random().nextInt(101));
  }
  print(diziSol);
  diziSol.addAll(dizi);
  print(diziSol);
  print(diziSol.length);
}

int? diziyiDoldur() {
  for (var i = 0; i < 100; i++) {
    dizi.add(Random().nextInt(101));
  }
}
