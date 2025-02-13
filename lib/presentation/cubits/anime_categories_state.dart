part of 'anime_categories_cubit.dart';

@immutable
sealed class AnimeCategoriesState {}

final class AnimeCategoriesInitialState extends AnimeCategoriesState {}

final class AnimeCategoriesSortedAnimeState extends AnimeCategoriesState {
  final List<CategoryEntity> categories;

  AnimeCategoriesSortedAnimeState(this.categories);
}
