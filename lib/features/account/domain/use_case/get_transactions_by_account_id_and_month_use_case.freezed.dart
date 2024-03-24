// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_transactions_by_account_id_and_month_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetTransactionsByAccountIdAndMonthParams {
  int get accountId => throw _privateConstructorUsedError;
  DateTime get month => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetTransactionsByAccountIdAndMonthParamsCopyWith<
          GetTransactionsByAccountIdAndMonthParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTransactionsByAccountIdAndMonthParamsCopyWith<$Res> {
  factory $GetTransactionsByAccountIdAndMonthParamsCopyWith(
          GetTransactionsByAccountIdAndMonthParams value,
          $Res Function(GetTransactionsByAccountIdAndMonthParams) then) =
      _$GetTransactionsByAccountIdAndMonthParamsCopyWithImpl<$Res,
          GetTransactionsByAccountIdAndMonthParams>;
  @useResult
  $Res call({int accountId, DateTime month});
}

/// @nodoc
class _$GetTransactionsByAccountIdAndMonthParamsCopyWithImpl<$Res,
        $Val extends GetTransactionsByAccountIdAndMonthParams>
    implements $GetTransactionsByAccountIdAndMonthParamsCopyWith<$Res> {
  _$GetTransactionsByAccountIdAndMonthParamsCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? month = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTransactionsByAccountIdAndMonthParamsImplCopyWith<$Res>
    implements $GetTransactionsByAccountIdAndMonthParamsCopyWith<$Res> {
  factory _$$GetTransactionsByAccountIdAndMonthParamsImplCopyWith(
          _$GetTransactionsByAccountIdAndMonthParamsImpl value,
          $Res Function(_$GetTransactionsByAccountIdAndMonthParamsImpl) then) =
      __$$GetTransactionsByAccountIdAndMonthParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int accountId, DateTime month});
}

/// @nodoc
class __$$GetTransactionsByAccountIdAndMonthParamsImplCopyWithImpl<$Res>
    extends _$GetTransactionsByAccountIdAndMonthParamsCopyWithImpl<$Res,
        _$GetTransactionsByAccountIdAndMonthParamsImpl>
    implements _$$GetTransactionsByAccountIdAndMonthParamsImplCopyWith<$Res> {
  __$$GetTransactionsByAccountIdAndMonthParamsImplCopyWithImpl(
      _$GetTransactionsByAccountIdAndMonthParamsImpl _value,
      $Res Function(_$GetTransactionsByAccountIdAndMonthParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? month = null,
  }) {
    return _then(_$GetTransactionsByAccountIdAndMonthParamsImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetTransactionsByAccountIdAndMonthParamsImpl
    implements _GetTransactionsByAccountIdAndMonthParams {
  const _$GetTransactionsByAccountIdAndMonthParamsImpl(
      {required this.accountId, required this.month});

  @override
  final int accountId;
  @override
  final DateTime month;

  @override
  String toString() {
    return 'GetTransactionsByAccountIdAndMonthParams(accountId: $accountId, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTransactionsByAccountIdAndMonthParamsImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTransactionsByAccountIdAndMonthParamsImplCopyWith<
          _$GetTransactionsByAccountIdAndMonthParamsImpl>
      get copyWith =>
          __$$GetTransactionsByAccountIdAndMonthParamsImplCopyWithImpl<
              _$GetTransactionsByAccountIdAndMonthParamsImpl>(this, _$identity);
}

abstract class _GetTransactionsByAccountIdAndMonthParams
    implements GetTransactionsByAccountIdAndMonthParams {
  const factory _GetTransactionsByAccountIdAndMonthParams(
          {required final int accountId, required final DateTime month}) =
      _$GetTransactionsByAccountIdAndMonthParamsImpl;

  @override
  int get accountId;
  @override
  DateTime get month;
  @override
  @JsonKey(ignore: true)
  _$$GetTransactionsByAccountIdAndMonthParamsImplCopyWith<
          _$GetTransactionsByAccountIdAndMonthParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
