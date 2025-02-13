import 'package:flutter_anime_app/domain/entities/anime_headers_entity.dart';
import 'package:flutter_anime_app/domain/entities/anime_rating_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_entity.freezed.dart';

part 'anime_entity.g.dart';

@freezed
class AnimeEntity with _$AnimeEntity {
  const factory AnimeEntity({
    String? id,
    String? year,
    String? img,
    AnimeHeadersEntity? headers,
    AnimeRatingEntity? ratings,
  }) = _AnimeEntity;

  factory AnimeEntity.fromJson(Map<String, Object?> json) =>
      _$AnimeEntityFromJson(json);
}
