
void main(List<String> args) {
  //int girilenSayi = int.parse(stdin.readLineSync()!);
  yazdir();
}

bool polindromeSayiMi(int sayi) {
  bool kontrol;
  for (var i = 0; i < sayi.toString().length; i++) {
    kontrol =
        sayi.toString()[i] == sayi.toString()[sayi.toString().length - 1 - i];
    if (!kontrol) {
      return false;
    }
  }
  return true;
}

bool asalSayiMi(int sayi) {
  int i = 2;
  while (i < sayi) {
    if (sayi % i == 0) {
      return false;
    }
    i++;
  }
  return true;
}

int terCevir(int sayi) {
  String tersSayi = "";
  for (var i = 0; i < sayi.toString().length; i++) {
    tersSayi += sayi.toString()[sayi.toString().length - i - 1];
  }
  return int.parse(tersSayi);
}

void yazdir() {
  List polindromikAsal = [];
  int ustSinir = 400;
  while (ustSinir != 0) {
    if (asalSayiMi(ustSinir) == true &&
        asalSayiMi(terCevir(ustSinir)) == true &&
        polindromeSayiMi(ustSinir) == false) {
      polindromikAsal.add(ustSinir);
    }
    ustSinir--;
  }
  print(polindromikAsal);
}
