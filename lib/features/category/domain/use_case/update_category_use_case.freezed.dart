// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_category_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateCategoryParams {
  int get key => throw _privateConstructorUsedError;
  double? get budget => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;
  bool get isBudget => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateCategoryParamsCopyWith<UpdateCategoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCategoryParamsCopyWith<$Res> {
  factory $UpdateCategoryParamsCopyWith(UpdateCategoryParams value,
          $Res Function(UpdateCategoryParams) then) =
      _$UpdateCategoryParamsCopyWithImpl<$Res, UpdateCategoryParams>;
  @useResult
  $Res call(
      {int key,
      double? budget,
      int color,
      String? description,
      int icon,
      bool isBudget,
      bool isDefault,
      String name});
}

/// @nodoc
class _$UpdateCategoryParamsCopyWithImpl<$Res,
        $Val extends UpdateCategoryParams>
    implements $UpdateCategoryParamsCopyWith<$Res> {
  _$UpdateCategoryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? budget = freezed,
    Object? color = null,
    Object? description = freezed,
    Object? icon = null,
    Object? isBudget = null,
    Object? isDefault = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      isBudget: null == isBudget
          ? _value.isBudget
          : isBudget // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCategoryParamsImplCopyWith<$Res>
    implements $UpdateCategoryParamsCopyWith<$Res> {
  factory _$$UpdateCategoryParamsImplCopyWith(_$UpdateCategoryParamsImpl value,
          $Res Function(_$UpdateCategoryParamsImpl) then) =
      __$$UpdateCategoryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int key,
      double? budget,
      int color,
      String? description,
      int icon,
      bool isBudget,
      bool isDefault,
      String name});
}

/// @nodoc
class __$$UpdateCategoryParamsImplCopyWithImpl<$Res>
    extends _$UpdateCategoryParamsCopyWithImpl<$Res, _$UpdateCategoryParamsImpl>
    implements _$$UpdateCategoryParamsImplCopyWith<$Res> {
  __$$UpdateCategoryParamsImplCopyWithImpl(_$UpdateCategoryParamsImpl _value,
      $Res Function(_$UpdateCategoryParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? budget = freezed,
    Object? color = null,
    Object? description = freezed,
    Object? icon = null,
    Object? isBudget = null,
    Object? isDefault = null,
    Object? name = null,
  }) {
    return _then(_$UpdateCategoryParamsImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      isBudget: null == isBudget
          ? _value.isBudget
          : isBudget // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryParamsImpl implements _UpdateCategoryParams {
  const _$UpdateCategoryParamsImpl(
      {required this.key,
      this.budget,
      required this.color,
      this.description,
      required this.icon,
      this.isBudget = false,
      this.isDefault = false,
      required this.name});

  @override
  final int key;
  @override
  final double? budget;
  @override
  final int color;
  @override
  final String? description;
  @override
  final int icon;
  @override
  @JsonKey()
  final bool isBudget;
  @override
  @JsonKey()
  final bool isDefault;
  @override
  final String name;

  @override
  String toString() {
    return 'UpdateCategoryParams(key: $key, budget: $budget, color: $color, description: $description, icon: $icon, isBudget: $isBudget, isDefault: $isDefault, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryParamsImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.isBudget, isBudget) ||
                other.isBudget == isBudget) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, budget, color, description,
      icon, isBudget, isDefault, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryParamsImplCopyWith<_$UpdateCategoryParamsImpl>
      get copyWith =>
          __$$UpdateCategoryParamsImplCopyWithImpl<_$UpdateCategoryParamsImpl>(
              this, _$identity);
}

abstract class _UpdateCategoryParams implements UpdateCategoryParams {
  const factory _UpdateCategoryParams(
      {required final int key,
      final double? budget,
      required final int color,
      final String? description,
      required final int icon,
      final bool isBudget,
      final bool isDefault,
      required final String name}) = _$UpdateCategoryParamsImpl;

  @override
  int get key;
  @override
  double? get budget;
  @override
  int get color;
  @override
  String? get description;
  @override
  int get icon;
  @override
  bool get isBudget;
  @override
  bool get isDefault;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCategoryParamsImplCopyWith<_$UpdateCategoryParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
