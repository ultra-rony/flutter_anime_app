import 'package:flutter_anime_app/core/usecases/base_use_case.dart';
import 'package:flutter_anime_app/domain/repositories/anime_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class InsertLocalCategoryUseCase
    extends BaseUseCase<void, Map<String, dynamic>> {
  final AnimeRepository _animeRepository;

  InsertLocalCategoryUseCase(this._animeRepository);

  @override
  Future call({Map<String, dynamic>? params}) async {
    return await _animeRepository.insertLocalAnime(params ?? {});
  }
}
