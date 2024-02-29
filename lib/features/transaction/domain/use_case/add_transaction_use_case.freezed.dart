// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTransactionParams {
  String get name => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TransactionType get transactionType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTransactionParamsCopyWith<AddTransactionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionParamsCopyWith<$Res> {
  factory $AddTransactionParamsCopyWith(AddTransactionParams value,
          $Res Function(AddTransactionParams) then) =
      _$AddTransactionParamsCopyWithImpl<$Res, AddTransactionParams>;
  @useResult
  $Res call(
      {String name,
      DateTime time,
      double amount,
      int categoryId,
      int accountId,
      String? description,
      TransactionType transactionType});
}

/// @nodoc
class _$AddTransactionParamsCopyWithImpl<$Res,
        $Val extends AddTransactionParams>
    implements $AddTransactionParamsCopyWith<$Res> {
  _$AddTransactionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? time = null,
    Object? amount = null,
    Object? categoryId = null,
    Object? accountId = null,
    Object? description = freezed,
    Object? transactionType = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTransactionParamsImplCopyWith<$Res>
    implements $AddTransactionParamsCopyWith<$Res> {
  factory _$$AddTransactionParamsImplCopyWith(_$AddTransactionParamsImpl value,
          $Res Function(_$AddTransactionParamsImpl) then) =
      __$$AddTransactionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime time,
      double amount,
      int categoryId,
      int accountId,
      String? description,
      TransactionType transactionType});
}

/// @nodoc
class __$$AddTransactionParamsImplCopyWithImpl<$Res>
    extends _$AddTransactionParamsCopyWithImpl<$Res, _$AddTransactionParamsImpl>
    implements _$$AddTransactionParamsImplCopyWith<$Res> {
  __$$AddTransactionParamsImplCopyWithImpl(_$AddTransactionParamsImpl _value,
      $Res Function(_$AddTransactionParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? time = null,
    Object? amount = null,
    Object? categoryId = null,
    Object? accountId = null,
    Object? description = freezed,
    Object? transactionType = null,
  }) {
    return _then(_$AddTransactionParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc

class _$AddTransactionParamsImpl implements _AddTransactionParams {
  const _$AddTransactionParamsImpl(
      {required this.name,
      required this.time,
      required this.amount,
      required this.categoryId,
      required this.accountId,
      this.description,
      this.transactionType = TransactionType.expense});

  @override
  final String name;
  @override
  final DateTime time;
  @override
  final double amount;
  @override
  final int categoryId;
  @override
  final int accountId;
  @override
  final String? description;
  @override
  @JsonKey()
  final TransactionType transactionType;

  @override
  String toString() {
    return 'AddTransactionParams(name: $name, time: $time, amount: $amount, categoryId: $categoryId, accountId: $accountId, description: $description, transactionType: $transactionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, time, amount, categoryId,
      accountId, description, transactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionParamsImplCopyWith<_$AddTransactionParamsImpl>
      get copyWith =>
          __$$AddTransactionParamsImplCopyWithImpl<_$AddTransactionParamsImpl>(
              this, _$identity);
}

abstract class _AddTransactionParams implements AddTransactionParams {
  const factory _AddTransactionParams(
      {required final String name,
      required final DateTime time,
      required final double amount,
      required final int categoryId,
      required final int accountId,
      final String? description,
      final TransactionType transactionType}) = _$AddTransactionParamsImpl;

  @override
  String get name;
  @override
  DateTime get time;
  @override
  double get amount;
  @override
  int get categoryId;
  @override
  int get accountId;
  @override
  String? get description;
  @override
  TransactionType get transactionType;
  @override
  @JsonKey(ignore: true)
  _$$AddTransactionParamsImplCopyWith<_$AddTransactionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
