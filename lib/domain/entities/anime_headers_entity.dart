import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_headers_entity.freezed.dart';

part 'anime_headers_entity.g.dart';

@freezed
class AnimeHeadersEntity with _$AnimeHeadersEntity {
  const factory AnimeHeadersEntity({
    String? ru,
    String? en,
  }) = _AnimeHeadersEntity;

  factory AnimeHeadersEntity.fromJson(Map<String, Object?> json) =>
      _$AnimeHeadersEntityFromJson(json);
}