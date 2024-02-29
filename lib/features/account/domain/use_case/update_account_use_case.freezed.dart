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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateAccountParams {
  double get amount => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  CardType get cardType => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  String get holderName => throw _privateConstructorUsedError;
  int get key => throw _privateConstructorUsedError;

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
      {double amount,
      String bankName,
      CardType cardType,
      int color,
      String holderName,
      int key});
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
    Object? amount = null,
    Object? bankName = null,
    Object? cardType = null,
    Object? color = null,
    Object? holderName = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      holderName: null == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAccountParamsImplCopyWith<$Res>
    implements $UpdateAccountParamsCopyWith<$Res> {
  factory _$$UpdateAccountParamsImplCopyWith(_$UpdateAccountParamsImpl value,
          $Res Function(_$UpdateAccountParamsImpl) then) =
      __$$UpdateAccountParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double amount,
      String bankName,
      CardType cardType,
      int color,
      String holderName,
      int key});
}

/// @nodoc
class __$$UpdateAccountParamsImplCopyWithImpl<$Res>
    extends _$UpdateAccountParamsCopyWithImpl<$Res, _$UpdateAccountParamsImpl>
    implements _$$UpdateAccountParamsImplCopyWith<$Res> {
  __$$UpdateAccountParamsImplCopyWithImpl(_$UpdateAccountParamsImpl _value,
      $Res Function(_$UpdateAccountParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? bankName = null,
    Object? cardType = null,
    Object? color = null,
    Object? holderName = null,
    Object? key = null,
  }) {
    return _then(_$UpdateAccountParamsImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      holderName: null == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateAccountParamsImpl implements _UpdateAccountParams {
  const _$UpdateAccountParamsImpl(
      {required this.amount,
      required this.bankName,
      this.cardType = CardType.cash,
      required this.color,
      required this.holderName,
      required this.key});

  @override
  final double amount;
  @override
  final String bankName;
  @override
  @JsonKey()
  final CardType cardType;
  @override
  final int color;
  @override
  final String holderName;
  @override
  final int key;

  @override
  String toString() {
    return 'UpdateAccountParams(amount: $amount, bankName: $bankName, cardType: $cardType, color: $color, holderName: $holderName, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAccountParamsImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.holderName, holderName) ||
                other.holderName == holderName) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, amount, bankName, cardType, color, holderName, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAccountParamsImplCopyWith<_$UpdateAccountParamsImpl> get copyWith =>
      __$$UpdateAccountParamsImplCopyWithImpl<_$UpdateAccountParamsImpl>(
          this, _$identity);
}

abstract class _UpdateAccountParams implements UpdateAccountParams {
  const factory _UpdateAccountParams(
      {required final double amount,
      required final String bankName,
      final CardType cardType,
      required final int color,
      required final String holderName,
      required final int key}) = _$UpdateAccountParamsImpl;

  @override
  double get amount;
  @override
  String get bankName;
  @override
  CardType get cardType;
  @override
  int get color;
  @override
  String get holderName;
  @override
  int get key;
  @override
  @JsonKey(ignore: true)
  _$$UpdateAccountParamsImplCopyWith<_$UpdateAccountParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
