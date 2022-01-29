import 'dart:io';
import 'dart:math';

int hata = 3;
void main(List<String> args) {


  harfatama(rastgelekelime());


}

String rastgelekelime() {
  List<String> kelime = ["aydinlik", "karanlik", "birgece"];
  var random = new Random();
  int a = random.nextInt(kelime.length);
  print(kelime[a]);
  return kelime[a];
}

void harfatama(String kelime) {
  List harfler = [];

  for (int j = 0; j < kelime.length; j++) {
    harfler.add(kelime[j]);
  }


  while(hata > 0) {
    print("Bir harf giriniz.");
    var s = stdin.readLineSync();
    String harftahmini = s![0];


    List  karsi =harfler.toList();
    print(karsi);
    karsi.replaceRange(0,1, ["*"]);
    print(harfler);
    print(karsi);


    for (int i = 0; i < karsi.length; i++)
    {
      if (harfler[i] == harftahmini)
      {
        karsi[i] = harftahmini;
      }
      else
      {
        karsi[i] = "*";
      }
     }

    var temp = "";
    for (var a in karsi) {
      temp += a;
    }
    print(temp);

  if (karsi.every((e) => e.startsWith('*'))){ // listeadi.every((e) => e.startWith(aranmakistenendeğer)) => aranan değerin bütün listede olup olmadığına bakar ve duruma göre true ya da false deper döner
    hata -=1;
  }
  }
}




