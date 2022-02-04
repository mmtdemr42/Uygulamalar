import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  harfGosterme();
}

List kelime = ["mehmet"];

String rastgeleKelime() {
  int random = Random().nextInt(kelime.length);
  return kelime[random];
}

String yildizlama(String kelime1) {
  String temp = "";
  for (var i = 0; i < kelime1.length; i++) {
    temp += "*";
  }
  return temp;
}

String? harfGosterme() {
  String kelime1 = rastgeleKelime();
  String yildizliKelime = yildizlama(kelime1);
  String temp = "";
  for (var i = 0; i < kelime1.length; i++) {
    temp = yildizliKelime[i];
  }
  int hak = kelime1.length - 2;

  while (hak != 0) {
    print("Tahmininizi giriniz: ");
    String tahmin = stdin.readLineSync()!;
    for (var i = 0; i < kelime1.length; i++) {
      if (kelime1[i] == tahmin) {
        temp += tahmin;
      }
    }

    print(temp);

    hak--;
  }

  int tekrar = 0;
  for (var i = 0; i < temp.length; i++) {
    if (temp[i] != "*") {
      tekrar++;
    }
  }

  if (temp.length != tekrar) {
    print("Kaybettiniz");
  } else {
    print("Kazandınız");
  }
}
