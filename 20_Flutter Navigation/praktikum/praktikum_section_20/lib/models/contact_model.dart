class ContactModel {
  static List<Map<String, dynamic>> dataUser = [
    {
      "phone_number": "1-770-736-8031 x56442",
      "user_first_name": "Leanne",
      "user_last_name": "Graham",
    },
    {
      "phone_number": "010-692-6593 x09125",
      "user_first_name": "Ervin",
      "user_last_name": "Howell",
    },
    {
      "phone_number": "1-463-123-447",
      "user_first_name": "Clementine",
      "user_last_name": "Bauch",
    },
    {
      "phone_number": "493-170-9623 x156",
      "user_first_name": "Particia",
      "user_last_name": "Lebsack",
    },
    {
      "phone_number": "(254)954-1289",
      "user_first_name": "Chelsey",
      "user_last_name": "Dietrich",
    },
    {
      "phone_number": "1-447-935-8478 x6430",
      "user_first_name": "Mrs",
      "user_last_name": "Dennis Schulist",
    },
    {
      "phone_number": "210.067.6132",
      "user_first_name": "Kurtis",
      "user_last_name": "Weissnat",
    },
  ];

  static addContact(Map<String, dynamic> contact) {
    dataUser.insert(0, contact);
  }
}
