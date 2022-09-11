import 'bangun_ruang.dart';

class Balok extends BangunRuang {
  late final double rumusBalok;
  Balok(
      {required double panjang,
      required double tinggi,
      required double lebar}) {
    super.panjang = panjang;
    super.tinggi = tinggi;
    super.lebar = lebar;
  }

  @override
  volume() {
    this.rumusBalok = super.panjang! * super.lebar! * super.tinggi!;

    print("Volume balok : $rumusBalok");
  }
}
