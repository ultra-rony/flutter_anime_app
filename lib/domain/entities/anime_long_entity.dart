import 'package:flutter_anime_app/domain/entities/anime_entity.dart';
import 'package:flutter_anime_app/domain/entities/anime_headers_entity.dart';
import 'package:flutter_anime_app/domain/entities/anime_rating_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_long_entity.freezed.dart';

part 'anime_long_entity.g.dart';

@freezed
class AnimeLongEntity with _$AnimeLongEntity {
  const factory AnimeLongEntity({
    String? id,
    String? year,
    String? img,
    AnimeHeadersEntity? headers,
    AnimeRatingEntity? ratings,
    String? genres,
    String? type,
    @JsonKey(name: 'num_comments') String? numComments,
    @JsonKey(name: 'num_episod') String? numEpisod,
    @JsonKey(name: 'num_episod_releas') String? numEpisodReleas,
    @JsonKey(name: 's_option') String? sOption,
    String? producer,
    String? trailer,
    List<String>? screenshots,
    String? description,
    List<AnimeEntity>? recommendations,
  }) = _AnimeLongEntity;

  factory AnimeLongEntity.fromJson(Map<String, Object?> json) =>
      _$AnimeLongEntityFromJson(json);
}
