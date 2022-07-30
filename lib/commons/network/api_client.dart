import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/commons/network/interceptors/logger_interceptor.dart';

const String _baseUrl = 'http://api.mymocredit.com/api/v1';

abstract class EndPoints {
  //Authentication ENDPOINTS
}

@lazySingleton
class ApiClient {
  ApiClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: _baseUrl,
            connectTimeout: 5000,
            receiveTimeout: 3000,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            LoggerInterceptor(),
          ]);

  late final Dio _dio;
}
