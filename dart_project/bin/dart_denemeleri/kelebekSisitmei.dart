import 'dart:math';

import 'ogrenciler.dart';
import 'sinif.dart';

void main() {
  Ogrenciler ogrenciler = Ogrenciler();
  Sinif s = Sinif();
  var ogrenci = ogrenciler.ogrenci;
  var sinif = s.siniflar;

  for (var i = 0; i < sinif.length; i++) {
    sinif[i][1] *= 2;
  }

  List<bool> ogrencilerlist = [];
  var i = 0;
  /*var r = Random();
  int rr = r.nextInt(); */
  var ogrSayi = 0;
  for (var i = 0; i < ogrenci.length; i++) {
    for (var j = 0; j < ogrenci[i].length; j++) {
      ogrSayi++;
    }
  }
  print("ogr sayı $ogrSayi");
  //while (sinif[i][1] != 0) {}
}






//! sınıf adı,  sınıf sıra sayısı

