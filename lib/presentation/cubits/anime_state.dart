part of 'anime_cubit.dart';

@immutable
sealed class AnimeCubitState {}

final class AnimeInitialState extends AnimeCubitState {}

final class AnimeSortedAnimeState extends AnimeCubitState {
  final List<CategoryEntity> categories;

  AnimeSortedAnimeState(this.categories);
}
