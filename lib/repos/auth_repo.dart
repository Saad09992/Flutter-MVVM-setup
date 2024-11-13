import 'package:mvvm/data/network/base_api_service.dart';
import 'package:mvvm/data/network/network_api_service.dart';
import 'package:mvvm/resources/app_urls.dart';

class AuthRepo {
  BaseApiService _apiService = NetworkApiService();

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
          await _apiService.getPostApiResponse(AppUrls.signUpUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiService.getPostApiResponse(AppUrls.loginUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
