import 'matematika.dart';

class KelipatanPersekutuanTerkecil extends Matematika {
  late int x, y;
  KelipatanPersekutuanTerkecil({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }
  @override
  hasil() {
    int kpk = x;
    while (kpk % this.y != 0) {
      kpk += x;
    }
    print("Hasil Kelipatan Persekutuan Terkecil dari $x dan $y : $kpk");
  }
}
