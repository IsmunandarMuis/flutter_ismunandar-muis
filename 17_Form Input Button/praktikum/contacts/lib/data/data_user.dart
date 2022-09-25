class DataUser {
  final List<Map<String, dynamic>> dataUsers = [
    {
      "username": "Ismunandar Muis",
      "phone_number": "082758392174",
    },
    {
      "username": "Bill Gates",
      "phone_number": "083675217642",
    },
    {
      "username": "Harry Potter",
      "phone_number": "083657281642",
    },
  ];

  addDataUser(Map<String, dynamic> data) {
    dataUsers.add(data);
  }

  Future<List<Map<String, dynamic>>> getDataUser() async {
    var data = dataUsers;
    return data;
  }
}
