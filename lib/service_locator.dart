import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/service_locator.config.dart';

final serviceLocator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() async {
  $initGetIt(serviceLocator);
  await Hive.initFlutter();
  // Hive.registerAdapter(UserDTOAdapter());
  // Hive.registerAdapter(DocumentDTOAdapter());
}
