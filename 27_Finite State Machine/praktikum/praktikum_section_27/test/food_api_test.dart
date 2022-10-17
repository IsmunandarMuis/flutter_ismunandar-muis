import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:praktikum_section_27/model/api/food_api.dart';
import 'package:praktikum_section_27/model/food_model.dart';

import 'food_api_test.mocks.dart';

@GenerateMocks([FoodApi])
void main() {
  group(("Test Food Api Service"), () {
    FoodApi foodApi = MockFoodApi();
    test("Test Success", () async {
      when(foodApi.getAllFood()).thenAnswer((_) async => <FoodModel>[
            FoodModel(id: 1, name: 'Bakso'),
            FoodModel(id: 2, name: 'Mi Ayam'),
          ]);
      List<FoodModel> foodList = await foodApi.getAllFood();
      expect(foodList.length > 1, true);
    });
    test("Test Error", () async {
      when(foodApi.getAllFood()).thenAnswer((_) async => <FoodModel>[
            FoodModel(id: 1, name: 'Bakso'),
          ]);
      List<FoodModel> foodList = await foodApi.getAllFood();
      expect(foodList.isNotEmpty, true);
    });
  });
}
