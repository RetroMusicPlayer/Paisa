// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_debit_transactions_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetDebitTransactionsParams {
  int get debitId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetDebitTransactionsParamsCopyWith<GetDebitTransactionsParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDebitTransactionsParamsCopyWith<$Res> {
  factory $GetDebitTransactionsParamsCopyWith(GetDebitTransactionsParams value,
          $Res Function(GetDebitTransactionsParams) then) =
      _$GetDebitTransactionsParamsCopyWithImpl<$Res,
          GetDebitTransactionsParams>;
  @useResult
  $Res call({int debitId});
}

/// @nodoc
class _$GetDebitTransactionsParamsCopyWithImpl<$Res,
        $Val extends GetDebitTransactionsParams>
    implements $GetDebitTransactionsParamsCopyWith<$Res> {
  _$GetDebitTransactionsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debitId = null,
  }) {
    return _then(_value.copyWith(
      debitId: null == debitId
          ? _value.debitId
          : debitId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDebitTransactionsParamsImplCopyWith<$Res>
    implements $GetDebitTransactionsParamsCopyWith<$Res> {
  factory _$$GetDebitTransactionsParamsImplCopyWith(
          _$GetDebitTransactionsParamsImpl value,
          $Res Function(_$GetDebitTransactionsParamsImpl) then) =
      __$$GetDebitTransactionsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int debitId});
}

/// @nodoc
class __$$GetDebitTransactionsParamsImplCopyWithImpl<$Res>
    extends _$GetDebitTransactionsParamsCopyWithImpl<$Res,
        _$GetDebitTransactionsParamsImpl>
    implements _$$GetDebitTransactionsParamsImplCopyWith<$Res> {
  __$$GetDebitTransactionsParamsImplCopyWithImpl(
      _$GetDebitTransactionsParamsImpl _value,
      $Res Function(_$GetDebitTransactionsParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debitId = null,
  }) {
    return _then(_$GetDebitTransactionsParamsImpl(
      null == debitId
          ? _value.debitId
          : debitId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDebitTransactionsParamsImpl implements _GetDebitTransactionsParams {
  const _$GetDebitTransactionsParamsImpl(this.debitId);

  @override
  final int debitId;

  @override
  String toString() {
    return 'GetDebitTransactionsParams(debitId: $debitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDebitTransactionsParamsImpl &&
            (identical(other.debitId, debitId) || other.debitId == debitId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, debitId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDebitTransactionsParamsImplCopyWith<_$GetDebitTransactionsParamsImpl>
      get copyWith => __$$GetDebitTransactionsParamsImplCopyWithImpl<
          _$GetDebitTransactionsParamsImpl>(this, _$identity);
}

abstract class _GetDebitTransactionsParams
    implements GetDebitTransactionsParams {
  const factory _GetDebitTransactionsParams(final int debitId) =
      _$GetDebitTransactionsParamsImpl;

  @override
  int get debitId;
  @override
  @JsonKey(ignore: true)
  _$$GetDebitTransactionsParamsImplCopyWith<_$GetDebitTransactionsParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
