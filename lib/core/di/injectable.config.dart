// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_anime_app/core/di/register_module.dart' as _i503;
import 'package:flutter_anime_app/data/anime_repository_impl.dart' as _i121;
import 'package:flutter_anime_app/data/data_sources/anime_api_service.dart'
    as _i295;
import 'package:flutter_anime_app/domain/repositories/anime_repository.dart'
    as _i31;
import 'package:flutter_anime_app/domain/use_cases/get_remote_sorted_anime_use_case.dart'
    as _i839;
import 'package:flutter_anime_app/presentation/cubits/anime_categories_cubit.dart'
    as _i398;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i974.Logger>(() => registerModule.logger);
    gh.factory<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i295.AnimeApiService>(
        () => _i295.AnimeApiService(gh<_i361.Dio>()));
    gh.lazySingleton<_i31.AnimeRepository>(() => _i121.AnimeRepositoryImpl(
          gh<_i295.AnimeApiService>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i839.GetRemoteSortedAnimeUseCase>(
        () => _i839.GetRemoteSortedAnimeUseCase(gh<_i31.AnimeRepository>()));
    gh.factory<_i398.AnimeCategoriesCubit>(() =>
        _i398.AnimeCategoriesCubit(gh<_i839.GetRemoteSortedAnimeUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i503.RegisterModule {}
