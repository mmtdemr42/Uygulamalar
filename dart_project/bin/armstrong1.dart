import 'dart:io';

import 'dart:math';

void main(List<String> args) {
  fonk();
}

int sayi = int.parse(stdin.readLineSync()!);
int sayiuzunluk = sayi.toString().length;
num sonuc = 0;

int temp = 0;

int? fonk() {
  temp = sayi;
  while (temp > 0) {
    sonuc += pow(temp % 10, sayiuzunluk);
    temp ~/= 10;
  }
  if (sayi == sonuc) {
    print("${sayi} sayısı Armgront sayıdır.");
  } else {
    print("${sayi} sayısı Armstrong sayı değildir.");
  }
}
