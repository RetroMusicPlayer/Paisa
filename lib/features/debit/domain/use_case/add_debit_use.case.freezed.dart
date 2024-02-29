// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_debit_use.case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParamsAddDebit {
  double get amount => throw _privateConstructorUsedError;
  DateTime get currentDateTime => throw _privateConstructorUsedError;
  DebitType get debtType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get dueDateTime => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParamsAddDebitCopyWith<ParamsAddDebit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamsAddDebitCopyWith<$Res> {
  factory $ParamsAddDebitCopyWith(
          ParamsAddDebit value, $Res Function(ParamsAddDebit) then) =
      _$ParamsAddDebitCopyWithImpl<$Res, ParamsAddDebit>;
  @useResult
  $Res call(
      {double amount,
      DateTime currentDateTime,
      DebitType debtType,
      String description,
      DateTime dueDateTime,
      String name});
}

/// @nodoc
class _$ParamsAddDebitCopyWithImpl<$Res, $Val extends ParamsAddDebit>
    implements $ParamsAddDebitCopyWith<$Res> {
  _$ParamsAddDebitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currentDateTime = null,
    Object? debtType = null,
    Object? description = null,
    Object? dueDateTime = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currentDateTime: null == currentDateTime
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      debtType: null == debtType
          ? _value.debtType
          : debtType // ignore: cast_nullable_to_non_nullable
              as DebitType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDateTime: null == dueDateTime
          ? _value.dueDateTime
          : dueDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParamsAddDebitImplCopyWith<$Res>
    implements $ParamsAddDebitCopyWith<$Res> {
  factory _$$ParamsAddDebitImplCopyWith(_$ParamsAddDebitImpl value,
          $Res Function(_$ParamsAddDebitImpl) then) =
      __$$ParamsAddDebitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double amount,
      DateTime currentDateTime,
      DebitType debtType,
      String description,
      DateTime dueDateTime,
      String name});
}

/// @nodoc
class __$$ParamsAddDebitImplCopyWithImpl<$Res>
    extends _$ParamsAddDebitCopyWithImpl<$Res, _$ParamsAddDebitImpl>
    implements _$$ParamsAddDebitImplCopyWith<$Res> {
  __$$ParamsAddDebitImplCopyWithImpl(
      _$ParamsAddDebitImpl _value, $Res Function(_$ParamsAddDebitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currentDateTime = null,
    Object? debtType = null,
    Object? description = null,
    Object? dueDateTime = null,
    Object? name = null,
  }) {
    return _then(_$ParamsAddDebitImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currentDateTime: null == currentDateTime
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      debtType: null == debtType
          ? _value.debtType
          : debtType // ignore: cast_nullable_to_non_nullable
              as DebitType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDateTime: null == dueDateTime
          ? _value.dueDateTime
          : dueDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParamsAddDebitImpl implements _ParamsAddDebit {
  const _$ParamsAddDebitImpl(
      {required this.amount,
      required this.currentDateTime,
      required this.debtType,
      required this.description,
      required this.dueDateTime,
      required this.name});

  @override
  final double amount;
  @override
  final DateTime currentDateTime;
  @override
  final DebitType debtType;
  @override
  final String description;
  @override
  final DateTime dueDateTime;
  @override
  final String name;

  @override
  String toString() {
    return 'ParamsAddDebit(amount: $amount, currentDateTime: $currentDateTime, debtType: $debtType, description: $description, dueDateTime: $dueDateTime, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParamsAddDebitImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currentDateTime, currentDateTime) ||
                other.currentDateTime == currentDateTime) &&
            (identical(other.debtType, debtType) ||
                other.debtType == debtType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDateTime, dueDateTime) ||
                other.dueDateTime == dueDateTime) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, currentDateTime,
      debtType, description, dueDateTime, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParamsAddDebitImplCopyWith<_$ParamsAddDebitImpl> get copyWith =>
      __$$ParamsAddDebitImplCopyWithImpl<_$ParamsAddDebitImpl>(
          this, _$identity);
}

abstract class _ParamsAddDebit implements ParamsAddDebit {
  const factory _ParamsAddDebit(
      {required final double amount,
      required final DateTime currentDateTime,
      required final DebitType debtType,
      required final String description,
      required final DateTime dueDateTime,
      required final String name}) = _$ParamsAddDebitImpl;

  @override
  double get amount;
  @override
  DateTime get currentDateTime;
  @override
  DebitType get debtType;
  @override
  String get description;
  @override
  DateTime get dueDateTime;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ParamsAddDebitImplCopyWith<_$ParamsAddDebitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
