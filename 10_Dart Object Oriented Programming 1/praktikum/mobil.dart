import 'hewan.dart';

class Mobil {
  late double kapasitas;
  late double muatan;
  List<Hewan> _listHewan = [];

  Mobil({double? kapasitas}) {
    this.kapasitas = kapasitas!;
  }

  double get getKapasitas => this.kapasitas;

  void tambahMuatan(Hewan hewan) async {
    var total = await totalMuatan();
    if ((total + hewan.beratHewan) < kapasitas) {
      _listHewan.add(hewan);
    } else {
      print("Kapasitas Overlaod");
    }
  }

  Future<double> totalMuatan() async {
    return Future(() {
      var total = 0.0;
      _listHewan.forEach((element) {
        total += element.beratHewan;
      });
      return total;
    });
  }
}
