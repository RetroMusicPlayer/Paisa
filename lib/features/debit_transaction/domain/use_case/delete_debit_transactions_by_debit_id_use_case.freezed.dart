// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_debit_transactions_by_debit_id_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteDebitTransactionsDebitIdParams {
  int get debitTransactionId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteDebitTransactionsDebitIdParamsCopyWith<
          DeleteDebitTransactionsDebitIdParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteDebitTransactionsDebitIdParamsCopyWith<$Res> {
  factory $DeleteDebitTransactionsDebitIdParamsCopyWith(
          DeleteDebitTransactionsDebitIdParams value,
          $Res Function(DeleteDebitTransactionsDebitIdParams) then) =
      _$DeleteDebitTransactionsDebitIdParamsCopyWithImpl<$Res,
          DeleteDebitTransactionsDebitIdParams>;
  @useResult
  $Res call({int debitTransactionId});
}

/// @nodoc
class _$DeleteDebitTransactionsDebitIdParamsCopyWithImpl<$Res,
        $Val extends DeleteDebitTransactionsDebitIdParams>
    implements $DeleteDebitTransactionsDebitIdParamsCopyWith<$Res> {
  _$DeleteDebitTransactionsDebitIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debitTransactionId = null,
  }) {
    return _then(_value.copyWith(
      debitTransactionId: null == debitTransactionId
          ? _value.debitTransactionId
          : debitTransactionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteDebitTransactionsDebitIdParamsImplCopyWith<$Res>
    implements $DeleteDebitTransactionsDebitIdParamsCopyWith<$Res> {
  factory _$$DeleteDebitTransactionsDebitIdParamsImplCopyWith(
          _$DeleteDebitTransactionsDebitIdParamsImpl value,
          $Res Function(_$DeleteDebitTransactionsDebitIdParamsImpl) then) =
      __$$DeleteDebitTransactionsDebitIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int debitTransactionId});
}

/// @nodoc
class __$$DeleteDebitTransactionsDebitIdParamsImplCopyWithImpl<$Res>
    extends _$DeleteDebitTransactionsDebitIdParamsCopyWithImpl<$Res,
        _$DeleteDebitTransactionsDebitIdParamsImpl>
    implements _$$DeleteDebitTransactionsDebitIdParamsImplCopyWith<$Res> {
  __$$DeleteDebitTransactionsDebitIdParamsImplCopyWithImpl(
      _$DeleteDebitTransactionsDebitIdParamsImpl _value,
      $Res Function(_$DeleteDebitTransactionsDebitIdParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debitTransactionId = null,
  }) {
    return _then(_$DeleteDebitTransactionsDebitIdParamsImpl(
      null == debitTransactionId
          ? _value.debitTransactionId
          : debitTransactionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteDebitTransactionsDebitIdParamsImpl
    implements _DeleteDebitTransactionsDebitIdParams {
  const _$DeleteDebitTransactionsDebitIdParamsImpl(this.debitTransactionId);

  @override
  final int debitTransactionId;

  @override
  String toString() {
    return 'DeleteDebitTransactionsDebitIdParams(debitTransactionId: $debitTransactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDebitTransactionsDebitIdParamsImpl &&
            (identical(other.debitTransactionId, debitTransactionId) ||
                other.debitTransactionId == debitTransactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, debitTransactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDebitTransactionsDebitIdParamsImplCopyWith<
          _$DeleteDebitTransactionsDebitIdParamsImpl>
      get copyWith => __$$DeleteDebitTransactionsDebitIdParamsImplCopyWithImpl<
          _$DeleteDebitTransactionsDebitIdParamsImpl>(this, _$identity);
}

abstract class _DeleteDebitTransactionsDebitIdParams
    implements DeleteDebitTransactionsDebitIdParams {
  const factory _DeleteDebitTransactionsDebitIdParams(
          final int debitTransactionId) =
      _$DeleteDebitTransactionsDebitIdParamsImpl;

  @override
  int get debitTransactionId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteDebitTransactionsDebitIdParamsImplCopyWith<
          _$DeleteDebitTransactionsDebitIdParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
