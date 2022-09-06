import 'hewan.dart';

class Mobil {
  late double kapasitas;
  late List<double> muatan;

  tambahMuatan(double muatanBaru) {
    if (kapasitas == muatan.length) {
      print("Muatan sudah penuh");
    } else {
      muatan.add(muatanBaru);
      print("Berhasil menambah muatan");
    }
  }

  double totalMuatan() {
    double total = 0;
    for (var element in muatan) {
      total += element;
    }
    return total;
  }
}
