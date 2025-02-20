// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_long_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeLongEntityImpl _$$AnimeLongEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimeLongEntityImpl(
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
      genres: json['genres'] as String?,
      type: json['type'] as String?,
      numComments: json['num_comments'] as String?,
      numEpisod: json['num_episod'] as String?,
      numEpisodReleas: json['num_episod_releas'] as String?,
      sOption: json['s_option'] as String?,
      producer: json['producer'] as String?,
      trailer: json['trailer'] as String?,
      screenshots: (json['screenshots'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => AnimeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimeLongEntityImplToJson(
        _$AnimeLongEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'year': instance.year,
      'img': instance.img,
      'headers': instance.headers,
      'ratings': instance.ratings,
      'genres': instance.genres,
      'type': instance.type,
      'num_comments': instance.numComments,
      'num_episod': instance.numEpisod,
      'num_episod_releas': instance.numEpisodReleas,
      's_option': instance.sOption,
      'producer': instance.producer,
      'trailer': instance.trailer,
      'screenshots': instance.screenshots,
      'description': instance.description,
      'recommendations': instance.recommendations,
    };
