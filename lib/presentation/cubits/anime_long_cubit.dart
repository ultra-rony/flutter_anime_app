import 'package:flutter/foundation.dart';
import 'package:flutter_anime_app/core/network/network_data_state.dart';
import 'package:flutter_anime_app/domain/entities/anime_long_entity.dart';
import 'package:flutter_anime_app/domain/use_cases/get_remote_anime_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'anime_long_state.dart';

@injectable
class AnimeLongCubit extends Cubit<AnimeLongState> {
  final GetRemoteAnimeUseCase _getRemoteAnimeUseCase;

  AnimeLongCubit(
    this._getRemoteAnimeUseCase,
  ) : super(AnimeLongInitialState());

  Future<void> onAnimeLong(String animeId) async {
    final response = await _getRemoteAnimeUseCase.call(params: animeId);
    if (response is NetworkDataSuccess) {
      emit(AnimeLongDataState(response!.data!));
    }
  }
}
