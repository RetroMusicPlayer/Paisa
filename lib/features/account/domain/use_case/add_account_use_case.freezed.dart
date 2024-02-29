// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_account_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddAccountParams {
  String get bankName => throw _privateConstructorUsedError;
  String get holderName => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  CardType get cardType => throw _privateConstructorUsedError;
  int? get color => throw _privateConstructorUsedError;
  bool? get isAccountExcluded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAccountParamsCopyWith<AddAccountParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAccountParamsCopyWith<$Res> {
  factory $AddAccountParamsCopyWith(
          AddAccountParams value, $Res Function(AddAccountParams) then) =
      _$AddAccountParamsCopyWithImpl<$Res, AddAccountParams>;
  @useResult
  $Res call(
      {String bankName,
      String holderName,
      double? amount,
      CardType cardType,
      int? color,
      bool? isAccountExcluded});
}

/// @nodoc
class _$AddAccountParamsCopyWithImpl<$Res, $Val extends AddAccountParams>
    implements $AddAccountParamsCopyWith<$Res> {
  _$AddAccountParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? holderName = null,
    Object? amount = freezed,
    Object? cardType = null,
    Object? color = freezed,
    Object? isAccountExcluded = freezed,
  }) {
    return _then(_value.copyWith(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      holderName: null == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      isAccountExcluded: freezed == isAccountExcluded
          ? _value.isAccountExcluded
          : isAccountExcluded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAccountParamsImplCopyWith<$Res>
    implements $AddAccountParamsCopyWith<$Res> {
  factory _$$AddAccountParamsImplCopyWith(_$AddAccountParamsImpl value,
          $Res Function(_$AddAccountParamsImpl) then) =
      __$$AddAccountParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bankName,
      String holderName,
      double? amount,
      CardType cardType,
      int? color,
      bool? isAccountExcluded});
}

/// @nodoc
class __$$AddAccountParamsImplCopyWithImpl<$Res>
    extends _$AddAccountParamsCopyWithImpl<$Res, _$AddAccountParamsImpl>
    implements _$$AddAccountParamsImplCopyWith<$Res> {
  __$$AddAccountParamsImplCopyWithImpl(_$AddAccountParamsImpl _value,
      $Res Function(_$AddAccountParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? holderName = null,
    Object? amount = freezed,
    Object? cardType = null,
    Object? color = freezed,
    Object? isAccountExcluded = freezed,
  }) {
    return _then(_$AddAccountParamsImpl(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      holderName: null == holderName
          ? _value.holderName
          : holderName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      isAccountExcluded: freezed == isAccountExcluded
          ? _value.isAccountExcluded
          : isAccountExcluded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AddAccountParamsImpl implements _AddAccountParams {
  const _$AddAccountParamsImpl(
      {required this.bankName,
      required this.holderName,
      this.amount,
      this.cardType = CardType.cash,
      this.color,
      this.isAccountExcluded});

  @override
  final String bankName;
  @override
  final String holderName;
  @override
  final double? amount;
  @override
  @JsonKey()
  final CardType cardType;
  @override
  final int? color;
  @override
  final bool? isAccountExcluded;

  @override
  String toString() {
    return 'AddAccountParams(bankName: $bankName, holderName: $holderName, amount: $amount, cardType: $cardType, color: $color, isAccountExcluded: $isAccountExcluded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAccountParamsImpl &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.holderName, holderName) ||
                other.holderName == holderName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isAccountExcluded, isAccountExcluded) ||
                other.isAccountExcluded == isAccountExcluded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bankName, holderName, amount,
      cardType, color, isAccountExcluded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAccountParamsImplCopyWith<_$AddAccountParamsImpl> get copyWith =>
      __$$AddAccountParamsImplCopyWithImpl<_$AddAccountParamsImpl>(
          this, _$identity);
}

abstract class _AddAccountParams implements AddAccountParams {
  const factory _AddAccountParams(
      {required final String bankName,
      required final String holderName,
      final double? amount,
      final CardType cardType,
      final int? color,
      final bool? isAccountExcluded}) = _$AddAccountParamsImpl;

  @override
  String get bankName;
  @override
  String get holderName;
  @override
  double? get amount;
  @override
  CardType get cardType;
  @override
  int? get color;
  @override
  bool? get isAccountExcluded;
  @override
  @JsonKey(ignore: true)
  _$$AddAccountParamsImplCopyWith<_$AddAccountParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
