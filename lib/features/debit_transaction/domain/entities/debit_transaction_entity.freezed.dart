// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debit_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DebitTransactionEntity {
  double get amount => throw _privateConstructorUsedError;
  DateTime get now => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  int? get superId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebitTransactionEntityCopyWith<DebitTransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitTransactionEntityCopyWith<$Res> {
  factory $DebitTransactionEntityCopyWith(DebitTransactionEntity value,
          $Res Function(DebitTransactionEntity) then) =
      _$DebitTransactionEntityCopyWithImpl<$Res, DebitTransactionEntity>;
  @useResult
  $Res call({double amount, DateTime now, int? parentId, int? superId});
}

/// @nodoc
class _$DebitTransactionEntityCopyWithImpl<$Res,
        $Val extends DebitTransactionEntity>
    implements $DebitTransactionEntityCopyWith<$Res> {
  _$DebitTransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? now = null,
    Object? parentId = freezed,
    Object? superId = freezed,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      now: null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebitTransactionEntityImplCopyWith<$Res>
    implements $DebitTransactionEntityCopyWith<$Res> {
  factory _$$DebitTransactionEntityImplCopyWith(
          _$DebitTransactionEntityImpl value,
          $Res Function(_$DebitTransactionEntityImpl) then) =
      __$$DebitTransactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, DateTime now, int? parentId, int? superId});
}

/// @nodoc
class __$$DebitTransactionEntityImplCopyWithImpl<$Res>
    extends _$DebitTransactionEntityCopyWithImpl<$Res,
        _$DebitTransactionEntityImpl>
    implements _$$DebitTransactionEntityImplCopyWith<$Res> {
  __$$DebitTransactionEntityImplCopyWithImpl(
      _$DebitTransactionEntityImpl _value,
      $Res Function(_$DebitTransactionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? now = null,
    Object? parentId = freezed,
    Object? superId = freezed,
  }) {
    return _then(_$DebitTransactionEntityImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      now: null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DebitTransactionEntityImpl implements _DebitTransactionEntity {
  const _$DebitTransactionEntityImpl(
      {required this.amount, required this.now, this.parentId, this.superId});

  @override
  final double amount;
  @override
  final DateTime now;
  @override
  final int? parentId;
  @override
  final int? superId;

  @override
  String toString() {
    return 'DebitTransactionEntity(amount: $amount, now: $now, parentId: $parentId, superId: $superId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebitTransactionEntityImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.now, now) || other.now == now) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.superId, superId) || other.superId == superId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, now, parentId, superId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DebitTransactionEntityImplCopyWith<_$DebitTransactionEntityImpl>
      get copyWith => __$$DebitTransactionEntityImplCopyWithImpl<
          _$DebitTransactionEntityImpl>(this, _$identity);
}

abstract class _DebitTransactionEntity implements DebitTransactionEntity {
  const factory _DebitTransactionEntity(
      {required final double amount,
      required final DateTime now,
      final int? parentId,
      final int? superId}) = _$DebitTransactionEntityImpl;

  @override
  double get amount;
  @override
  DateTime get now;
  @override
  int? get parentId;
  @override
  int? get superId;
  @override
  @JsonKey(ignore: true)
  _$$DebitTransactionEntityImplCopyWith<_$DebitTransactionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
