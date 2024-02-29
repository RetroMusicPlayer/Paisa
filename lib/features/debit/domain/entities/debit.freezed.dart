// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DebitEntity {
  String get description => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  DateTime get expiryDateTime => throw _privateConstructorUsedError;
  DebitType get debtType => throw _privateConstructorUsedError;
  int get superId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebitEntityCopyWith<DebitEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitEntityCopyWith<$Res> {
  factory $DebitEntityCopyWith(
          DebitEntity value, $Res Function(DebitEntity) then) =
      _$DebitEntityCopyWithImpl<$Res, DebitEntity>;
  @useResult
  $Res call(
      {String description,
      String name,
      double amount,
      DateTime dateTime,
      DateTime expiryDateTime,
      DebitType debtType,
      int superId});
}

/// @nodoc
class _$DebitEntityCopyWithImpl<$Res, $Val extends DebitEntity>
    implements $DebitEntityCopyWith<$Res> {
  _$DebitEntityCopyWithImpl(this._value, this._then);

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
    Object? dateTime = null,
    Object? expiryDateTime = null,
    Object? debtType = null,
    Object? superId = null,
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
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDateTime: null == expiryDateTime
          ? _value.expiryDateTime
          : expiryDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      debtType: null == debtType
          ? _value.debtType
          : debtType // ignore: cast_nullable_to_non_nullable
              as DebitType,
      superId: null == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebitEntityImplCopyWith<$Res>
    implements $DebitEntityCopyWith<$Res> {
  factory _$$DebitEntityImplCopyWith(
          _$DebitEntityImpl value, $Res Function(_$DebitEntityImpl) then) =
      __$$DebitEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String name,
      double amount,
      DateTime dateTime,
      DateTime expiryDateTime,
      DebitType debtType,
      int superId});
}

/// @nodoc
class __$$DebitEntityImplCopyWithImpl<$Res>
    extends _$DebitEntityCopyWithImpl<$Res, _$DebitEntityImpl>
    implements _$$DebitEntityImplCopyWith<$Res> {
  __$$DebitEntityImplCopyWithImpl(
      _$DebitEntityImpl _value, $Res Function(_$DebitEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? name = null,
    Object? amount = null,
    Object? dateTime = null,
    Object? expiryDateTime = null,
    Object? debtType = null,
    Object? superId = null,
  }) {
    return _then(_$DebitEntityImpl(
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
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDateTime: null == expiryDateTime
          ? _value.expiryDateTime
          : expiryDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      debtType: null == debtType
          ? _value.debtType
          : debtType // ignore: cast_nullable_to_non_nullable
              as DebitType,
      superId: null == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DebitEntityImpl implements _DebitEntity {
  const _$DebitEntityImpl(
      {required this.description,
      required this.name,
      required this.amount,
      required this.dateTime,
      required this.expiryDateTime,
      this.debtType = DebitType.credit,
      required this.superId});

  @override
  final String description;
  @override
  final String name;
  @override
  final double amount;
  @override
  final DateTime dateTime;
  @override
  final DateTime expiryDateTime;
  @override
  @JsonKey()
  final DebitType debtType;
  @override
  final int superId;

  @override
  String toString() {
    return 'DebitEntity(description: $description, name: $name, amount: $amount, dateTime: $dateTime, expiryDateTime: $expiryDateTime, debtType: $debtType, superId: $superId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebitEntityImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.expiryDateTime, expiryDateTime) ||
                other.expiryDateTime == expiryDateTime) &&
            (identical(other.debtType, debtType) ||
                other.debtType == debtType) &&
            (identical(other.superId, superId) || other.superId == superId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, name, amount,
      dateTime, expiryDateTime, debtType, superId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DebitEntityImplCopyWith<_$DebitEntityImpl> get copyWith =>
      __$$DebitEntityImplCopyWithImpl<_$DebitEntityImpl>(this, _$identity);
}

abstract class _DebitEntity implements DebitEntity {
  const factory _DebitEntity(
      {required final String description,
      required final String name,
      required final double amount,
      required final DateTime dateTime,
      required final DateTime expiryDateTime,
      final DebitType debtType,
      required final int superId}) = _$DebitEntityImpl;

  @override
  String get description;
  @override
  String get name;
  @override
  double get amount;
  @override
  DateTime get dateTime;
  @override
  DateTime get expiryDateTime;
  @override
  DebitType get debtType;
  @override
  int get superId;
  @override
  @JsonKey(ignore: true)
  _$$DebitEntityImplCopyWith<_$DebitEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
