void main(List<String> args) {
  List<int> data = [4, 2, 4, 1, 3];
  int pengali = 2;

  var hasil = perkalian(data: data, pengali: pengali);

  for (int element in hasil) {
    print(element);
  }
}

perkalian({required List<int> data, required int pengali}) async {
  List<int> newList = [];
  Future.forEach(data, (int element) {
    int hasilKali = element + pengali;
    newList.add(hasilKali);
  });
  return newList;
}
