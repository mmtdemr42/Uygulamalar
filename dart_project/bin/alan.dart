import 'dart:io';

void main(List<String> args) {
  final r = double.parse(stdin.readLineSync()!);
  const pi = 3.18;

  print(2 * r * pi);
}
