// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_category_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCategoryParams {
  String get name => throw _privateConstructorUsedError;
  double? get budget => throw _privateConstructorUsedError;
  int? get color => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;
  bool get isBudget => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCategoryParamsCopyWith<AddCategoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCategoryParamsCopyWith<$Res> {
  factory $AddCategoryParamsCopyWith(
          AddCategoryParams value, $Res Function(AddCategoryParams) then) =
      _$AddCategoryParamsCopyWithImpl<$Res, AddCategoryParams>;
  @useResult
  $Res call(
      {String name,
      double? budget,
      int? color,
      String? description,
      int icon,
      bool isBudget,
      bool isDefault});
}

/// @nodoc
class _$AddCategoryParamsCopyWithImpl<$Res, $Val extends AddCategoryParams>
    implements $AddCategoryParamsCopyWith<$Res> {
  _$AddCategoryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? budget = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? icon = null,
    Object? isBudget = null,
    Object? isDefault = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCategoryParamsImplCopyWith<$Res>
    implements $AddCategoryParamsCopyWith<$Res> {
  factory _$$AddCategoryParamsImplCopyWith(_$AddCategoryParamsImpl value,
          $Res Function(_$AddCategoryParamsImpl) then) =
      __$$AddCategoryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double? budget,
      int? color,
      String? description,
      int icon,
      bool isBudget,
      bool isDefault});
}

/// @nodoc
class __$$AddCategoryParamsImplCopyWithImpl<$Res>
    extends _$AddCategoryParamsCopyWithImpl<$Res, _$AddCategoryParamsImpl>
    implements _$$AddCategoryParamsImplCopyWith<$Res> {
  __$$AddCategoryParamsImplCopyWithImpl(_$AddCategoryParamsImpl _value,
      $Res Function(_$AddCategoryParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? budget = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? icon = null,
    Object? isBudget = null,
    Object? isDefault = null,
  }) {
    return _then(_$AddCategoryParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc

class _$AddCategoryParamsImpl implements _AddCategoryParams {
  const _$AddCategoryParamsImpl(
      {required this.name,
      this.budget,
      this.color,
      this.description,
      required this.icon,
      this.isBudget = false,
      this.isDefault = false});

  @override
  final String name;
  @override
  final double? budget;
  @override
  final int? color;
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
  String toString() {
    return 'AddCategoryParams(name: $name, budget: $budget, color: $color, description: $description, icon: $icon, isBudget: $isBudget, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.isBudget, isBudget) ||
                other.isBudget == isBudget) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, budget, color, description, icon, isBudget, isDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryParamsImplCopyWith<_$AddCategoryParamsImpl> get copyWith =>
      __$$AddCategoryParamsImplCopyWithImpl<_$AddCategoryParamsImpl>(
          this, _$identity);
}

abstract class _AddCategoryParams implements AddCategoryParams {
  const factory _AddCategoryParams(
      {required final String name,
      final double? budget,
      final int? color,
      final String? description,
      required final int icon,
      final bool isBudget,
      final bool isDefault}) = _$AddCategoryParamsImpl;

  @override
  String get name;
  @override
  double? get budget;
  @override
  int? get color;
  @override
  String? get description;
  @override
  int get icon;
  @override
  bool get isBudget;
  @override
  bool get isDefault;
  @override
  @JsonKey(ignore: true)
  _$$AddCategoryParamsImplCopyWith<_$AddCategoryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
