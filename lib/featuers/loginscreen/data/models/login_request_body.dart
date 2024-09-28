import 'package:json_annotation/json_annotation.dart';

part 'login_request_body.g.dart';

@JsonSerializable() // retrofit
class LoginRequestBody {
  final String email;
  final String password;

  LoginRequestBody(this.email, this.password);

  Map<String, dynamic> tojson() => _$LoginRequestBodyToJson(this);
}
