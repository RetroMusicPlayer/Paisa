// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_account_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateAccountParams {
  int get key => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  CardType get cardType => throw _privateConstructorUsedError;
  String get holderName => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  int? get color => throw _privateConstructorUsedError;
  Country? get currencySymbol => throw _privateConstructorUsedError;
  bool? get isAccountExcluded => throw _privateConstructorUsedError;
  bool? get isAccountDefault => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateAccountParamsCopyWith<UpdateAccountParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAccountParamsCopyWith<$Res> {
  factory $UpdateAccountParamsCopyWith(
          UpdateAccountParams value, $Res Function(UpdateAccountParams) then) =
      _$UpdateAccountParamsCopyWithImpl<$Res, UpdateAccountParams>;
  @useResult
  $Res call(
      {int key,
      String bankName,
      CardType cardType,
      String holderName,
      double? amount,
      int? color,
      Country? currencySymbol,
      bool? isAccountExcluded,
      bool? isAccountDefault});

  $CountryCopyWith<$Res>? get currencySymbol;
}

/// @nodoc
class _$UpdateAccountParamsCopyWithImpl<$Res, $Val extends UpdateAccountParams>
    implements $UpdateAccountParamsCopyWith<$Res> {
  _$UpdateAccountParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? bankName = null,
    Object? cardType = null,
    Object? holderName = null,
    Object? amount = freezed,
    Object? color = freezed,
    Object? currencySymbol = freezed,
    Object? isAccountExcluded = freezed,
    Object? isAccountDefault = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      holderName: null == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as Country?,
      isAccountExcluded: freezed == isAccountExcluded
          ? _value.isAccountExcluded
          : isAccountExcluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAccountDefault: freezed == isAccountDefault
          ? _value.isAccountDefault
          : isAccountDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get currencySymbol {
    if (_value.currencySymbol == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.currencySymbol!, (value) {
      return _then(_value.copyWith(currencySymbol: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateAccountParamsCopyWith<$Res>
    implements $UpdateAccountParamsCopyWith<$Res> {
  factory _$$_UpdateAccountParamsCopyWith(_$_UpdateAccountParams value,
          $Res Function(_$_UpdateAccountParams) then) =
      __$$_UpdateAccountParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int key,
      String bankName,
      CardType cardType,
      String holderName,
      double? amount,
      int? color,
      Country? currencySymbol,
      bool? isAccountExcluded,
      bool? isAccountDefault});

  @override
  $CountryCopyWith<$Res>? get currencySymbol;
}

/// @nodoc
class __$$_UpdateAccountParamsCopyWithImpl<$Res>
    extends _$UpdateAccountParamsCopyWithImpl<$Res, _$_UpdateAccountParams>
    implements _$$_UpdateAccountParamsCopyWith<$Res> {
  __$$_UpdateAccountParamsCopyWithImpl(_$_UpdateAccountParams _value,
      $Res Function(_$_UpdateAccountParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? bankName = null,
    Object? cardType = null,
    Object? holderName = null,
    Object? amount = freezed,
    Object? color = freezed,
    Object? currencySymbol = freezed,
    Object? isAccountExcluded = freezed,
    Object? isAccountDefault = freezed,
  }) {
    return _then(_$_UpdateAccountParams(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      holderName: null == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as Country?,
      isAccountExcluded: freezed == isAccountExcluded
          ? _value.isAccountExcluded
          : isAccountExcluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAccountDefault: freezed == isAccountDefault
          ? _value.isAccountDefault
          : isAccountDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_UpdateAccountParams implements _UpdateAccountParams {
  const _$_UpdateAccountParams(this.key,
      {required this.bankName,
      required this.cardType,
      required this.holderName,
      this.amount,
      this.color,
      this.currencySymbol,
      this.isAccountExcluded,
      this.isAccountDefault});

  @override
  final int key;
  @override
  final String bankName;
  @override
  final CardType cardType;
  @override
  final String holderName;
  @override
  final double? amount;
  @override
  final int? color;
  @override
  final Country? currencySymbol;
  @override
  final bool? isAccountExcluded;
  @override
  final bool? isAccountDefault;

  @override
  String toString() {
    return 'UpdateAccountParams(key: $key, bankName: $bankName, cardType: $cardType, holderName: $holderName, amount: $amount, color: $color, currencySymbol: $currencySymbol, isAccountExcluded: $isAccountExcluded, isAccountDefault: $isAccountDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAccountParams &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.holderName, holderName) ||
                other.holderName == holderName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.isAccountExcluded, isAccountExcluded) ||
                other.isAccountExcluded == isAccountExcluded) &&
            (identical(other.isAccountDefault, isAccountDefault) ||
                other.isAccountDefault == isAccountDefault));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      bankName,
      cardType,
      holderName,
      amount,
      color,
      currencySymbol,
      isAccountExcluded,
      isAccountDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAccountParamsCopyWith<_$_UpdateAccountParams> get copyWith =>
      __$$_UpdateAccountParamsCopyWithImpl<_$_UpdateAccountParams>(
          this, _$identity);
}

abstract class _UpdateAccountParams implements UpdateAccountParams {
  const factory _UpdateAccountParams(final int key,
      {required final String bankName,
      required final CardType cardType,
      required final String holderName,
      final double? amount,
      final int? color,
      final Country? currencySymbol,
      final bool? isAccountExcluded,
      final bool? isAccountDefault}) = _$_UpdateAccountParams;

  @override
  int get key;
  @override
  String get bankName;
  @override
  CardType get cardType;
  @override
  String get holderName;
  @override
  double? get amount;
  @override
  int? get color;
  @override
  Country? get currencySymbol;
  @override
  bool? get isAccountExcluded;
  @override
  bool? get isAccountDefault;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAccountParamsCopyWith<_$_UpdateAccountParams> get copyWith =>
      throw _privateConstructorUsedError;
}
