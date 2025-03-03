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
import 'package:flutter_anime_app/data/sources/anime_api_service.dart' as _i125;
import 'package:flutter_anime_app/data/sources/anime_local_api_service.dart'
    as _i588;
import 'package:flutter_anime_app/domain/repositories/anime_repository.dart'
    as _i31;
import 'package:flutter_anime_app/domain/use_cases/get_local_categories_use_case.dart'
    as _i956;
import 'package:flutter_anime_app/domain/use_cases/get_remote_anime_use_case.dart'
    as _i103;
import 'package:flutter_anime_app/domain/use_cases/get_remote_sorted_anime_use_case.dart'
    as _i839;
import 'package:flutter_anime_app/domain/use_cases/insert_local_category_use_case.dart'
    as _i337;
import 'package:flutter_anime_app/presentation/cubits/anime_categories_cubit.dart'
    as _i398;
import 'package:flutter_anime_app/presentation/cubits/anime_long_cubit.dart'
    as _i898;
import 'package:flutter_anime_app/presentation/cubits/bottom_navigation_cubit.dart'
    as _i359;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:sqflite/sqflite.dart' as _i779;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i974.Logger>(() => registerModule.logger);
    gh.factory<_i361.Dio>(() => registerModule.dio);
    await gh.factoryAsync<_i779.Database>(
      () => registerModule.database,
      preResolve: true,
    );
    gh.factory<_i359.BottomNavigationCubit>(
        () => _i359.BottomNavigationCubit());
    gh.factory<_i125.AnimeApiService>(
        () => _i125.AnimeApiService(gh<_i361.Dio>()));
    gh.factory<_i588.AnimeLocalApiService>(
        () => _i588.AnimeLocalApiService(gh<_i779.Database>()));
    gh.lazySingleton<_i31.AnimeRepository>(() => _i121.AnimeRepositoryImpl(
          gh<_i125.AnimeApiService>(),
          gh<_i974.Logger>(),
          gh<_i588.AnimeLocalApiService>(),
        ));
    gh.factory<_i839.GetRemoteSortedAnimeUseCase>(
        () => _i839.GetRemoteSortedAnimeUseCase(gh<_i31.AnimeRepository>()));
    gh.factory<_i103.GetRemoteAnimeUseCase>(
        () => _i103.GetRemoteAnimeUseCase(gh<_i31.AnimeRepository>()));
    gh.factory<_i337.InsertLocalCategoryUseCase>(
        () => _i337.InsertLocalCategoryUseCase(gh<_i31.AnimeRepository>()));
    gh.factory<_i956.GetLocalCategoriesUseCase>(
        () => _i956.GetLocalCategoriesUseCase(gh<_i31.AnimeRepository>()));
    gh.factory<_i398.AnimeCategoriesCubit>(() => _i398.AnimeCategoriesCubit(
          gh<_i839.GetRemoteSortedAnimeUseCase>(),
          gh<_i956.GetLocalCategoriesUseCase>(),
          gh<_i337.InsertLocalCategoryUseCase>(),
        ));
    gh.factory<_i898.AnimeLongCubit>(
        () => _i898.AnimeLongCubit(gh<_i103.GetRemoteAnimeUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i503.RegisterModule {}
