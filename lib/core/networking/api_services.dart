import 'package:dio/dio.dart';
import 'package:doc_app_new/core/networking/api_constants.dart';
import 'package:doc_app_new/featuers/loginscreen/data/models/login_request_body.dart';

import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ConstansApi.apibaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  /// Post Method => request data .
  @POST(ConstansApi.login)
  Future<String> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
