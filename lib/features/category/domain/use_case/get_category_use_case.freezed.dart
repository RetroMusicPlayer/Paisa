// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_category_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCategoryParams {
  int get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetCategoryParamsCopyWith<GetCategoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoryParamsCopyWith<$Res> {
  factory $GetCategoryParamsCopyWith(
          GetCategoryParams value, $Res Function(GetCategoryParams) then) =
      _$GetCategoryParamsCopyWithImpl<$Res, GetCategoryParams>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class _$GetCategoryParamsCopyWithImpl<$Res, $Val extends GetCategoryParams>
    implements $GetCategoryParamsCopyWith<$Res> {
  _$GetCategoryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCategoryParamsImplCopyWith<$Res>
    implements $GetCategoryParamsCopyWith<$Res> {
  factory _$$GetCategoryParamsImplCopyWith(_$GetCategoryParamsImpl value,
          $Res Function(_$GetCategoryParamsImpl) then) =
      __$$GetCategoryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$GetCategoryParamsImplCopyWithImpl<$Res>
    extends _$GetCategoryParamsCopyWithImpl<$Res, _$GetCategoryParamsImpl>
    implements _$$GetCategoryParamsImplCopyWith<$Res> {
  __$$GetCategoryParamsImplCopyWithImpl(_$GetCategoryParamsImpl _value,
      $Res Function(_$GetCategoryParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$GetCategoryParamsImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCategoryParamsImpl implements _GetCategoryParams {
  const _$GetCategoryParamsImpl(this.categoryId);

  @override
  final int categoryId;

  @override
  String toString() {
    return 'GetCategoryParams(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryParamsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryParamsImplCopyWith<_$GetCategoryParamsImpl> get copyWith =>
      __$$GetCategoryParamsImplCopyWithImpl<_$GetCategoryParamsImpl>(
          this, _$identity);
}

abstract class _GetCategoryParams implements GetCategoryParams {
  const factory _GetCategoryParams(final int categoryId) =
      _$GetCategoryParamsImpl;

  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$GetCategoryParamsImplCopyWith<_$GetCategoryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
