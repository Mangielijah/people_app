// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;

import 'commons/network/api_client.dart' as _i3;
import 'commons/network/network_info.dart' as _i5;
import 'module_registry.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.ApiClient>(() => _i3.ApiClient());
  gh.lazySingleton<_i4.InternetConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.factory<_i5.NetworkInfo>(() => _i5.NetworkInfoImpl(
      connectionChecker: get<_i4.InternetConnectionChecker>()));
  return get;
}

class _$RegisterModule extends _i6.RegisterModule {}
