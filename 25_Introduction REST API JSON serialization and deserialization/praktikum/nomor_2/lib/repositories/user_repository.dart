import 'dart:math';

import 'package:dio/dio.dart';
import 'package:nomor_2/models/user.dart';
// import 'package:http/http.dart';

class UserRepository {
  final String _endpoint = "https://reqres.in/api/users";
  final Dio _dio = Dio();
  Future<List<User>> getAllUserWithModel() async {
    Response response =
        await _dio.get(_endpoint + "?page=${Random().nextInt(1)}");
    if (response.statusCode == 200) {
      List result = response.data['data'];
      return result.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception(response.statusMessage);
    }
  }

  Future postUserWithModel(String name, String job) async {
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

  Future updateUserWithModel(String name, String job) async {
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

  Future deleteUserWithModel() async {
    Response response = await _dio.delete(_endpoint + "/${4}");

    if (response.statusCode == 204) {
      return response.statusCode;
    } else {
      return Exception(response.statusCode);
    }
  }
}
