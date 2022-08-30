/*
  Terdapat sebuah nilai :
  Jika nilai > 70 : return A
  Jika nilai > 40 : return B
  Jika nilai > 0  : reutrn C
  Selain itu      : reutrn teks kosong
*/
import 'dart:io';

void main(List<String> args) {
  late int nilai;

  // print("Masukkan nilai ");
  stdout.write("Masukkan nilai : ");
  nilai = int.parse(stdin.readLineSync()!);

  if (nilai >= 0) {
    String hasil = cekNilai(nilai);
    print("Hasil : " + hasil);
  } else {
    String hasil = cekNilai(-1);
    print("Hasil : " + hasil);
  }
}

String cekNilai(int nilai) {
  if (nilai > 70) {
    return "A";
  } else if (nilai > 40 && nilai <= 70) {
    return "B";
  } else if (nilai > 0 && nilai <= 40) {
    return "C";
  } else {
    return "";
  }
}
