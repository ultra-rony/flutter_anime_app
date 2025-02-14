import 'package:flutter_anime_app/core/network/network_data_state.dart';
import 'package:flutter_anime_app/core/usecases/base_use_case.dart';
import 'package:flutter_anime_app/domain/entities/category_entity.dart';
import 'package:flutter_anime_app/domain/repositories/anime_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRemoteSortedAnimeUseCase
    extends BaseUseCase<NetworkDataState<List<CategoryEntity>>, void> {
  final AnimeRepository _animeRepository;

  GetRemoteSortedAnimeUseCase(this._animeRepository);

  @override
  Future<NetworkDataState<List<CategoryEntity>>?> call({void params}) async {
    return await _animeRepository.getSortedAnime();
  }
}
