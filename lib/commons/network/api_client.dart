import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:people_app/commons/network/api_exceptions.dart';
import 'package:people_app/commons/network/interceptors/logger_interceptor.dart';
import 'package:people_app/commons/utils.dart';
import 'package:people_app/data/models/person_dto.dart';

const String _baseUrl = 'https://api.themoviedb.org/3/person';
final String apiKey = dotenv.env['API_KEY']!;

abstract class EndPoints {
  static const String popular = '/popular';
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

  Future<List<PersonDto>> getPeople({required int page}) async {
    try {
      final response = await _dio.get(
        EndPoints.popular,
        queryParameters: {'api_key': apiKey, 'page': page},
      );
      final people = _getPeopleFromResponse(response);
      return people;
    } on DioError catch (err) {
      final errorMessage = ApiException.fromDioError(err);
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<PersonDto> getPerson({required int person_id}) async {
    try {
      final response = await _dio.get(
        '/$person_id',
        queryParameters: {'api_key': apiKey},
      );
      final person = _getPersonFromResponse(response);
      return person;
    } on DioError catch (err) {
      final errorMessage = ApiException.fromDioError(err);
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<List<String>> getPersonMedia(int personId) async {
    try {
      final response = await _dio.get(
        '/$personId/images',
        queryParameters: {'api_key': apiKey},
      );
      final mediaList = _getMediaListFromResponse(response);
      return mediaList;
    } on DioError catch (err) {
      final errorMessage = ApiException.fromDioError(err);
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  List<PersonDto> _getPeopleFromResponse(Response response) {
    final resMap = response.data;
    final data = resMap['results'] as List;
    return data.map((p) => PersonDto.fromJson(p)).toList();
  }

  PersonDto _getPersonFromResponse(Response response) {
    final data = response.data;
    return PersonDto.fromJson(data);
  }

  List<String> _getMediaListFromResponse(Response response) {
    final resMap = response.data;
    final data = resMap['profiles'] as List;
    return data.map((m) => m['file_path'] as String).toList();
  }

  Future<bool> downloadFile(String fileName) async {
    try {
      String uri = getImageUrl(fileName, ImageSizeType.download);
      String savePath = await _getFilePath(fileName.replaceFirst('/', ''));
      // double progress = 0;
      final response = await Dio().download(
        uri,
        savePath,
        queryParameters: {'api_key': apiKey},
        deleteOnError: true,
      );
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } on DioError catch (err) {
      final errorMessage = ApiException.fromDioError(err);
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }
}

//gets the applicationDirectory and path for the to-be downloaded file

// which will be used to save the file to that path in the downloadFile method

Future<String> _getFilePath(uniqueFileName) async {
  String path = '';

  Directory dir = await getApplicationDocumentsDirectory();

  path = '${dir.path}/$uniqueFileName';

  return path;
}
