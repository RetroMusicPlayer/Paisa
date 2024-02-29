// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debit_transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DebitTransactionsModel _$DebitTransactionsModelFromJson(
    Map<String, dynamic> json) {
  return _DebitTransactionsModel.fromJson(json);
}

/// @nodoc
mixin _$DebitTransactionsModel {
  @HiveField(1)
  double get amount => throw _privateConstructorUsedError;
  @HiveField(1)
  set amount(double value) => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime get now => throw _privateConstructorUsedError;
  @HiveField(2)
  set now(DateTime value) => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: -1)
  int get parentId => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: -1)
  set parentId(int value) => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get superId => throw _privateConstructorUsedError;
  @HiveField(3)
  set superId(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebitTransactionsModelCopyWith<DebitTransactionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebitTransactionsModelCopyWith<$Res> {
  factory $DebitTransactionsModelCopyWith(DebitTransactionsModel value,
          $Res Function(DebitTransactionsModel) then) =
      _$DebitTransactionsModelCopyWithImpl<$Res, DebitTransactionsModel>;
  @useResult
  $Res call(
      {@HiveField(1) double amount,
      @HiveField(2) DateTime now,
      @HiveField(4, defaultValue: -1) int parentId,
      @HiveField(3) int? superId});
}

/// @nodoc
class _$DebitTransactionsModelCopyWithImpl<$Res,
        $Val extends DebitTransactionsModel>
    implements $DebitTransactionsModelCopyWith<$Res> {
  _$DebitTransactionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? now = null,
    Object? parentId = null,
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
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebitTransactionsModelImplCopyWith<$Res>
    implements $DebitTransactionsModelCopyWith<$Res> {
  factory _$$DebitTransactionsModelImplCopyWith(
          _$DebitTransactionsModelImpl value,
          $Res Function(_$DebitTransactionsModelImpl) then) =
      __$$DebitTransactionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) double amount,
      @HiveField(2) DateTime now,
      @HiveField(4, defaultValue: -1) int parentId,
      @HiveField(3) int? superId});
}

/// @nodoc
class __$$DebitTransactionsModelImplCopyWithImpl<$Res>
    extends _$DebitTransactionsModelCopyWithImpl<$Res,
        _$DebitTransactionsModelImpl>
    implements _$$DebitTransactionsModelImplCopyWith<$Res> {
  __$$DebitTransactionsModelImplCopyWithImpl(
      _$DebitTransactionsModelImpl _value,
      $Res Function(_$DebitTransactionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? now = null,
    Object? parentId = null,
    Object? superId = freezed,
  }) {
    return _then(_$DebitTransactionsModelImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      now: null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'DebitTransactionsModelAdapter')
class _$DebitTransactionsModelImpl extends _DebitTransactionsModel {
  _$DebitTransactionsModelImpl(
      {@HiveField(1) required this.amount,
      @HiveField(2) required this.now,
      @HiveField(4, defaultValue: -1) required this.parentId,
      @HiveField(3) this.superId})
      : super._();

  factory _$DebitTransactionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DebitTransactionsModelImplFromJson(json);

  @override
  @HiveField(1)
  double amount;
  @override
  @HiveField(2)
  DateTime now;
  @override
  @HiveField(4, defaultValue: -1)
  int parentId;
  @override
  @HiveField(3)
  int? superId;

  @override
  String toString() {
    return 'DebitTransactionsModel(amount: $amount, now: $now, parentId: $parentId, superId: $superId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DebitTransactionsModelImplCopyWith<_$DebitTransactionsModelImpl>
      get copyWith => __$$DebitTransactionsModelImplCopyWithImpl<
          _$DebitTransactionsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DebitTransactionsModelImplToJson(
      this,
    );
  }
}

abstract class _DebitTransactionsModel extends DebitTransactionsModel {
  factory _DebitTransactionsModel(
      {@HiveField(1) required double amount,
      @HiveField(2) required DateTime now,
      @HiveField(4, defaultValue: -1) required int parentId,
      @HiveField(3) int? superId}) = _$DebitTransactionsModelImpl;
  _DebitTransactionsModel._() : super._();

  factory _DebitTransactionsModel.fromJson(Map<String, dynamic> json) =
      _$DebitTransactionsModelImpl.fromJson;

  @override
  @HiveField(1)
  double get amount;
  @HiveField(1)
  set amount(double value);
  @override
  @HiveField(2)
  DateTime get now;
  @HiveField(2)
  set now(DateTime value);
  @override
  @HiveField(4, defaultValue: -1)
  int get parentId;
  @HiveField(4, defaultValue: -1)
  set parentId(int value);
  @override
  @HiveField(3)
  int? get superId;
  @HiveField(3)
  set superId(int? value);
  @override
  @JsonKey(ignore: true)
  _$$DebitTransactionsModelImplCopyWith<_$DebitTransactionsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
