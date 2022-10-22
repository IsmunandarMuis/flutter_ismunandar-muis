import 'package:weekly_1_project/models/user_model.dart';

class UserService {
  late List<UserModel> dataUser = [];

  Future<void> addDataUser({required UserModel userModel}) async {
    try {
      await Future.delayed(
          const Duration(seconds: 2), () => dataUser.add(userModel));
    } catch (e) {
      rethrow;
    }
  }

  Future<List<UserModel>> getDataUser() async {
    late List<UserModel> userList;
    try {
      await Future.delayed(
          const Duration(seconds: 3), () => userList = dataUser);
      return userList;
    } catch (e) {
      rethrow;
    }
  }
}
