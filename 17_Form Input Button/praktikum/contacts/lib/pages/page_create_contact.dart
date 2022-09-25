import 'package:contacts/data/data_user.dart';
import 'package:flutter/material.dart';

class PageCreateContact extends StatefulWidget {
  const PageCreateContact({Key? key}) : super(key: key);

  @override
  State<PageCreateContact> createState() => _PageCreateContactState();
}

class _PageCreateContactState extends State<PageCreateContact> {
  late TextEditingController usernameController;
  late TextEditingController phoneNumberController;
  late DataUser _dataUser;

  @override
  void initState() {
    usernameController = TextEditingController();
    phoneNumberController = TextEditingController();
    _dataUser = DataUser();
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black54),
        title: const Text(
          "Create Contact",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 1,
        backgroundColor: const Color(0xfff6f6f6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                shadowColor: Colors.black54,
                elevation: 5,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Username",
                    suffixIcon: Icon(Icons.person),
                    suffixIconColor: Colors.black54,
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: Colors.white, style: BorderStyle.none)),
                    filled: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Material(
                shadowColor: Colors.black54,
                elevation: 5,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 13,
                  controller: phoneNumberController,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Phone Number",
                    hintText: "(+62)",
                    counterText: "",
                    suffixIcon: Icon(Icons.phone),
                    suffixIconColor: Colors.black54,
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: Colors.white, style: BorderStyle.none)),
                    filled: true,
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  print(usernameController.text);
                  print(phoneNumberController.text);
                  Map<String, dynamic> newContact = {
                    "username": usernameController.text,
                    "phone_number": phoneNumberController.text
                  };
                  _dataUser.addDataUser(newContact);
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 30),
                    primary: Colors.green[400],
                    padding: const EdgeInsets.all(15),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: const Text("Add Contact",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
