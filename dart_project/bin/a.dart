void main(List<String> args) {
  int a = 2;
  int b = 3;
  var meyveler = [];
  meyveler.add("elma");
  meyveler.add("armut");
  var sebzeler = [];
  sebzeler.add("pırasa");
  sebzeler.add("karnabahar");
  b = a;
  a = 5;
  meyveler = sebzeler;
  meyveler[0] = "muz";
  print(b);
  print(sebzeler[0]);
}
