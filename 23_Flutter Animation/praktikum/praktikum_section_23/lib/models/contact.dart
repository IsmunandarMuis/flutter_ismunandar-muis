class Contact {
  String? contactName;
  String? contactNumber;
  Contact({
    this.contactName,
    this.contactNumber,
  });

  Contact copyWith({
    String? contactName,
    String? contactNumber,
  }) {
    return Contact(
      contactName: contactName ?? this.contactName,
      contactNumber: contactNumber ?? this.contactNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': contactName,
      'contactNumber': contactNumber,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      contactName:
          map['contactName'] != null ? map['contactName'] as String : null,
      contactNumber:
          map['contactNumber'] != null ? map['contactNumber'] as String : null,
    );
  }
}
