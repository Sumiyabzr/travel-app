import 'package:dio/dio.dart';
import 'package:visitulaanbaatar/services/api/interceptors.dart';

class ApiService {
  final Dio dio;
  ApiService()
      : dio = Dio(
          BaseOptions(
            baseUrl: 'http://192.168.0.103:7000/api',
            receiveTimeout: Duration(seconds: 30),
            sendTimeout: Duration(seconds: 30),
          ),
        )..interceptors.add(CustomInterceptors());

  Future<Response> getRequest(String path, [bool isAuth = false]) async {
    if (isAuth) {
      print("Auth required");
      return dio.get(path);
      // options: Options(headers: {"": ""})
    } else {
      return dio.get(path);
    }
  }
}
