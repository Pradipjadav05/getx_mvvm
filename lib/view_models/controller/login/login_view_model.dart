import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_architecture/models/login/login_response_model.dart';
import 'package:getx_mvvm_architecture/view_models/controller/user_prefrences/user_prefrense_view_model.dart';

import '../../../repository/login_repository/login_repository.dart';
import '../../../res/routes/routes_name.dart';
import '../../../utils/utils.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  UserPreferences preferences = UserPreferences();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  Future<void> login() async {
    loading.value = true;
    // Map data = {
    //   "email": emailController.value.text,
    //   "password": passwordController.value.text
    // };

    Map data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};

    await _api.loginApi(data).then((value) async {
      loading.value = false;
      await preferences
          .saveUser(LoginResponseModel.fromJson(value))
          .then((value) {
        Get.toNamed(RoutesName.homeScreen);
      }).onError((error, stackTrace) {});
      Utils.snackBar('Success', "Login Successfully");
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
