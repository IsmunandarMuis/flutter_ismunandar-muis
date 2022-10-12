import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_section_25/bloc/user_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
              label: const Text("Name"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: jobController,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
              label: const Text("Job"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(GetDataUser());
                  },
                  child: const Text("Get")),
              ElevatedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(
                        PostDataUser(nameController.text, jobController.text));
                  },
                  child: const Text("POST")),
              ElevatedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(UpdateDataUser(
                        nameController.text, jobController.text));
                  },
                  child: const Text("UPDATE")),
              ElevatedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(DeleteDataUser());
                  },
                  child: const Text("DELETE")),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Result :",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is UserErrorLoadedState) {
                return Center(
                  child: Text("Error " + state.message),
                );
              } else if (state is UserGetState) {
                return Text(
                  state.dataResponse.toString(),
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                );
              } else if (state is UserPostState) {
                return Text(
                  state.dataResponse.toString(),
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                );
              } else if (state is UserUpdateState) {
                return Text(
                  state.dataResponse.toString(),
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                );
              } else if (state is UserDeleteState) {
                return Text(
                  state.dataResponse.toString(),
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          )
        ],
      ),
    );
  }
}
