import 'dart:math';

void main(List<String> args) {
  rastgeleDegerUret();
  oyOraniHesapla();
}

int aPartisi = 0;
int bPartisi = 0;

int cPartisi = 0;

int? rastgeleDegerUret() {
  sayac = 100;
  while (sayac != 0) {
    int random = Random().nextInt(3);
    if (random == 0) {
      aPartisi += 1;
    } else if (random == 1) {
      bPartisi += 1;
    } else if (random == 2) {
      cPartisi += 1;
    }
    sayac--;
  }
}

double? oyOraniHesapla() {
  print("A partisi oy oranı: %${(aPartisi / 100) * 100}");
  print("B partisi oy oranı: %${(bPartisi / 100) * 100}");
  print("C partisi oy oranı: %${(cPartisi / 100) * 100}");
}
