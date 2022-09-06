import 'dart:io';

import 'hewan.dart';
import 'mobil.dart';

void main(List<String> args) {
  Mobil mobil = new Mobil();
  List<Hewan> hewan = [];
  int jumlahHewan = 5;

  mobil.kapasitas = 100.0;

  for (int i = 1; i <= jumlahHewan; i++) {
    stdout.write("Masukkan berat hewan ke $i : ");
    hewan[i].berat = double.parse(stdin.readLineSync()!);
    print("object");

    mobil.tambahMuatan(hewan[i].berat);
  }

  double totalMuatan = mobil.totalMuatan();
  print(totalMuatan);
}
