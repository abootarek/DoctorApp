import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:doc_app_new/featuers/loginscreen/data/models/login_request_body.dart';
import 'package:doc_app_new/featuers/loginscreen/data/models/login_response.dart';
import 'package:doc_app_new/featuers/loginscreen/data/repos/login_repo.dart';
import 'package:doc_app_new/featuers/loginscreen/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final LoginRepo _loginRepo;
  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (LoginResponse) {
        emit(LoginState.success(LoginResponse));
      },
      failure: (error) {
        emit(
          LoginState.error(error: error.failure.message ?? ''),
        ); // Api error Model Error
      },
    );
  }
}
