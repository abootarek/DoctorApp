import 'package:doc_app_new/core/networking/api_error_handler.dart';
import 'package:doc_app_new/core/networking/api_result.dart';
import 'package:doc_app_new/core/networking/api_services.dart';
import 'package:doc_app_new/featuers/loginscreen/data/models/login_request_body.dart';
import 'package:doc_app_new/featuers/loginscreen/data/models/login_response.dart';

class LoginRepo {
  final ApiServices _apiServices;

  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response as LoginResponse);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
