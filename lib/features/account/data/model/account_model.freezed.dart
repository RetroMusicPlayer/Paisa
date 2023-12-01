// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
mixin _$AccountModel {
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(0)
  set name(String? value) => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: false)
  bool? get isAccountExcluded => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: false)
  set isAccountExcluded(bool? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  CountryModel? get currencySymbol => throw _privateConstructorUsedError;
  @HiveField(2)
  set currencySymbol(CountryModel? value) => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get bankName => throw _privateConstructorUsedError;
  @HiveField(3)
  set bankName(String? value) => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: CardType.bank)
  CardType? get cardType => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: CardType.bank)
  set cardType(CardType? value) => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get superId => throw _privateConstructorUsedError;
  @HiveField(7)
  set superId(int? value) => throw _privateConstructorUsedError;
  @HiveField(8, defaultValue: 0)
  double? get amount => throw _privateConstructorUsedError;
  @HiveField(8, defaultValue: 0)
  set amount(double? value) => throw _privateConstructorUsedError;
  @HiveField(9, defaultValue: 0xFFFFC107)
  int? get color => throw _privateConstructorUsedError;
  @HiveField(9, defaultValue: 0xFFFFC107)
  set color(int? value) => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: false)
  bool get isAccountDefault => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: false)
  set isAccountDefault(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1, defaultValue: false) bool? isAccountExcluded,
      @HiveField(2) CountryModel? currencySymbol,
      @HiveField(3) String? bankName,
      @HiveField(6, defaultValue: CardType.bank) CardType? cardType,
      @HiveField(7) int? superId,
      @HiveField(8, defaultValue: 0) double? amount,
      @HiveField(9, defaultValue: 0xFFFFC107) int? color,
      @HiveField(4, defaultValue: false) bool isAccountDefault});

  $CountryModelCopyWith<$Res>? get currencySymbol;
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isAccountExcluded = freezed,
    Object? currencySymbol = freezed,
    Object? bankName = freezed,
    Object? cardType = freezed,
    Object? superId = freezed,
    Object? amount = freezed,
    Object? color = freezed,
    Object? isAccountDefault = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isAccountExcluded: freezed == isAccountExcluded
          ? _value.isAccountExcluded
          : isAccountExcluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: freezed == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType?,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      isAccountDefault: null == isAccountDefault
          ? _value.isAccountDefault
          : isAccountDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryModelCopyWith<$Res>? get currencySymbol {
    if (_value.currencySymbol == null) {
      return null;
    }

    return $CountryModelCopyWith<$Res>(_value.currencySymbol!, (value) {
      return _then(_value.copyWith(currencySymbol: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountModelCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$_AccountModelCopyWith(
          _$_AccountModel value, $Res Function(_$_AccountModel) then) =
      __$$_AccountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1, defaultValue: false) bool? isAccountExcluded,
      @HiveField(2) CountryModel? currencySymbol,
      @HiveField(3) String? bankName,
      @HiveField(6, defaultValue: CardType.bank) CardType? cardType,
      @HiveField(7) int? superId,
      @HiveField(8, defaultValue: 0) double? amount,
      @HiveField(9, defaultValue: 0xFFFFC107) int? color,
      @HiveField(4, defaultValue: false) bool isAccountDefault});

  @override
  $CountryModelCopyWith<$Res>? get currencySymbol;
}

/// @nodoc
class __$$_AccountModelCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$_AccountModel>
    implements _$$_AccountModelCopyWith<$Res> {
  __$$_AccountModelCopyWithImpl(
      _$_AccountModel _value, $Res Function(_$_AccountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? isAccountExcluded = freezed,
    Object? currencySymbol = freezed,
    Object? bankName = freezed,
    Object? cardType = freezed,
    Object? superId = freezed,
    Object? amount = freezed,
    Object? color = freezed,
    Object? isAccountDefault = null,
  }) {
    return _then(_$_AccountModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isAccountExcluded: freezed == isAccountExcluded
          ? _value.isAccountExcluded
          : isAccountExcluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      cardType: freezed == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType?,
      superId: freezed == superId
          ? _value.superId
          : superId // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      isAccountDefault: null == isAccountDefault
          ? _value.isAccountDefault
          : isAccountDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'AccountModelAdapter')
class _$_AccountModel extends _AccountModel {
  _$_AccountModel(
      {@HiveField(0) this.name,
      @HiveField(1, defaultValue: false) this.isAccountExcluded,
      @HiveField(2) this.currencySymbol,
      @HiveField(3) this.bankName,
      @HiveField(6, defaultValue: CardType.bank) this.cardType,
      @HiveField(7) this.superId,
      @HiveField(8, defaultValue: 0) this.amount,
      @HiveField(9, defaultValue: 0xFFFFC107) this.color,
      @HiveField(4, defaultValue: false) this.isAccountDefault = false})
      : super._();

  factory _$_AccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountModelFromJson(json);

  @override
  @HiveField(0)
  String? name;
  @override
  @HiveField(1, defaultValue: false)
  bool? isAccountExcluded;
  @override
  @HiveField(2)
  CountryModel? currencySymbol;
  @override
  @HiveField(3)
  String? bankName;
  @override
  @HiveField(6, defaultValue: CardType.bank)
  CardType? cardType;
  @override
  @HiveField(7)
  int? superId;
  @override
  @HiveField(8, defaultValue: 0)
  double? amount;
  @override
  @HiveField(9, defaultValue: 0xFFFFC107)
  int? color;
  @override
  @JsonKey()
  @HiveField(4, defaultValue: false)
  bool isAccountDefault;

  @override
  String toString() {
    return 'AccountModel(name: $name, isAccountExcluded: $isAccountExcluded, currencySymbol: $currencySymbol, bankName: $bankName, cardType: $cardType, superId: $superId, amount: $amount, color: $color, isAccountDefault: $isAccountDefault)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      __$$_AccountModelCopyWithImpl<_$_AccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountModelToJson(
      this,
    );
  }
}

abstract class _AccountModel extends AccountModel {
  factory _AccountModel(
          {@HiveField(0) String? name,
          @HiveField(1, defaultValue: false) bool? isAccountExcluded,
          @HiveField(2) CountryModel? currencySymbol,
          @HiveField(3) String? bankName,
          @HiveField(6, defaultValue: CardType.bank) CardType? cardType,
          @HiveField(7) int? superId,
          @HiveField(8, defaultValue: 0) double? amount,
          @HiveField(9, defaultValue: 0xFFFFC107) int? color,
          @HiveField(4, defaultValue: false) bool isAccountDefault}) =
      _$_AccountModel;
  _AccountModel._() : super._();

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$_AccountModel.fromJson;

  @override
  @HiveField(0)
  String? get name;
  @HiveField(0)
  set name(String? value);
  @override
  @HiveField(1, defaultValue: false)
  bool? get isAccountExcluded;
  @HiveField(1, defaultValue: false)
  set isAccountExcluded(bool? value);
  @override
  @HiveField(2)
  CountryModel? get currencySymbol;
  @HiveField(2)
  set currencySymbol(CountryModel? value);
  @override
  @HiveField(3)
  String? get bankName;
  @HiveField(3)
  set bankName(String? value);
  @override
  @HiveField(6, defaultValue: CardType.bank)
  CardType? get cardType;
  @HiveField(6, defaultValue: CardType.bank)
  set cardType(CardType? value);
  @override
  @HiveField(7)
  int? get superId;
  @HiveField(7)
  set superId(int? value);
  @override
  @HiveField(8, defaultValue: 0)
  double? get amount;
  @HiveField(8, defaultValue: 0)
  set amount(double? value);
  @override
  @HiveField(9, defaultValue: 0xFFFFC107)
  int? get color;
  @HiveField(9, defaultValue: 0xFFFFC107)
  set color(int? value);
  @override
  @HiveField(4, defaultValue: false)
  bool get isAccountDefault;
  @HiveField(4, defaultValue: false)
  set isAccountDefault(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_AccountModelCopyWith<_$_AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
