part of 'anime_long_cubit.dart';

@immutable
sealed class AnimeLongState {}

final class AnimeLongInitialState extends AnimeLongState {}

final class AnimeLongDataState extends AnimeLongState {
  final AnimeLongEntity anime;

  AnimeLongDataState(this.anime);
}
