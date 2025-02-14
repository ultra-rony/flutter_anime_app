// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_headers_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnimeHeadersEntity _$AnimeHeadersEntityFromJson(Map<String, dynamic> json) {
  return _AnimeHeadersEntity.fromJson(json);
}

/// @nodoc
mixin _$AnimeHeadersEntity {
  String? get ru => throw _privateConstructorUsedError;
  String? get en => throw _privateConstructorUsedError;

  /// Serializes this AnimeHeadersEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimeHeadersEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeHeadersEntityCopyWith<AnimeHeadersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeHeadersEntityCopyWith<$Res> {
  factory $AnimeHeadersEntityCopyWith(
          AnimeHeadersEntity value, $Res Function(AnimeHeadersEntity) then) =
      _$AnimeHeadersEntityCopyWithImpl<$Res, AnimeHeadersEntity>;
  @useResult
  $Res call({String? ru, String? en});
}

/// @nodoc
class _$AnimeHeadersEntityCopyWithImpl<$Res, $Val extends AnimeHeadersEntity>
    implements $AnimeHeadersEntityCopyWith<$Res> {
  _$AnimeHeadersEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeHeadersEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ru = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      ru: freezed == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimeHeadersEntityImplCopyWith<$Res>
    implements $AnimeHeadersEntityCopyWith<$Res> {
  factory _$$AnimeHeadersEntityImplCopyWith(_$AnimeHeadersEntityImpl value,
          $Res Function(_$AnimeHeadersEntityImpl) then) =
      __$$AnimeHeadersEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? ru, String? en});
}

/// @nodoc
class __$$AnimeHeadersEntityImplCopyWithImpl<$Res>
    extends _$AnimeHeadersEntityCopyWithImpl<$Res, _$AnimeHeadersEntityImpl>
    implements _$$AnimeHeadersEntityImplCopyWith<$Res> {
  __$$AnimeHeadersEntityImplCopyWithImpl(_$AnimeHeadersEntityImpl _value,
      $Res Function(_$AnimeHeadersEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeHeadersEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ru = freezed,
    Object? en = freezed,
  }) {
    return _then(_$AnimeHeadersEntityImpl(
      ru: freezed == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeHeadersEntityImpl implements _AnimeHeadersEntity {
  const _$AnimeHeadersEntityImpl({this.ru, this.en});

  factory _$AnimeHeadersEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeHeadersEntityImplFromJson(json);

  @override
  final String? ru;
  @override
  final String? en;

  @override
  String toString() {
    return 'AnimeHeadersEntity(ru: $ru, en: $en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeHeadersEntityImpl &&
            (identical(other.ru, ru) || other.ru == ru) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ru, en);

  /// Create a copy of AnimeHeadersEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeHeadersEntityImplCopyWith<_$AnimeHeadersEntityImpl> get copyWith =>
      __$$AnimeHeadersEntityImplCopyWithImpl<_$AnimeHeadersEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeHeadersEntityImplToJson(
      this,
    );
  }
}

abstract class _AnimeHeadersEntity implements AnimeHeadersEntity {
  const factory _AnimeHeadersEntity({final String? ru, final String? en}) =
      _$AnimeHeadersEntityImpl;

  factory _AnimeHeadersEntity.fromJson(Map<String, dynamic> json) =
      _$AnimeHeadersEntityImpl.fromJson;

  @override
  String? get ru;
  @override
  String? get en;

  /// Create a copy of AnimeHeadersEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeHeadersEntityImplCopyWith<_$AnimeHeadersEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
