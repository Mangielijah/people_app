class CacheException implements Exception {
  late String errorMessage;
  @override
  String toString() => errorMessage;
}

class ServerException implements Exception {
  late String errorMessage;
  @override
  String toString() => errorMessage;
}
