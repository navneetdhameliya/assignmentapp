import 'package:assignmentapp/infrastructure/models/responses/login_response_model.dart';

abstract class ILoginRepository {
  Future<LoginResponseModel> getLoginAPIResponse(String loginRequestJson);
}