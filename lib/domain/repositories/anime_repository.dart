import 'package:flutter_anime_app/core/network/network_data_state.dart';
import 'package:flutter_anime_app/domain/entities/anime_long_entity.dart';
import 'package:flutter_anime_app/domain/entities/category_entity.dart';

abstract class AnimeRepository {
  Future<NetworkDataState<List<CategoryEntity>>> getSortedAnime();

  Future<NetworkDataState<AnimeLongEntity>> getAnime(String animeId);
}
