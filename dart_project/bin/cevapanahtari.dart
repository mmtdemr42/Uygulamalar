void main(List<String> args) {
  cevap();
}

void cevap() {
  List cevap = ["a", "b", "", "a", "c", "e", "b"];
  List cevapAnahtari = ["a", "b", "c", "b", "c", "e", "d"];
  int dogrisoru = 0, yanlisSayisi = 0, bossori = 0;

  for (int i = 0; i < cevap.length - 1; i++) {
    if (cevap[i] == cevapAnahtari[i]) {
      dogrisoru++;
    } else if (cevap[i] == " " || cevap[i] == "") {
      bossori++;
    } else {
      yanlisSayisi++;
    }
  }

  print(
      "Net sayınız: ${dogrisoru - yanlisSayisi / 4}, Boş soru sayısı: ${bossori}");
}
