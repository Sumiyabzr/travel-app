import 'package:dio/dio.dart';

class CustomInterceptors extends InterceptorsWrapper {
  CustomInterceptors()
          : super(
              onRequest: (options, handler) {
                print('onRequest');
                return handler.next(options);
              },
              onResponse: (response, handler) {
                print('onResponse');
                return handler.next(response);
              },
              onError: (DioException e, handler) {
                print('onError');
                return handler.next(e);
              }
            );
}