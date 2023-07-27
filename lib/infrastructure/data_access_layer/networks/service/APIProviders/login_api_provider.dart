import 'package:assignmentapp/infrastructure/commons/constants/app_constants.dart';
import 'package:assignmentapp/infrastructure/models/responses/login_response_model.dart';
import 'package:get/get_connect.dart';

abstract class ILoginProvider {
  Future<Response<LoginResponseModel>> getCases(String path, String loginRequestJson);
}

class LoginProvider extends GetConnect implements ILoginProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder =
        (val) => LoginResponseModel.fromJson(val as Map<String, dynamic>);
    httpClient.baseUrl = AppConstants.baseUrl;
  }

  @override
  Future<Response<LoginResponseModel>> getCases(String path, String loginRequestJson) => post(path, loginRequestJson, headers: {"Content-type" : "application/json"});
}