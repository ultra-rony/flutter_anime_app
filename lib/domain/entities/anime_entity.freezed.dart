// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnimeEntity _$AnimeEntityFromJson(Map<String, dynamic> json) {
  return _AnimeEntity.fromJson(json);
}

/// @nodoc
mixin _$AnimeEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  AnimeHeadersEntity? get headers => throw _privateConstructorUsedError;
  AnimeRatingEntity? get ratings => throw _privateConstructorUsedError;
  String? get genres => throw _privateConstructorUsedError;

  /// Serializes this AnimeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeEntityCopyWith<AnimeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeEntityCopyWith<$Res> {
  factory $AnimeEntityCopyWith(
          AnimeEntity value, $Res Function(AnimeEntity) then) =
      _$AnimeEntityCopyWithImpl<$Res, AnimeEntity>;
  @useResult
  $Res call(
      {String? id,
      String? year,
      String? img,
      AnimeHeadersEntity? headers,
      AnimeRatingEntity? ratings,
      String? genres});

  $AnimeHeadersEntityCopyWith<$Res>? get headers;
  $AnimeRatingEntityCopyWith<$Res>? get ratings;
}

/// @nodoc
class _$AnimeEntityCopyWithImpl<$Res, $Val extends AnimeEntity>
    implements $AnimeEntityCopyWith<$Res> {
  _$AnimeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeEntity
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
    ) as $Val);
  }

  /// Create a copy of AnimeEntity
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

  /// Create a copy of AnimeEntity
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
abstract class _$$AnimeEntityImplCopyWith<$Res>
    implements $AnimeEntityCopyWith<$Res> {
  factory _$$AnimeEntityImplCopyWith(
          _$AnimeEntityImpl value, $Res Function(_$AnimeEntityImpl) then) =
      __$$AnimeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? year,
      String? img,
      AnimeHeadersEntity? headers,
      AnimeRatingEntity? ratings,
      String? genres});

  @override
  $AnimeHeadersEntityCopyWith<$Res>? get headers;
  @override
  $AnimeRatingEntityCopyWith<$Res>? get ratings;
}

/// @nodoc
class __$$AnimeEntityImplCopyWithImpl<$Res>
    extends _$AnimeEntityCopyWithImpl<$Res, _$AnimeEntityImpl>
    implements _$$AnimeEntityImplCopyWith<$Res> {
  __$$AnimeEntityImplCopyWithImpl(
      _$AnimeEntityImpl _value, $Res Function(_$AnimeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeEntity
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
  }) {
    return _then(_$AnimeEntityImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeEntityImpl implements _AnimeEntity {
  const _$AnimeEntityImpl(
      {this.id, this.year, this.img, this.headers, this.ratings, this.genres});

  factory _$AnimeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeEntityImplFromJson(json);

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
  String toString() {
    return 'AnimeEntity(id: $id, year: $year, img: $img, headers: $headers, ratings: $ratings, genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.headers, headers) || other.headers == headers) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.genres, genres) || other.genres == genres));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, year, img, headers, ratings, genres);

  /// Create a copy of AnimeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeEntityImplCopyWith<_$AnimeEntityImpl> get copyWith =>
      __$$AnimeEntityImplCopyWithImpl<_$AnimeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeEntityImplToJson(
      this,
    );
  }
}

abstract class _AnimeEntity implements AnimeEntity {
  const factory _AnimeEntity(
      {final String? id,
      final String? year,
      final String? img,
      final AnimeHeadersEntity? headers,
      final AnimeRatingEntity? ratings,
      final String? genres}) = _$AnimeEntityImpl;

  factory _AnimeEntity.fromJson(Map<String, dynamic> json) =
      _$AnimeEntityImpl.fromJson;

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

  /// Create a copy of AnimeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeEntityImplCopyWith<_$AnimeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
