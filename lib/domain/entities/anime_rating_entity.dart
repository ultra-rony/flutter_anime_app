import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_rating_entity.freezed.dart';

part 'anime_rating_entity.g.dart';

@freezed
class AnimeRatingEntity with _$AnimeRatingEntity {
  const factory AnimeRatingEntity({
    String? rating,
    String? votes,
  }) = _AnimeRatingEntity;

  factory AnimeRatingEntity.fromJson(Map<String, Object?> json) =>
      _$AnimeRatingEntityFromJson(json);
}