import 'dart:io';

void main(List<String> args) {
  tekrarSayisiHesaplama();
}

int? tekrarSayisiHesaplama() {
  int sayi;
  List dizi = [];
  String islem;
  while (true) {
    print("1- Değer girmek\n2- Çıkış");
    print("Değer giriniz");
    islem = stdin.readLineSync()!;
    if (islem == "2") {
      break;
    } else if (islem == "1") {
      print("Sayı giriniz");
      sayi = int.parse(stdin.readLineSync()!);
      dizi.add(sayi);
      continue;
    } else {
      print("Yanlış değer girdiniz tekrar deneyiniz!");
    }
  }
  int tekrar = 0;
  for (var i = 0; i < 101; i++) {
    for (var j = 0; j < dizi.length; j++) {
      if (dizi[j] == i) {
        tekrar++;
        if (tekrar > 1) {
          print("$i değeri $tekrar defa tekrar etmiştir.");
        }
      }
    }
    tekrar = 0;
  }
}
