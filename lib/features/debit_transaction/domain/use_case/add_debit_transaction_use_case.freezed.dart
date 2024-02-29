// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_debit_transaction_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddDebitTransactionParams {
  double get amount => throw _privateConstructorUsedError;
  DateTime get currentDateTime => throw _privateConstructorUsedError;
  int get parentId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDebitTransactionParamsCopyWith<AddDebitTransactionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDebitTransactionParamsCopyWith<$Res> {
  factory $AddDebitTransactionParamsCopyWith(AddDebitTransactionParams value,
          $Res Function(AddDebitTransactionParams) then) =
      _$AddDebitTransactionParamsCopyWithImpl<$Res, AddDebitTransactionParams>;
  @useResult
  $Res call({double amount, DateTime currentDateTime, int parentId});
}

/// @nodoc
class _$AddDebitTransactionParamsCopyWithImpl<$Res,
        $Val extends AddDebitTransactionParams>
    implements $AddDebitTransactionParamsCopyWith<$Res> {
  _$AddDebitTransactionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currentDateTime = null,
    Object? parentId = null,
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
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddDebitTransactionParamsImplCopyWith<$Res>
    implements $AddDebitTransactionParamsCopyWith<$Res> {
  factory _$$AddDebitTransactionParamsImplCopyWith(
          _$AddDebitTransactionParamsImpl value,
          $Res Function(_$AddDebitTransactionParamsImpl) then) =
      __$$AddDebitTransactionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, DateTime currentDateTime, int parentId});
}

/// @nodoc
class __$$AddDebitTransactionParamsImplCopyWithImpl<$Res>
    extends _$AddDebitTransactionParamsCopyWithImpl<$Res,
        _$AddDebitTransactionParamsImpl>
    implements _$$AddDebitTransactionParamsImplCopyWith<$Res> {
  __$$AddDebitTransactionParamsImplCopyWithImpl(
      _$AddDebitTransactionParamsImpl _value,
      $Res Function(_$AddDebitTransactionParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currentDateTime = null,
    Object? parentId = null,
  }) {
    return _then(_$AddDebitTransactionParamsImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currentDateTime: null == currentDateTime
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddDebitTransactionParamsImpl implements _AddDebitTransactionParams {
  const _$AddDebitTransactionParamsImpl(
      {required this.amount,
      required this.currentDateTime,
      required this.parentId});

  @override
  final double amount;
  @override
  final DateTime currentDateTime;
  @override
  final int parentId;

  @override
  String toString() {
    return 'AddDebitTransactionParams(amount: $amount, currentDateTime: $currentDateTime, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDebitTransactionParamsImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currentDateTime, currentDateTime) ||
                other.currentDateTime == currentDateTime) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, currentDateTime, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDebitTransactionParamsImplCopyWith<_$AddDebitTransactionParamsImpl>
      get copyWith => __$$AddDebitTransactionParamsImplCopyWithImpl<
          _$AddDebitTransactionParamsImpl>(this, _$identity);
}

abstract class _AddDebitTransactionParams implements AddDebitTransactionParams {
  const factory _AddDebitTransactionParams(
      {required final double amount,
      required final DateTime currentDateTime,
      required final int parentId}) = _$AddDebitTransactionParamsImpl;

  @override
  double get amount;
  @override
  DateTime get currentDateTime;
  @override
  int get parentId;
  @override
  @JsonKey(ignore: true)
  _$$AddDebitTransactionParamsImplCopyWith<_$AddDebitTransactionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
