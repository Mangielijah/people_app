// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

import 'commons/network/api_client.dart' as _i3;
import 'commons/network/network_info.dart' as _i6;
import 'data/datasources/people_local_datasource.dart' as _i7;
import 'data/datasources/people_remote_datasource.dart' as _i8;
import 'data/memory/in_memory_cache.dart' as _i4;
import 'data/repositories/people_repository_impl.dart' as _i10;
import 'domain/repositories/people_repository.dart' as _i9;
import 'domain/usecases/download_media.dart' as _i11;
import 'domain/usecases/get_favorite_people.dart' as _i12;
import 'domain/usecases/get_person_media.dart' as _i14;
import 'domain/usecases/get_popular_people.dart' as _i13;
import 'module_registry.dart' as _i16;
import 'presentation/state/home/home_state_notifier.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.ApiClient>(() => _i3.ApiClient());
  gh.lazySingleton<_i4.InMemoryCache>(() => _i4.InMemoryCache());
  gh.lazySingleton<_i5.InternetConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.factory<_i6.NetworkInfo>(() => _i6.NetworkInfoImpl(
      connectionChecker: get<_i5.InternetConnectionChecker>()));
  gh.factory<_i7.PeopleLocalDataSource>(() => _i7.PeopleLocalDataSourceImpl());
  gh.factory<_i8.PeopleRemoteDataSource>(
      () => _i8.PeopleRemoteDataSourceImple(apiClient: get<_i3.ApiClient>()));
  gh.lazySingleton<_i9.PeopleRepository>(() => _i10.PeopleRepositoryImpl(
      networkInfo: get<_i6.NetworkInfo>(),
      inMemoryCache: get<_i4.InMemoryCache>(),
      remoteDataSource: get<_i8.PeopleRemoteDataSource>(),
      localDataSource: get<_i7.PeopleLocalDataSource>()));
  gh.factory<_i11.DownloadMedia>(
      () => _i11.DownloadMedia(get<_i9.PeopleRepository>()));
  gh.factory<_i12.GetFavoritePeople>(
      () => _i12.GetFavoritePeople(get<_i9.PeopleRepository>()));
  gh.factory<_i13.GetPeople>(() => _i13.GetPeople(get<_i9.PeopleRepository>()));
  gh.factory<_i14.GetPersonMedia>(
      () => _i14.GetPersonMedia(get<_i9.PeopleRepository>()));
  gh.factory<_i15.HomeStateNotifier>(
      () => _i15.HomeStateNotifier(get<_i13.GetPeople>()));
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
