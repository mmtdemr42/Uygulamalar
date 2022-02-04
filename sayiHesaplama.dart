import 'dart:io';

void main(List<String> args) {
  tekrarSayisiHesaplama();
  buyukMu();
}

List dizi = [];

int? tekrarSayisiHesaplama() {
  int sayi;
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
      }
    }
    if (tekrar > 1) {
      print("$i değeri $tekrar defa tekrar etmiştir.");
    }
    tekrar = 0;
  }
  print("Girilen sayı adedi: ${dizi.length}");
}

double ortalama1 = 0;

double ortalama() {
  for (var i = 0; i < dizi.length; i++) {
    ortalama1 += dizi[i];
  }
  return ortalama1 / dizi.length;
}

int tekrar = 0;
int sayac = 0;

double? buyukMu() {
  double ortalamaSayi = ortalama();
  print("Ortalama: $ortalamaSayi");
  for (var i = 0; i < dizi.length; i++) {
    if (dizi[i] > ortalamaSayi) {
      tekrar++;
    } else {
      sayac++;
    }
  }
  print("Ortalamadan Büyük olan sayılar: $tekrar");
  print("Ortalamadan Küçük olan sayılar: $sayac");
  sayac = 0;
  tekrar = 0;
}
