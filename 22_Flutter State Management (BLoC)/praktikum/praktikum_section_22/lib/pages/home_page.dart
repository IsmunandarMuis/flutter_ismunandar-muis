import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                child: Icon(Icons.add),
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
            if (state is ContactLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: Themes.primaryColor,
                ),
              );
            }
            if (state is ContactLoaded && state.listContact.isNotEmpty) {
              return ListView.builder(
                  padding: EdgeInsets.symmetric(
                    vertical: Themes.verticalMargin,
                    horizontal: Themes.horizontalMargin,
                  ),
                  itemCount: state.listContact.length,
                  itemBuilder: (context, index) {
                    // return Container();
                    return ContactCard(
                        context: context,
                        contactModel: state.listContact[index],
                        onDelete: () {
                          context
                              .read<ContactBloc>()
                              .add(DeleteContact(state.listContact[index]));
                        });
                  });
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Contact Is Empty",
                      style: Themes.primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: Themes.semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreatePage()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Themes.primaryColor),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Add New Contact +",
                          style: Themes.primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: Themes.bold,
                              color: Themes.primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ));
  }
}
