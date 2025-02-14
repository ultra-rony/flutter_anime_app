import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_header_entity.freezed.dart';

part 'category_header_entity.g.dart';

@freezed
class CategoryHeaderEntity with _$CategoryHeaderEntity {
  const factory CategoryHeaderEntity({
    bool? hide,
    String? title,
  }) = _CategoryHeaderEntity;

  factory CategoryHeaderEntity.fromJson(Map<String, Object?> json) =>
      _$CategoryHeaderEntityFromJson(json);
}
