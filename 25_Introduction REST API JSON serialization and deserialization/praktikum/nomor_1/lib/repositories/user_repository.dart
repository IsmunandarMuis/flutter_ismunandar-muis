import 'package:dio/dio.dart';
// import 'package:http/http.dart';

class UserRepository {
  final String _endpoint = "https://reqres.in/api/users";
  final Dio _dio = Dio();
  Future<List> getAllUserWithoutModel() async {
    Response response = await _dio.get(_endpoint);
    if (response.statusCode == 200) {
      return response.data['data'];
    } else {
      throw Exception(response.statusMessage);
    }
  }

  Future postUserWithouModel(String name, String job) async {
    Response response = await _dio.post(_endpoint, data: {
      "name": name,
      "job": job,
    });

    if (response.statusCode == 201) {
      return response.data;
    } else {
      return Exception(response.statusMessage);
    }
  }

  Future updateUserWithouModel(String name, String job) async {
    Response response = await _dio.put(_endpoint + "/${4}", data: {
      "name": name,
      "job": job,
    });

    if (response.statusCode == 200) {
      return response.data;
    } else {
      return Exception(response.statusMessage);
    }
  }

  Future deleteUserWithouModel() async {
    Response response = await _dio.delete(_endpoint + "/${4}");

    if (response.statusCode == 204) {
      return response.statusCode;
    } else {
      return Exception(response.statusCode);
    }
  }
}
