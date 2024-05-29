
import 'package:getx_mvvm_architecture/data/network/network_api_services.dart';

import '../../res/app_urls/app_urls.dart';

class LoginRepository{

  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(dynamic data) async{
    dynamic response = await _apiService.postApi(AppUrls.login, data);
    return response;
  }
}