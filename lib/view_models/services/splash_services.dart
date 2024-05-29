import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_mvvm_architecture/view_models/controller/user_prefrences/user_prefrense_view_model.dart';

import '../../res/routes/routes_name.dart';

class SplashServices {

  UserPreferences userPreferences = UserPreferences();

  void isLogin() {
    
    userPreferences.getUser().then((value) {

      if(value.token.toString() == "null" || value.token == null){
        Timer(const Duration(seconds: 3), () {
          Get.toNamed(RoutesName.loginScreen);
        });
      }else{
        Timer(const Duration(seconds: 3), () {
          Get.toNamed(RoutesName.homeScreen);
        });
      }

    });
    

  }
}
