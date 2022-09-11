import 'matematika.dart';

class FaktorPersekutuanTerbesar extends Matematika {
  late int x, y;

  FaktorPersekutuanTerbesar({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }

  @override
  hasil() {
    int r = 0;
    while (y != 0) {
      r = x % y;
      x = y;
      y = r;
    }
    print("Hasil Faktor Persekutuan Terbesar dari $x dan $y : $x");
  }
}
