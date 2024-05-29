import 'package:get/get.dart';
import 'package:getx_mvvm_architecture/models/login/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences extends GetxController{

  Future<bool> saveUser(LoginResponseModel loginResponseModel) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', loginResponseModel.token.toString());
    return true;
  }


  Future<LoginResponseModel> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    return LoginResponseModel(token: token);
  }

  Future<bool> removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    return true;
  }


}