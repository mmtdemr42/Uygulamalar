import 'dart:io';

int? i;
void main(List<String> args) {
  print("Kaç Tane işlem yapmak istiyorsunuz: ");
  i = int.parse(stdin.readLineSync()!);
  islem();
}

void islem() {
  while (i! > 0) {
    print(
        "*********************** MENÜ ***********************\n1- Ardışık sayılarda kare toplamı\n2- n sayısının 5 katı\n3-Çıkış");
    print("Hangi işlemi yapmak istersiniz?");
    String? result = stdin.readLineSync();

    if (result == "1") {
      print("Bir n değeri giriniz.");
      double n = double.parse(stdin.readLineSync()!);
      print((n * (n + 1) * (2 * n + 1)) / 6);
    } else if (result == "2") {
      print("Bir n değeri giriniz.");
      double n = double.parse(stdin.readLineSync()!);
      print(n * 5);
    } else if (result == "3") {
      print("Programdan çıkılıyor...");
      break;
    } else {
      print("Yanlış bir seçim yaptınız tekrar deneyiniz.");
    }
    i = i! - 1;

    if (i == 0) {
      print("Devam etmek ister misiniz(e/h)");
      String? devam = stdin.readLineSync();

      if (devam == "e") {
        print("Kalan işlem sayısı:");
        // ignore: unused_local_variable
        i = int.parse(stdin.readLineSync()!);
        islem();
      }
    }
  }
}
