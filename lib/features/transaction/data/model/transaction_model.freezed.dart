// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  @HiveField(5)
  int get accountId => throw _privateConstructorUsedError;
  @HiveField(5)
  set accountId(int value) => throw _privateConstructorUsedError;
  @HiveField(6)
  int get categoryId => throw _privateConstructorUsedError;
  @HiveField(6)
  set categoryId(int value) => throw _privateConstructorUsedError;
  @HiveField(1)
  double get currency => throw _privateConstructorUsedError;
  @HiveField(1)
  set currency(double value) => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(8)
  set description(String? value) => throw _privateConstructorUsedError;
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(0)
  set name(String value) => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get superId => throw _privateConstructorUsedError;
  @HiveField(7)
  set superId(int? value) => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime get time => throw _privateConstructorUsedError;
  @HiveField(3)
  set time(DateTime value) => throw _privateConstructorUsedError;
  @HiveField(4)
  TransactionType get type => throw _privateConstructorUsedError;
  @HiveField(4)
  set type(TransactionType value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {@HiveField(5) int accountId,
      @HiveField(6) int categoryId,
      @HiveField(1) double currency,
      @HiveField(8) String? description,
      @HiveField(0) String name,
      @HiveField(7) int? superId,
      @HiveField(3) DateTime time,
      @HiveField(4) TransactionType type});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? name = null,
    Object? superId = freezed,
    Object? time = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionModelImplCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$TransactionModelImplCopyWith(_$TransactionModelImpl value,
          $Res Function(_$TransactionModelImpl) then) =
      __$$TransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(5) int accountId,
      @HiveField(6) int categoryId,
      @HiveField(1) double currency,
      @HiveField(8) String? description,
      @HiveField(0) String name,
      @HiveField(7) int? superId,
      @HiveField(3) DateTime time,
      @HiveField(4) TransactionType type});
}

/// @nodoc
class __$$TransactionModelImplCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$TransactionModelImpl>
    implements _$$TransactionModelImplCopyWith<$Res> {
  __$$TransactionModelImplCopyWithImpl(_$TransactionModelImpl _value,
      $Res Function(_$TransactionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? categoryId = null,
    Object? currency = null,
    Object? description = freezed,
    Object? name = null,
    Object? superId = freezed,
    Object? time = null,
    Object? type = null,
  }) {
    return _then(_$TransactionModelImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'TransactionModelAdapter')
class _$TransactionModelImpl extends _TransactionModel {
  _$TransactionModelImpl(
      {@HiveField(5) required this.accountId,
      @HiveField(6) required this.categoryId,
      @HiveField(1) this.currency = 0,
      @HiveField(8) this.description,
      @HiveField(0) required this.name,
      @HiveField(7) this.superId,
      @HiveField(3) required this.time,
      @HiveField(4) this.type = TransactionType.expense})
      : super._();

  factory _$TransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionModelImplFromJson(json);

  @override
  @HiveField(5)
  int accountId;
  @override
  @HiveField(6)
  int categoryId;
  @override
  @JsonKey()
  @HiveField(1)
  double currency;
  @override
  @HiveField(8)
  String? description;
  @override
  @HiveField(0)
  String name;
  @override
  @HiveField(7)
  int? superId;
  @override
  @HiveField(3)
  DateTime time;
  @override
  @JsonKey()
  @HiveField(4)
  TransactionType type;

  @override
  String toString() {
    return 'TransactionModel(accountId: $accountId, categoryId: $categoryId, currency: $currency, description: $description, name: $name, superId: $superId, time: $time, type: $type)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      __$$TransactionModelImplCopyWithImpl<_$TransactionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionModel extends TransactionModel {
  factory _TransactionModel(
      {@HiveField(5) required int accountId,
      @HiveField(6) required int categoryId,
      @HiveField(1) double currency,
      @HiveField(8) String? description,
      @HiveField(0) required String name,
      @HiveField(7) int? superId,
      @HiveField(3) required DateTime time,
      @HiveField(4) TransactionType type}) = _$TransactionModelImpl;
  _TransactionModel._() : super._();

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$TransactionModelImpl.fromJson;

  @override
  @HiveField(5)
  int get accountId;
  @HiveField(5)
  set accountId(int value);
  @override
  @HiveField(6)
  int get categoryId;
  @HiveField(6)
  set categoryId(int value);
  @override
  @HiveField(1)
  double get currency;
  @HiveField(1)
  set currency(double value);
  @override
  @HiveField(8)
  String? get description;
  @HiveField(8)
  set description(String? value);
  @override
  @HiveField(0)
  String get name;
  @HiveField(0)
  set name(String value);
  @override
  @HiveField(7)
  int? get superId;
  @HiveField(7)
  set superId(int? value);
  @override
  @HiveField(3)
  DateTime get time;
  @HiveField(3)
  set time(DateTime value);
  @override
  @HiveField(4)
  TransactionType get type;
  @HiveField(4)
  set type(TransactionType value);
  @override
  @JsonKey(ignore: true)
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
