// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_category_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteCategoryParams {
  int get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteCategoryParamsCopyWith<DeleteCategoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCategoryParamsCopyWith<$Res> {
  factory $DeleteCategoryParamsCopyWith(DeleteCategoryParams value,
          $Res Function(DeleteCategoryParams) then) =
      _$DeleteCategoryParamsCopyWithImpl<$Res, DeleteCategoryParams>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class _$DeleteCategoryParamsCopyWithImpl<$Res,
        $Val extends DeleteCategoryParams>
    implements $DeleteCategoryParamsCopyWith<$Res> {
  _$DeleteCategoryParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteCategoryParamsImplCopyWith<$Res>
    implements $DeleteCategoryParamsCopyWith<$Res> {
  factory _$$DeleteCategoryParamsImplCopyWith(_$DeleteCategoryParamsImpl value,
          $Res Function(_$DeleteCategoryParamsImpl) then) =
      __$$DeleteCategoryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$DeleteCategoryParamsImplCopyWithImpl<$Res>
    extends _$DeleteCategoryParamsCopyWithImpl<$Res, _$DeleteCategoryParamsImpl>
    implements _$$DeleteCategoryParamsImplCopyWith<$Res> {
  __$$DeleteCategoryParamsImplCopyWithImpl(_$DeleteCategoryParamsImpl _value,
      $Res Function(_$DeleteCategoryParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$DeleteCategoryParamsImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryParamsImpl implements _DeleteCategoryParams {
  const _$DeleteCategoryParamsImpl(this.categoryId);

  @override
  final int categoryId;

  @override
  String toString() {
    return 'DeleteCategoryParams(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryParamsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryParamsImplCopyWith<_$DeleteCategoryParamsImpl>
      get copyWith =>
          __$$DeleteCategoryParamsImplCopyWithImpl<_$DeleteCategoryParamsImpl>(
              this, _$identity);
}

abstract class _DeleteCategoryParams implements DeleteCategoryParams {
  const factory _DeleteCategoryParams(final int categoryId) =
      _$DeleteCategoryParamsImpl;

  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCategoryParamsImplCopyWith<_$DeleteCategoryParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
