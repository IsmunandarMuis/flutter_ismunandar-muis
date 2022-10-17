import 'package:dio/dio.dart';
import 'package:praktikum_section_27/model/food_model.dart';

class FoodApi {
  final String endPoint =
      "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods";

  final Dio _dio = Dio();

  Future<List<FoodModel>> getAllFood() async {
    try {
      final response = await _dio.get(endPoint);
      List dataResponse = response.data;
      return dataResponse.map((e) => FoodModel.fromJson(e)).toList();
    } on DioError catch (_) {
      rethrow;
    }
  }
}
