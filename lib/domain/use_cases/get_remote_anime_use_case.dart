import 'package:flutter_anime_app/core/network/network_data_state.dart';
import 'package:flutter_anime_app/core/usecases/base_use_case.dart';
import 'package:flutter_anime_app/domain/entities/anime_long_entity.dart';
import 'package:flutter_anime_app/domain/repositories/anime_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRemoteAnimeUseCase
    extends BaseUseCase<NetworkDataState<AnimeLongEntity>, String> {
  final AnimeRepository _animeRepository;

  GetRemoteAnimeUseCase(this._animeRepository);

  @override
  Future<NetworkDataState<AnimeLongEntity>?> call({String? params}) async {
    return await _animeRepository.getAnime(params ?? "");
  }
}
