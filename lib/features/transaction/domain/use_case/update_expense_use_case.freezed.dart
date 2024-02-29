// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_expense_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTransactionParams {
  int get accountId => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  double get currency => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get superId => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateTransactionParamsCopyWith<UpdateTransactionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTransactionParamsCopyWith<$Res> {
  factory $UpdateTransactionParamsCopyWith(UpdateTransactionParams value,
          $Res Function(UpdateTransactionParams) then) =
      _$UpdateTransactionParamsCopyWithImpl<$Res, UpdateTransactionParams>;
  @useResult
  $Res call(
      {int accountId,
      int categoryId,
      double currency,
      String name,
      int superId,
      DateTime time,
      String? description,
      TransactionType type});
}

/// @nodoc
class _$UpdateTransactionParamsCopyWithImpl<$Res,
        $Val extends UpdateTransactionParams>
    implements $UpdateTransactionParamsCopyWith<$Res> {
  _$UpdateTransactionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? categoryId = null,
    Object? currency = null,
    Object? name = null,
    Object? superId = null,
    Object? time = null,
    Object? description = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      superId: null == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTransactionParamsImplCopyWith<$Res>
    implements $UpdateTransactionParamsCopyWith<$Res> {
  factory _$$UpdateTransactionParamsImplCopyWith(
          _$UpdateTransactionParamsImpl value,
          $Res Function(_$UpdateTransactionParamsImpl) then) =
      __$$UpdateTransactionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int accountId,
      int categoryId,
      double currency,
      String name,
      int superId,
      DateTime time,
      String? description,
      TransactionType type});
}

/// @nodoc
class __$$UpdateTransactionParamsImplCopyWithImpl<$Res>
    extends _$UpdateTransactionParamsCopyWithImpl<$Res,
        _$UpdateTransactionParamsImpl>
    implements _$$UpdateTransactionParamsImplCopyWith<$Res> {
  __$$UpdateTransactionParamsImplCopyWithImpl(
      _$UpdateTransactionParamsImpl _value,
      $Res Function(_$UpdateTransactionParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? categoryId = null,
    Object? currency = null,
    Object? name = null,
    Object? superId = null,
    Object? time = null,
    Object? description = freezed,
    Object? type = null,
  }) {
    return _then(_$UpdateTransactionParamsImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      superId: null == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc

class _$UpdateTransactionParamsImpl implements _UpdateTransactionParams {
  const _$UpdateTransactionParamsImpl(
      {required this.accountId,
      required this.categoryId,
      required this.currency,
      required this.name,
      required this.superId,
      required this.time,
      this.description,
      this.type = TransactionType.expense});

  @override
  final int accountId;
  @override
  final int categoryId;
  @override
  final double currency;
  @override
  final String name;
  @override
  final int superId;
  @override
  final DateTime time;
  @override
  final String? description;
  @override
  @JsonKey()
  final TransactionType type;

  @override
  String toString() {
    return 'UpdateTransactionParams(accountId: $accountId, categoryId: $categoryId, currency: $currency, name: $name, superId: $superId, time: $time, description: $description, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionParamsImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.superId, superId) || other.superId == superId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId, categoryId, currency,
      name, superId, time, description, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionParamsImplCopyWith<_$UpdateTransactionParamsImpl>
      get copyWith => __$$UpdateTransactionParamsImplCopyWithImpl<
          _$UpdateTransactionParamsImpl>(this, _$identity);
}

abstract class _UpdateTransactionParams implements UpdateTransactionParams {
  const factory _UpdateTransactionParams(
      {required final int accountId,
      required final int categoryId,
      required final double currency,
      required final String name,
      required final int superId,
      required final DateTime time,
      final String? description,
      final TransactionType type}) = _$UpdateTransactionParamsImpl;

  @override
  int get accountId;
  @override
  int get categoryId;
  @override
  double get currency;
  @override
  String get name;
  @override
  int get superId;
  @override
  DateTime get time;
  @override
  String? get description;
  @override
  TransactionType get type;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTransactionParamsImplCopyWith<_$UpdateTransactionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
