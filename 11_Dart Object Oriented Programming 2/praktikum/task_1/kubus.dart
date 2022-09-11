import 'bangun_ruang.dart';

class Kubus extends BangunRuang {
  double? sisi;
  late final double rumusSisi;

  Kubus({required double sisi}) {
    this.sisi = sisi;
  }

  @override
  volume() {
    this.rumusSisi = sisi! * sisi! * sisi!;
    print("Volume kubus : ${rumusSisi}");
  }
}
