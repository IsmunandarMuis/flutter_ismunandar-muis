import 'balok.dart';
import 'bangun_ruang.dart';
import 'kubus.dart';

void main(List<String> args) {
  BangunRuang kubus = Kubus(sisi: 10);
  BangunRuang balok = Balok(panjang: 15, lebar: 5, tinggi: 3);

  kubus.volume();
  balok.volume();
}
