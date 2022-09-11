import 'faktor_persekutuan_terbesar.dart';
import 'kelipatan_persekutuan_terkecil.dart';
import 'matematika.dart';

void main(List<String> args) {
  Matematika kpk = KelipatanPersekutuanTerkecil(x: 60, y: 80);
  Matematika fpb = FaktorPersekutuanTerbesar(x: 60, y: 80);

  kpk.hasil();
  fpb.hasil();
}
