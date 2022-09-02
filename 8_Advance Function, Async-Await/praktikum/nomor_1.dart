void main(List<String> args) async {
  List<int> data = [4, 2, 4, 1, 3];
  int pengali = 2;

  var hasil = await perkalian(data: data, pengali: pengali);

  print(hasil);
}

Future<List> perkalian({required List<int> data, required int pengali}) async {
  List<int> newList = [];
  await Future.forEach(data, (int element) {
    int hasilKali = element * pengali;
    newList.add(hasilKali);
  });

  return newList;
}
