import 'package:dio/dio.dart';
import 'package:doc_app_new/core/networking/api_factory.dart';
import 'package:doc_app_new/core/networking/api_services.dart';
import 'package:doc_app_new/featuers/loginscreen/data/repos/login_repo.dart';
import 'package:doc_app_new/featuers/loginscreen/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //setupGetIt "main" متنساش تحطها في 
  // dio and ApiServices
  Dio dio = DioFactory.getDio(); // يتعمل مره واحده
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  // Home
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));
}
