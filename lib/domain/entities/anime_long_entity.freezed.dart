// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_long_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnimeLongEntity _$AnimeLongEntityFromJson(Map<String, dynamic> json) {
  return _AnimeLongEntity.fromJson(json);
}

/// @nodoc
mixin _$AnimeLongEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  AnimeHeadersEntity? get headers => throw _privateConstructorUsedError;
  AnimeRatingEntity? get ratings => throw _privateConstructorUsedError;
  String? get genres => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_comments')
  String? get numComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_episod')
  String? get numEpisod => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_episod_releas')
  String? get numEpisodReleas => throw _privateConstructorUsedError;
  @JsonKey(name: 's_option')
  String? get sOption => throw _privateConstructorUsedError;
  String? get producer => throw _privateConstructorUsedError;
  String? get trailer => throw _privateConstructorUsedError;
  List<String>? get screenshots => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<AnimeEntity>? get recommendations => throw _privateConstructorUsedError;

  /// Serializes this AnimeLongEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimeLongEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeLongEntityCopyWith<AnimeLongEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeLongEntityCopyWith<$Res> {
  factory $AnimeLongEntityCopyWith(
          AnimeLongEntity value, $Res Function(AnimeLongEntity) then) =
      _$AnimeLongEntityCopyWithImpl<$Res, AnimeLongEntity>;
  @useResult
  $Res call(
      {String? id,
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
      List<AnimeEntity>? recommendations});

  $AnimeHeadersEntityCopyWith<$Res>? get headers;
  $AnimeRatingEntityCopyWith<$Res>? get ratings;
}

/// @nodoc
class _$AnimeLongEntityCopyWithImpl<$Res, $Val extends AnimeLongEntity>
    implements $AnimeLongEntityCopyWith<$Res> {
  _$AnimeLongEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeLongEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? year = freezed,
    Object? img = freezed,
    Object? headers = freezed,
    Object? ratings = freezed,
    Object? genres = freezed,
    Object? type = freezed,
    Object? numComments = freezed,
    Object? numEpisod = freezed,
    Object? numEpisodReleas = freezed,
    Object? sOption = freezed,
    Object? producer = freezed,
    Object? trailer = freezed,
    Object? screenshots = freezed,
    Object? description = freezed,
    Object? recommendations = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as AnimeHeadersEntity?,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as AnimeRatingEntity?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      numComments: freezed == numComments
          ? _value.numComments
          : numComments // ignore: cast_nullable_to_non_nullable
              as String?,
      numEpisod: freezed == numEpisod
          ? _value.numEpisod
          : numEpisod // ignore: cast_nullable_to_non_nullable
              as String?,
      numEpisodReleas: freezed == numEpisodReleas
          ? _value.numEpisodReleas
          : numEpisodReleas // ignore: cast_nullable_to_non_nullable
              as String?,
      sOption: freezed == sOption
          ? _value.sOption
          : sOption // ignore: cast_nullable_to_non_nullable
              as String?,
      producer: freezed == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String?,
      trailer: freezed == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as String?,
      screenshots: freezed == screenshots
          ? _value.screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendations: freezed == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<AnimeEntity>?,
    ) as $Val);
  }

  /// Create a copy of AnimeLongEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimeHeadersEntityCopyWith<$Res>? get headers {
    if (_value.headers == null) {
      return null;
    }

    return $AnimeHeadersEntityCopyWith<$Res>(_value.headers!, (value) {
      return _then(_value.copyWith(headers: value) as $Val);
    });
  }

  /// Create a copy of AnimeLongEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimeRatingEntityCopyWith<$Res>? get ratings {
    if (_value.ratings == null) {
      return null;
    }

    return $AnimeRatingEntityCopyWith<$Res>(_value.ratings!, (value) {
      return _then(_value.copyWith(ratings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimeLongEntityImplCopyWith<$Res>
    implements $AnimeLongEntityCopyWith<$Res> {
  factory _$$AnimeLongEntityImplCopyWith(_$AnimeLongEntityImpl value,
          $Res Function(_$AnimeLongEntityImpl) then) =
      __$$AnimeLongEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      List<AnimeEntity>? recommendations});

  @override
  $AnimeHeadersEntityCopyWith<$Res>? get headers;
  @override
  $AnimeRatingEntityCopyWith<$Res>? get ratings;
}

/// @nodoc
class __$$AnimeLongEntityImplCopyWithImpl<$Res>
    extends _$AnimeLongEntityCopyWithImpl<$Res, _$AnimeLongEntityImpl>
    implements _$$AnimeLongEntityImplCopyWith<$Res> {
  __$$AnimeLongEntityImplCopyWithImpl(
      _$AnimeLongEntityImpl _value, $Res Function(_$AnimeLongEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeLongEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? year = freezed,
    Object? img = freezed,
    Object? headers = freezed,
    Object? ratings = freezed,
    Object? genres = freezed,
    Object? type = freezed,
    Object? numComments = freezed,
    Object? numEpisod = freezed,
    Object? numEpisodReleas = freezed,
    Object? sOption = freezed,
    Object? producer = freezed,
    Object? trailer = freezed,
    Object? screenshots = freezed,
    Object? description = freezed,
    Object? recommendations = freezed,
  }) {
    return _then(_$AnimeLongEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as AnimeHeadersEntity?,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as AnimeRatingEntity?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      numComments: freezed == numComments
          ? _value.numComments
          : numComments // ignore: cast_nullable_to_non_nullable
              as String?,
      numEpisod: freezed == numEpisod
          ? _value.numEpisod
          : numEpisod // ignore: cast_nullable_to_non_nullable
              as String?,
      numEpisodReleas: freezed == numEpisodReleas
          ? _value.numEpisodReleas
          : numEpisodReleas // ignore: cast_nullable_to_non_nullable
              as String?,
      sOption: freezed == sOption
          ? _value.sOption
          : sOption // ignore: cast_nullable_to_non_nullable
              as String?,
      producer: freezed == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String?,
      trailer: freezed == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as String?,
      screenshots: freezed == screenshots
          ? _value._screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendations: freezed == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<AnimeEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeLongEntityImpl implements _AnimeLongEntity {
  const _$AnimeLongEntityImpl(
      {this.id,
      this.year,
      this.img,
      this.headers,
      this.ratings,
      this.genres,
      this.type,
      @JsonKey(name: 'num_comments') this.numComments,
      @JsonKey(name: 'num_episod') this.numEpisod,
      @JsonKey(name: 'num_episod_releas') this.numEpisodReleas,
      @JsonKey(name: 's_option') this.sOption,
      this.producer,
      this.trailer,
      final List<String>? screenshots,
      this.description,
      final List<AnimeEntity>? recommendations})
      : _screenshots = screenshots,
        _recommendations = recommendations;

  factory _$AnimeLongEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeLongEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? year;
  @override
  final String? img;
  @override
  final AnimeHeadersEntity? headers;
  @override
  final AnimeRatingEntity? ratings;
  @override
  final String? genres;
  @override
  final String? type;
  @override
  @JsonKey(name: 'num_comments')
  final String? numComments;
  @override
  @JsonKey(name: 'num_episod')
  final String? numEpisod;
  @override
  @JsonKey(name: 'num_episod_releas')
  final String? numEpisodReleas;
  @override
  @JsonKey(name: 's_option')
  final String? sOption;
  @override
  final String? producer;
  @override
  final String? trailer;
  final List<String>? _screenshots;
  @override
  List<String>? get screenshots {
    final value = _screenshots;
    if (value == null) return null;
    if (_screenshots is EqualUnmodifiableListView) return _screenshots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  final List<AnimeEntity>? _recommendations;
  @override
  List<AnimeEntity>? get recommendations {
    final value = _recommendations;
    if (value == null) return null;
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnimeLongEntity(id: $id, year: $year, img: $img, headers: $headers, ratings: $ratings, genres: $genres, type: $type, numComments: $numComments, numEpisod: $numEpisod, numEpisodReleas: $numEpisodReleas, sOption: $sOption, producer: $producer, trailer: $trailer, screenshots: $screenshots, description: $description, recommendations: $recommendations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeLongEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.headers, headers) || other.headers == headers) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.genres, genres) || other.genres == genres) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.numComments, numComments) ||
                other.numComments == numComments) &&
            (identical(other.numEpisod, numEpisod) ||
                other.numEpisod == numEpisod) &&
            (identical(other.numEpisodReleas, numEpisodReleas) ||
                other.numEpisodReleas == numEpisodReleas) &&
            (identical(other.sOption, sOption) || other.sOption == sOption) &&
            (identical(other.producer, producer) ||
                other.producer == producer) &&
            (identical(other.trailer, trailer) || other.trailer == trailer) &&
            const DeepCollectionEquality()
                .equals(other._screenshots, _screenshots) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      year,
      img,
      headers,
      ratings,
      genres,
      type,
      numComments,
      numEpisod,
      numEpisodReleas,
      sOption,
      producer,
      trailer,
      const DeepCollectionEquality().hash(_screenshots),
      description,
      const DeepCollectionEquality().hash(_recommendations));

  /// Create a copy of AnimeLongEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeLongEntityImplCopyWith<_$AnimeLongEntityImpl> get copyWith =>
      __$$AnimeLongEntityImplCopyWithImpl<_$AnimeLongEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeLongEntityImplToJson(
      this,
    );
  }
}

