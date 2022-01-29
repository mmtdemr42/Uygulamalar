class Ogrenciler {
  List ogrenci = [
    [
      [590, "Ahmet Eren Tuğrul"],
      [592, "Alperen AYDIN"],
      [593, "Arda YILMAZ"],
      [594, "Ahmet ARAS"],
      [596, "Muhammet HALAK"]
    ],
    [
      [597, "BAhmet Eren Tuğrul"],
      [598, "BAlperen AYDIN"],
      [599, "BArda YILMAZ"],
      [600, "BAhmet ARAS"],
      [601, "BMuhammet HALAK"]
    ],
    [
      [602, "CAhmet Eren Tuğrul"],
      [603, "CAlperen AYDIN"],
      [604, "CArda YILMAZ"],
      [605, "CAhmet ARAS"],
      [606, "CMuhammet HALAK"]
    ]
  ];

  /* List sinifA = [
    {590: "Ahmet Eren Tuğrul"},
    {592: "Alperen AYDIN"},
    {593: "Arda YILMAZ"},
    {594: "Ahmet ARAS"},
    {596: "Muhammet HALAK"}
  ];
  List sinifB = [
    {597: "BAhmet Eren Tuğrul"},
    {598: "BAlperen AYDIN"},
    {599: "BArda YILMAZ"},
    {600: "BAhmet ARAS"},
    {601: "BMuhammet HALAK"}
  ];
  List sinifC = [
    {602: "CAhmet Eren Tuğrul"},
    {603: "CAlperen AYDIN"},
    {604: "CArda YILMAZ"},
    {605: "CAhmet ARAS"},
    {606: "CMuhammet HALAK"}
  ]; */
}

void main() {
  
  Ogrenciler ogrenciler = Ogrenciler();
  print(ogrenciler.ogrenci[0][0][0]);
  print("*********");
  /* var aa = ogrenciler.sinifC[3].entries;
  print(aa.key);
  //final Iterable<MapEntry<int, String>> mai = ogrenciler.sinifA[0].entries;
  for (final MapEntry e in ogrenciler.sinifC[3].entries) {
    //hepsine ayrı arı for döngüsü yapılabilir.
    print(e);
    print(e.key);
    print(e.value);
  } */
}
