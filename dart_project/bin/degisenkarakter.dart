import 'dart:io';

void main(List<String> args) {
  degisenKarakter();
}

void degisenKarakter() {
  String cumle = stdin.readLineSync()!;
  String kelime = "";
  for (int i = 0; i < cumle.length; i++) {
    //if (cumle[i] == "€") {
    if (cumle[i] == String.fromCharCode(8364)) {

      print(cumle[i]);
      kelime += "e";
    } else {
      print(cumle[i]);
      kelime += cumle[i];
    }
  }
  print(kelime);
}
