// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_header_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryHeaderEntity _$CategoryHeaderEntityFromJson(Map<String, dynamic> json) {
  return _CategoryHeaderEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoryHeaderEntity {
  bool? get hide => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this CategoryHeaderEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryHeaderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryHeaderEntityCopyWith<CategoryHeaderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryHeaderEntityCopyWith<$Res> {
  factory $CategoryHeaderEntityCopyWith(CategoryHeaderEntity value,
          $Res Function(CategoryHeaderEntity) then) =
      _$CategoryHeaderEntityCopyWithImpl<$Res, CategoryHeaderEntity>;
  @useResult
  $Res call({bool? hide, String? title});
}

/// @nodoc
class _$CategoryHeaderEntityCopyWithImpl<$Res,
        $Val extends CategoryHeaderEntity>
    implements $CategoryHeaderEntityCopyWith<$Res> {
  _$CategoryHeaderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryHeaderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hide = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryHeaderEntityImplCopyWith<$Res>
    implements $CategoryHeaderEntityCopyWith<$Res> {
  factory _$$CategoryHeaderEntityImplCopyWith(_$CategoryHeaderEntityImpl value,
          $Res Function(_$CategoryHeaderEntityImpl) then) =
      __$$CategoryHeaderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? hide, String? title});
}

/// @nodoc
class __$$CategoryHeaderEntityImplCopyWithImpl<$Res>
    extends _$CategoryHeaderEntityCopyWithImpl<$Res, _$CategoryHeaderEntityImpl>
    implements _$$CategoryHeaderEntityImplCopyWith<$Res> {
  __$$CategoryHeaderEntityImplCopyWithImpl(_$CategoryHeaderEntityImpl _value,
      $Res Function(_$CategoryHeaderEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryHeaderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hide = freezed,
    Object? title = freezed,
  }) {
    return _then(_$CategoryHeaderEntityImpl(
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryHeaderEntityImpl implements _CategoryHeaderEntity {
  const _$CategoryHeaderEntityImpl({this.hide, this.title});

  factory _$CategoryHeaderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryHeaderEntityImplFromJson(json);

  @override
  final bool? hide;
  @override
  final String? title;

  @override
  String toString() {
    return 'CategoryHeaderEntity(hide: $hide, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryHeaderEntityImpl &&
            (identical(other.hide, hide) || other.hide == hide) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hide, title);

  /// Create a copy of CategoryHeaderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryHeaderEntityImplCopyWith<_$CategoryHeaderEntityImpl>
      get copyWith =>
          __$$CategoryHeaderEntityImplCopyWithImpl<_$CategoryHeaderEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryHeaderEntityImplToJson(
      this,
    );
  }
}

abstract class _CategoryHeaderEntity implements CategoryHeaderEntity {
  const factory _CategoryHeaderEntity({final bool? hide, final String? title}) =
      _$CategoryHeaderEntityImpl;

  factory _CategoryHeaderEntity.fromJson(Map<String, dynamic> json) =
      _$CategoryHeaderEntityImpl.fromJson;

  @override
  bool? get hide;
  @override
  String? get title;

  /// Create a copy of CategoryHeaderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryHeaderEntityImplCopyWith<_$CategoryHeaderEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
