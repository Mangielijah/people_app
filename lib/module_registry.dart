import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker.createInstance(
        checkInterval: Duration(seconds: 1),
        checkTimeout: Duration(seconds: 1),
      );
}
