// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // class LoginRequstBody {
// //   final String emil;
// //   final String password;

// //   LoginRequstBody({required this.emil, required this.password});

// //   Map<String, dynamic> toJson() => $LoginReuquesBodyToJson(this);
// // }

// import 'package:doc_app_new/core/networking/api_error_handler.dart';
// import 'package:doc_app_new/core/networking/api_result.dart';
// import 'package:doc_app_new/core/networking/api_services.dart';
// import 'package:json_annotation/json_annotation.dart';

// // import 'tester.dart';

// // class LoginResponse {
// //   final String message;
// //   final String data;
// //   @JsonKey(name: 'data')
// //   UserData? userdata;
// //   bool status;
// //   final int code;
// //   LoginResponse({
// //     required this.message,
// //     required this.data,
// //     this.userdata,
// //     required this.status,
// //     required this.code,
// //   });

// //   factory LoginResponse.fromJson(Map<String, dynamic> json) =>
// //       _$LoginResponseFromJson(json); // retrofit
// // }

// // class UserData {
// //   final String token;
// //   final String username;
// //   UserData({
// //     required this.token,
// //     required this.username,
// //   });
// //   factory LoginResponse.fromJson(Map<String, dynamic> json) =>
// //       $LoginResponseFromJson(json);
// // }
// class LoginRequestBody {
//   final String email; // mohamed@gmai.com to json
//   final String password; // 123123 to json

//   LoginRequestBody({
//     required this.email,
//     required this.password,
//   });
//   Map<String, dynamic> tojson() => $_LoginRequestBodyToJson(this);
//   // convert from body(dart) to json
// }

// // ----------------------------
// class LoginResponse {
//   final String message;
//   @JsonKey(name: 'data')
//   UserData userData;
//   final bool status;
//   final int code;
//   LoginResponse({
//     required this.message,
//     required this.userData,
//     required this.status,
//     required this.code,
//   });
//   factory LoginResponse.fromJson(Map<String, dynamic> json) =>
//       _$LoginResponse(json);
// }

// class UserData {
//   final String token;
//   final String username;
//   UserData({
//     required this.token,
//     required this.username,
//   });
//   factory UserData.fromJson(Map<String, dynamic> json) => _$UserData(json);
// }

// ////////////////////////////////////
// class LoginRepo {
//   final ApiServices apiServices;

//   LoginRepo({
//     required this.apiServices,
//   });
//   Future<ApiResult<LoginResponse>> login(
//       LoginRequestBody loginRequestBody) async {
//     try {
//       final response = await apiServices.login(loginRequestBody);
//       return ApiResult.success(response);
//     } catch (error) {
//       return ApiResult.failure(
//         ErrorHandler.handle(error),
//       );
//     }
//   }
// }

