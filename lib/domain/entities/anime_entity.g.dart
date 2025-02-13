// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeEntityImpl _$$AnimeEntityImplFromJson(Map<String, dynamic> json) =>
    _$AnimeEntityImpl(
      id: json['id'] as String?,
      year: json['year'] as String?,
      img: json['img'] as String?,
      headers: json['headers'] == null
          ? null
          : AnimeHeadersEntity.fromJson(
              json['headers'] as Map<String, dynamic>),
      ratings: json['ratings'] == null
          ? null
          : AnimeRatingEntity.fromJson(json['ratings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnimeEntityImplToJson(_$AnimeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'year': instance.year,
      'img': instance.img,
      'headers': instance.headers,
      'ratings': instance.ratings,
    };
