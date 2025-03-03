import 'package:flutter_anime_app/core/usecases/base_use_case.dart';
import 'package:flutter_anime_app/domain/repositories/anime_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLocalCategoriesUseCase
    extends BaseUseCase<List<Map<String, dynamic>>, void> {
  final AnimeRepository _animeRepository;

  GetLocalCategoriesUseCase(this._animeRepository);

  @override
  Future<List<Map<String, dynamic>>> call({void params}) async {
    return await _animeRepository.getLocalAnime();
  }
}
