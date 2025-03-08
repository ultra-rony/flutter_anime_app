import 'package:flutter/foundation.dart';
import 'package:flutter_anime_app/core/network/network_data_state.dart';
import 'package:flutter_anime_app/core/utils/constants.dart';
import 'package:flutter_anime_app/domain/entities/category_entity.dart';
import 'package:flutter_anime_app/domain/use_cases/get_local_categories_use_case.dart';
import 'package:flutter_anime_app/domain/use_cases/get_remote_sorted_anime_use_case.dart';
import 'package:flutter_anime_app/domain/use_cases/insert_local_category_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'anime_state.dart';

@injectable
class AnimeCubit extends Cubit<AnimeCubitState> {
  AnimeCubit(
    this._getRemoteSortedAnimeUseCase,
    this._getLocalCategoriesUseCase,
    this._insertLocalCategoryUseCase,
  ) : super(AnimeInitialState());

  final GetRemoteSortedAnimeUseCase _getRemoteSortedAnimeUseCase;
  final GetLocalCategoriesUseCase _getLocalCategoriesUseCase;
  final InsertLocalCategoryUseCase _insertLocalCategoryUseCase;

  onSortedAnime() async {
    final response = await _getRemoteSortedAnimeUseCase();
    if (response is NetworkDataSuccess) {
      await Future.delayed(Constants.previewAnimatedDuration);
      emit(AnimeSortedAnimeState(response?.data ?? []));
      final animeLocal = await _getLocalCategoriesUseCase();
      if (animeLocal.isEmpty) {
        final anime = response?.data?.first.data ?? [];
        for(var item in anime) {
          await _insertLocalCategoryUseCase.call(
            params: {
              "year": item.year,
              "img": item.img,
              "title_en": item.headers?.en ?? "",
              "title_ru": item.headers?.ru ?? "",
              "rating": item.ratings?.rating ?? "",
              "votes": item.ratings?.votes ?? "",
              "genres": item.genres,
            },
          );
        }
      }
    }
  }
}