abstract class _AnimeLongEntity implements AnimeLongEntity {
  const factory _AnimeLongEntity(
      {final String? id,
      final String? year,
      final String? img,
      final AnimeHeadersEntity? headers,
      final AnimeRatingEntity? ratings,
      final String? genres,
      final String? type,
      @JsonKey(name: 'num_comments') final String? numComments,
      @JsonKey(name: 'num_episod') final String? numEpisod,
      @JsonKey(name: 'num_episod_releas') final String? numEpisodReleas,
      @JsonKey(name: 's_option') final String? sOption,
      final String? producer,
      final String? trailer,
      final List<String>? screenshots,
      final String? description,
      final List<AnimeEntity>? recommendations}) = _$AnimeLongEntityImpl;

  factory _AnimeLongEntity.fromJson(Map<String, dynamic> json) =
      _$AnimeLongEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get year;
  @override
  String? get img;
  @override
  AnimeHeadersEntity? get headers;
  @override
  AnimeRatingEntity? get ratings;
  @override
  String? get genres;
  @override
  String? get type;
  @override
  @JsonKey(name: 'num_comments')
  String? get numComments;
  @override
  @JsonKey(name: 'num_episod')
  String? get numEpisod;
  @override
  @JsonKey(name: 'num_episod_releas')
  String? get numEpisodReleas;
  @override
  @JsonKey(name: 's_option')
  String? get sOption;
  @override
  String? get producer;
  @override
  String? get trailer;
  @override
  List<String>? get screenshots;
  @override
  String? get description;
  @override
  List<AnimeEntity>? get recommendations;

  /// Create a copy of AnimeLongEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeLongEntityImplCopyWith<_$AnimeLongEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
