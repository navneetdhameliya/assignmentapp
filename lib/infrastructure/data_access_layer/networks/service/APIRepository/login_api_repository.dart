

import 'package:assignmentapp/infrastructure/data_access_layer/networks/service/APIProviders/login_api_provider.dart';
import 'package:assignmentapp/infrastructure/data_access_layer/networks/service/repository_adapter.dart';
import 'package:assignmentapp/infrastructure/models/responses/login_response_model.dart';

class LoginAPIRepository implements ILoginRepository {

  final ILoginProvider provider;

  LoginAPIRepository({required this.provider});

  @override
  Future<LoginResponseModel> getLoginAPIResponse(String loginRequestJson) async {
    final loginResponseModel = await provider.getCases("/users/getcode", loginRequestJson);

    if (loginResponseModel.status.hasError) {
      return Future.error(loginResponseModel.statusText!);
    } else {
      return loginResponseModel.body!;
    }
  }

}