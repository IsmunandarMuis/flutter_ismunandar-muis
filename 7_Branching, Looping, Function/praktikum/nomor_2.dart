/*
  Tampilkan nilai faktorial dari
  10
  20
  30
*/

import 'dart:io';

void main(List<String> args) {
  late double angka;

  stdout.write("Masukkan angka : ");
  angka = double.parse(stdin.readLineSync()!);

  double hasil = faktorial(angka);
  print("Hasil faktorial dari ${angka} = ${hasil}");
}

double faktorial(double angka) {
  double hasil = 1;
  for (int i = 1; i <= angka; i++) {
    hasil *= i;

    stdout.write("${i}");
    if (i != angka) {
      stdout.write(" * ");
    }
  }
  print(" = ${hasil}");
  return hasil;
}

int faktorialRekursif(int angka) {
  if (angka > 1) {
    return angka * faktorialRekursif(angka - 1);
  } else {
    return 1;
  }
}
