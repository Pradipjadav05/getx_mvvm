import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_architecture/res/components/round_button.dart';
import 'package:getx_mvvm_architecture/utils/utils.dart';

import '../../view_models/controller/login/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final LoginViewModel loginController = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: loginController.emailController.value,
                      focusNode: loginController.emailFocusNode.value,
                      decoration: InputDecoration(
                          hintText: 'email_hint'.tr,
                          border: const OutlineInputBorder()),
                      onFieldSubmitted: (value) {
                        Utils.fieldFocusChange(
                            context,
                            loginController.emailFocusNode.value,
                            loginController.passwordFocusNode.value);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          Utils.snackBar('Email', 'Enter Email');
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: loginController.passwordController.value,
                      focusNode: loginController.passwordFocusNode.value,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "password_hint".tr,
                          border: const OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          Utils.snackBar('Password', 'Enter Password');
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Obx(() {
                return RoundedButton(
                  loading: loginController.loading.value,
                  title: 'Login',
                  width: 150,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await loginController.login();
                    } else {}
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
