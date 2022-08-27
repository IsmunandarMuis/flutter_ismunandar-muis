import 'dart:io';

void main(List<String> args) {
  final phi = 3.14;

  print("Masukkan panjang jari-jari lingkaran : ");
  double? userInput = double.parse(stdin.readLineSync()!);

  var result = hitungLuasLingkaran(userInput, phi);
  print("Luas lingkaran : ${result}");
}

double hitungLuasLingkaran(var jariJari, var phi) {
  double result = phi * jariJari * jariJari;
  return result;
}
