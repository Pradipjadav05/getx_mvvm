import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_architecture/view_models/controller/user_prefrences/user_prefrense_view_model.dart';

import '../../res/routes/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  UserPreferences userPreferences = UserPreferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await userPreferences.removeUser().then((value) {
                Get.toNamed(RoutesName.loginScreen);
              });
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
