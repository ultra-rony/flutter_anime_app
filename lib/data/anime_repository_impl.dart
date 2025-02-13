import 'package:flutter_anime_app/data/data_sources/anime_api_service.dart';
import 'package:flutter_anime_app/domain/repositories/anime_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AnimeRepository)
class AnimeRepositoryImpl extends AnimeRepository {
  final AnimeApiService _animeApiService;

  AnimeRepositoryImpl(this._animeApiService);
}
