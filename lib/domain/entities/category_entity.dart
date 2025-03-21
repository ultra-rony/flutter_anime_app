import 'package:flutter_anime_app/domain/entities/anime_entity.dart';
import 'package:flutter_anime_app/domain/entities/category_header_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';

part 'category_entity.g.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    String? orientation,
    CategoryHeaderEntity? headers,
    List<AnimeEntity>? data,
  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, Object?> json) =>
      _$CategoryEntityFromJson(json);
}
