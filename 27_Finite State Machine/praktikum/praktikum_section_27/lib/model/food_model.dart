class FoodModel {
  int id;
  String name;
  FoodModel({
    required this.id,
    required this.name,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(id: json['id'], name: json['name']);
  }
}
