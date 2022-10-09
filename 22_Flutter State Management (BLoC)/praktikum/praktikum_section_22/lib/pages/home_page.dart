import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_section_22/models/contact_model.dart';
import 'package:praktikum_section_22/pages/widgets/contact_card.dart';
import 'package:praktikum_section_22/theme.dart';

import '../bloc/contact_bloc.dart';
import 'create_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Themes.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          leading: Icon(
            Icons.people_alt,
            size: 35,
            color: Themes.primaryTextColor,
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CreatePage()));
              },
              child: Container(
                margin: EdgeInsets.only(
                  right: Themes.verticalMargin,
                ),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Themes.primaryColor,
                ),
                child: const Icon(Icons.add),
              ),
            )
          ],
          title: Text(
            "Contacts",
            style: Themes.primaryTextStyle.copyWith(
              fontWeight: Themes.bold,
            ),
          ),
        ),
        body: BlocBuilder<ContactBloc, ContactState>(
          builder: (context, state) {
            if (state is ContactInitial) {
              return const Center(
                child: Text("Belum ada list"),
              );
            } else if (state is ContactLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: Themes.primaryColor,
                ),
              );
            } else if (state is SuccessAdded) {
              showModalBottomSheet(
                  context: (context),
                  builder: (context) {
                    return const Center(
                      child: Text("Success Add Data"),
                    );
                  });
            } else if (state is ContactLoaded) {
              List<ContactModel> allContact = state.listContact;
              if (allContact.isEmpty) {
                return const Center(
                  child: Text("Belum ada list"),
                );
              } else {
                return ListView.builder(
                    itemCount: allContact.length,
                    padding: const EdgeInsets.all(20),
                    itemBuilder: ((context, index) {
                      return ContactCard(
                          contactModel: allContact[index],
                          onDelete: () {
                            context
                                .read<ContactBloc>()
                                .add(DeleteContact(allContact[index]));
                          });
                    }));
              }
            }
            return const SizedBox();
          },
        ));
  }
}
