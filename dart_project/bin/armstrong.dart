import 'dart:io';

void main(List<String> args) {
  print("Bir sayı değeri giriniz: ");
  basamakdegeribulma();
}

int sayi = int.parse(stdin.readLineSync()!);
int sayiuzunluk = sayi.toString().length;
//armstrog sayı

int? basamakdegeribulma() {
  /*
    //for döngüsü ile bulmalı
    //basmak kavramı sadece üç olan değil basamak kavramına göre sayısı basamaklara ayırsın
    // temp ve while döngüsü kullanarak yapmaya çalış
    for(int i=1; i< sayiuzunluk;i++){
    }
    */

  int a = ((sayi ~/ 10) ~/ 10);
  int b = ((sayi ~/ 10) % 10);
  int c = sayi % 10;

  if ((ustalma(a)! + ustalma(b)! + ustalma(c)!) == sayi) {
    print("${sayi} sayısı Armgront sayıdır.");
  } else {
    print("${sayi} sayısı Armstrong sayı değildir.");
  }
}

int? ustalma(int sayi1) {
  int sonuc = 1;
  for (int i = 0; i < sayiuzunluk; i++) {
    sonuc = sonuc * sayi1;
  }
  return sonuc;
}
