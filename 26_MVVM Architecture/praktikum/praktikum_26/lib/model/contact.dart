// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  Contact({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.address,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
        firstName: json['first_name'] ?? '',
        lastName: json['last_name'] ?? '',
        phoneNumber: json['phone_number'] ?? '',
        address: json['address'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {
      "first_name": firstName,
      "last_name": lastName,
      "phone_number": phoneNumber,
      "address": address,
    };
  }
}
