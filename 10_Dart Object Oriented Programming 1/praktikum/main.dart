import 'dart:io';

import 'hewan.dart';
import 'mobil.dart';

void main(List<String> args) {
  // List<Hewan> daftarHewan;
  Mobil mobil = Mobil(kapasitas: 100);
  print("Kapasitas muatan pada mobil : ${mobil.getKapasitas} KG");

  stdout.write("\nSilahkan masukkan jumlah hewan : ");
  int jumlahHewan = int.parse(stdin.readLineSync()!);

  print("\n");
  for (int i = 1; i <= jumlahHewan; i++) {
    stdout.write("Masukkan berat hewan ke-$i (KG): ");
    double beratHewan = double.parse(stdin.readLineSync()!);

    mobil.tambahMuatan(Hewan(beratHewan: beratHewan));
  }

  mobil
      .totalMuatan()
      .then((value) => print("\nTotal muatan saat ini : $value KG"));
}
