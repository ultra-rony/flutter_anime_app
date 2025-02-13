import 'package:flutter/foundation.dart';
import 'package:flutter_anime_app/core/network/network_data_state.dart';
import 'package:flutter_anime_app/domain/use_cases/get_remote_sorted_anime_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'anime_categories_state.dart';

@injectable
class AnimeCategoriesCubit extends Cubit<AnimeCategoriesState> {
  AnimeCategoriesCubit(this._getRemoteSortedAnimeUseCase) : super(AnimeCategoriesInitialState());

  final GetRemoteSortedAnimeUseCase _getRemoteSortedAnimeUseCase;

  Future<void> onSortedAnime() async {
    final response = await _getRemoteSortedAnimeUseCase();
    if (response is NetworkDataSuccess) {
      print("testrr: ${response!.data!}");
    }
  }
}
