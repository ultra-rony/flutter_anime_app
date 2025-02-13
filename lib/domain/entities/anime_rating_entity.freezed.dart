// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_rating_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnimeRatingEntity _$AnimeRatingEntityFromJson(Map<String, dynamic> json) {
  return _AnimeRatingEntity.fromJson(json);
}

/// @nodoc
mixin _$AnimeRatingEntity {
  String? get rating => throw _privateConstructorUsedError;
  String? get votes => throw _privateConstructorUsedError;

  /// Serializes this AnimeRatingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimeRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeRatingEntityCopyWith<AnimeRatingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeRatingEntityCopyWith<$Res> {
  factory $AnimeRatingEntityCopyWith(
          AnimeRatingEntity value, $Res Function(AnimeRatingEntity) then) =
      _$AnimeRatingEntityCopyWithImpl<$Res, AnimeRatingEntity>;
  @useResult
  $Res call({String? rating, String? votes});
}

/// @nodoc
class _$AnimeRatingEntityCopyWithImpl<$Res, $Val extends AnimeRatingEntity>
    implements $AnimeRatingEntityCopyWith<$Res> {
  _$AnimeRatingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? votes = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimeRatingEntityImplCopyWith<$Res>
    implements $AnimeRatingEntityCopyWith<$Res> {
  factory _$$AnimeRatingEntityImplCopyWith(_$AnimeRatingEntityImpl value,
          $Res Function(_$AnimeRatingEntityImpl) then) =
      __$$AnimeRatingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rating, String? votes});
}

/// @nodoc
class __$$AnimeRatingEntityImplCopyWithImpl<$Res>
    extends _$AnimeRatingEntityCopyWithImpl<$Res, _$AnimeRatingEntityImpl>
    implements _$$AnimeRatingEntityImplCopyWith<$Res> {
  __$$AnimeRatingEntityImplCopyWithImpl(_$AnimeRatingEntityImpl _value,
      $Res Function(_$AnimeRatingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? votes = freezed,
  }) {
    return _then(_$AnimeRatingEntityImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeRatingEntityImpl implements _AnimeRatingEntity {
  const _$AnimeRatingEntityImpl({this.rating, this.votes});

  factory _$AnimeRatingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeRatingEntityImplFromJson(json);

  @override
  final String? rating;
  @override
  final String? votes;

  @override
  String toString() {
    return 'AnimeRatingEntity(rating: $rating, votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeRatingEntityImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.votes, votes) || other.votes == votes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, votes);

  /// Create a copy of AnimeRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeRatingEntityImplCopyWith<_$AnimeRatingEntityImpl> get copyWith =>
      __$$AnimeRatingEntityImplCopyWithImpl<_$AnimeRatingEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeRatingEntityImplToJson(
      this,
    );
  }
}

abstract class _AnimeRatingEntity implements AnimeRatingEntity {
  const factory _AnimeRatingEntity(
      {final String? rating, final String? votes}) = _$AnimeRatingEntityImpl;

  factory _AnimeRatingEntity.fromJson(Map<String, dynamic> json) =
      _$AnimeRatingEntityImpl.fromJson;

  @override
  String? get rating;
  @override
  String? get votes;

  /// Create a copy of AnimeRatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeRatingEntityImplCopyWith<_$AnimeRatingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
