// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_debit_use.case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateDebitParams {
  String get description => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get currentDateTime => throw _privateConstructorUsedError;
  DateTime get dueDateTime => throw _privateConstructorUsedError;
  DebitType get debtType => throw _privateConstructorUsedError;
  int get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateDebitParamsCopyWith<UpdateDebitParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDebitParamsCopyWith<$Res> {
  factory $UpdateDebitParamsCopyWith(
          UpdateDebitParams value, $Res Function(UpdateDebitParams) then) =
      _$UpdateDebitParamsCopyWithImpl<$Res, UpdateDebitParams>;
  @useResult
  $Res call(
      {String description,
      String name,
      double amount,
      DateTime currentDateTime,
      DateTime dueDateTime,
      DebitType debtType,
      int key});
}

/// @nodoc
class _$UpdateDebitParamsCopyWithImpl<$Res, $Val extends UpdateDebitParams>
    implements $UpdateDebitParamsCopyWith<$Res> {
  _$UpdateDebitParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? name = null,
    Object? amount = null,
    Object? currentDateTime = null,
    Object? dueDateTime = null,
    Object? debtType = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currentDateTime: null == currentDateTime
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDateTime: null == dueDateTime
          ? _value.dueDateTime
          : dueDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      debtType: null == debtType
          ? _value.debtType
          : debtType // ignore: cast_nullable_to_non_nullable
              as DebitType,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateDebitParamsImplCopyWith<$Res>
    implements $UpdateDebitParamsCopyWith<$Res> {
  factory _$$UpdateDebitParamsImplCopyWith(_$UpdateDebitParamsImpl value,
          $Res Function(_$UpdateDebitParamsImpl) then) =
      __$$UpdateDebitParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String name,
      double amount,
      DateTime currentDateTime,
      DateTime dueDateTime,
      DebitType debtType,
      int key});
}

/// @nodoc
class __$$UpdateDebitParamsImplCopyWithImpl<$Res>
    extends _$UpdateDebitParamsCopyWithImpl<$Res, _$UpdateDebitParamsImpl>
    implements _$$UpdateDebitParamsImplCopyWith<$Res> {
  __$$UpdateDebitParamsImplCopyWithImpl(_$UpdateDebitParamsImpl _value,
      $Res Function(_$UpdateDebitParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? name = null,
    Object? amount = null,
    Object? currentDateTime = null,
    Object? dueDateTime = null,
    Object? debtType = null,
    Object? key = null,
  }) {
    return _then(_$UpdateDebitParamsImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currentDateTime: null == currentDateTime
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDateTime: null == dueDateTime
          ? _value.dueDateTime
          : dueDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      debtType: null == debtType
          ? _value.debtType
          : debtType // ignore: cast_nullable_to_non_nullable
              as DebitType,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateDebitParamsImpl implements _UpdateDebitParams {
  const _$UpdateDebitParamsImpl(
      {required this.description,
      required this.name,
      required this.amount,
      required this.currentDateTime,
      required this.dueDateTime,
      required this.debtType,
      required this.key});

  @override
  final String description;
  @override
  final String name;
  @override
  final double amount;
  @override
  final DateTime currentDateTime;
  @override
  final DateTime dueDateTime;
  @override
  final DebitType debtType;
  @override
  final int key;

  @override
  String toString() {
    return 'UpdateDebitParams(description: $description, name: $name, amount: $amount, currentDateTime: $currentDateTime, dueDateTime: $dueDateTime, debtType: $debtType, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDebitParamsImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currentDateTime, currentDateTime) ||
                other.currentDateTime == currentDateTime) &&
            (identical(other.dueDateTime, dueDateTime) ||
                other.dueDateTime == dueDateTime) &&
            (identical(other.debtType, debtType) ||
                other.debtType == debtType) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, name, amount,
      currentDateTime, dueDateTime, debtType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDebitParamsImplCopyWith<_$UpdateDebitParamsImpl> get copyWith =>
      __$$UpdateDebitParamsImplCopyWithImpl<_$UpdateDebitParamsImpl>(
          this, _$identity);
}

abstract class _UpdateDebitParams implements UpdateDebitParams {
  const factory _UpdateDebitParams(
      {required final String description,
      required final String name,
      required final double amount,
      required final DateTime currentDateTime,
      required final DateTime dueDateTime,
      required final DebitType debtType,
      required final int key}) = _$UpdateDebitParamsImpl;

  @override
  String get description;
  @override
  String get name;
  @override
  double get amount;
  @override
  DateTime get currentDateTime;
  @override
  DateTime get dueDateTime;
  @override
  DebitType get debtType;
  @override
  int get key;
  @override
  @JsonKey(ignore: true)
  _$$UpdateDebitParamsImplCopyWith<_$UpdateDebitParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
