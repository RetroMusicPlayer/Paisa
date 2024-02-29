// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  @HiveField(0)
  String get code => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'decimal_digits')
  int? get decimalDigits => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'decimal_separator')
  String? get decimalSeparator => throw _privateConstructorUsedError;
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'name_plural')
  String? get namePlural => throw _privateConstructorUsedError;
  @HiveField(5)
  int get number => throw _privateConstructorUsedError;
  @HiveField(6)
  String get pattern => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'space_between_amount_and_symbol')
  @HiveField(8)
  bool? get spaceBetweenAmountAndSymbol => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get symbol => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'symbol_on_left')
  bool? get symbolOnLeft => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'thousands_separator')
  String get thousandsSeparator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call(
      {@HiveField(0) String code,
      @HiveField(1) @JsonKey(name: 'decimal_digits') int? decimalDigits,
      @HiveField(2)
      @JsonKey(name: 'decimal_separator')
      String? decimalSeparator,
      @HiveField(3) String name,
      @HiveField(4) @JsonKey(name: 'name_plural') String? namePlural,
      @HiveField(5) int number,
      @HiveField(6) String pattern,
      @HiveField(7)
      @JsonKey(name: 'space_between_amount_and_symbol')
      @HiveField(8)
      bool? spaceBetweenAmountAndSymbol,
      @HiveField(9) String? symbol,
      @HiveField(10) @JsonKey(name: 'symbol_on_left') bool? symbolOnLeft,
      @HiveField(11)
      @JsonKey(name: 'thousands_separator')
      String thousandsSeparator});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? decimalDigits = freezed,
    Object? decimalSeparator = freezed,
    Object? name = null,
    Object? namePlural = freezed,
    Object? number = null,
    Object? pattern = null,
    Object? spaceBetweenAmountAndSymbol = freezed,
    Object? symbol = freezed,
    Object? symbolOnLeft = freezed,
    Object? thousandsSeparator = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      decimalDigits: freezed == decimalDigits
          ? _value.decimalDigits
          : decimalDigits // ignore: cast_nullable_to_non_nullable
              as int?,
      decimalSeparator: freezed == decimalSeparator
          ? _value.decimalSeparator
          : decimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: freezed == namePlural
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      spaceBetweenAmountAndSymbol: freezed == spaceBetweenAmountAndSymbol
          ? _value.spaceBetweenAmountAndSymbol
          : spaceBetweenAmountAndSymbol // ignore: cast_nullable_to_non_nullable
              as bool?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolOnLeft: freezed == symbolOnLeft
          ? _value.symbolOnLeft
          : symbolOnLeft // ignore: cast_nullable_to_non_nullable
              as bool?,
      thousandsSeparator: null == thousandsSeparator
          ? _value.thousandsSeparator
          : thousandsSeparator // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryModelImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryModelImplCopyWith(
          _$CountryModelImpl value, $Res Function(_$CountryModelImpl) then) =
      __$$CountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String code,
      @HiveField(1) @JsonKey(name: 'decimal_digits') int? decimalDigits,
      @HiveField(2)
      @JsonKey(name: 'decimal_separator')
      String? decimalSeparator,
      @HiveField(3) String name,
      @HiveField(4) @JsonKey(name: 'name_plural') String? namePlural,
      @HiveField(5) int number,
      @HiveField(6) String pattern,
      @HiveField(7)
      @JsonKey(name: 'space_between_amount_and_symbol')
      @HiveField(8)
      bool? spaceBetweenAmountAndSymbol,
      @HiveField(9) String? symbol,
      @HiveField(10) @JsonKey(name: 'symbol_on_left') bool? symbolOnLeft,
      @HiveField(11)
      @JsonKey(name: 'thousands_separator')
      String thousandsSeparator});
}

/// @nodoc
class __$$CountryModelImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryModelImpl>
    implements _$$CountryModelImplCopyWith<$Res> {
  __$$CountryModelImplCopyWithImpl(
      _$CountryModelImpl _value, $Res Function(_$CountryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? decimalDigits = freezed,
    Object? decimalSeparator = freezed,
    Object? name = null,
    Object? namePlural = freezed,
    Object? number = null,
    Object? pattern = null,
    Object? spaceBetweenAmountAndSymbol = freezed,
    Object? symbol = freezed,
    Object? symbolOnLeft = freezed,
    Object? thousandsSeparator = null,
  }) {
    return _then(_$CountryModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      decimalDigits: freezed == decimalDigits
          ? _value.decimalDigits
          : decimalDigits // ignore: cast_nullable_to_non_nullable
              as int?,
      decimalSeparator: freezed == decimalSeparator
          ? _value.decimalSeparator
          : decimalSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: freezed == namePlural
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
      spaceBetweenAmountAndSymbol: freezed == spaceBetweenAmountAndSymbol
          ? _value.spaceBetweenAmountAndSymbol
          : spaceBetweenAmountAndSymbol // ignore: cast_nullable_to_non_nullable
              as bool?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolOnLeft: freezed == symbolOnLeft
          ? _value.symbolOnLeft
          : symbolOnLeft // ignore: cast_nullable_to_non_nullable
              as bool?,
      thousandsSeparator: null == thousandsSeparator
          ? _value.thousandsSeparator
          : thousandsSeparator // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 7, adapterName: 'CountryModelAdapter')
class _$CountryModelImpl extends _CountryModel {
  _$CountryModelImpl(
      {@HiveField(0) required this.code,
      @HiveField(1)
      @JsonKey(name: 'decimal_digits')
      required this.decimalDigits,
      @HiveField(2) @JsonKey(name: 'decimal_separator') this.decimalSeparator,
      @HiveField(3) required this.name,
      @HiveField(4) @JsonKey(name: 'name_plural') this.namePlural,
      @HiveField(5) required this.number,
      @HiveField(6) required this.pattern,
      @HiveField(7)
      @JsonKey(name: 'space_between_amount_and_symbol')
      @HiveField(8)
      this.spaceBetweenAmountAndSymbol,
      @HiveField(9) this.symbol,
      @HiveField(10) @JsonKey(name: 'symbol_on_left') this.symbolOnLeft,
      @HiveField(11)
      @JsonKey(name: 'thousands_separator')
      required this.thousandsSeparator})
      : super._();

  factory _$CountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelImplFromJson(json);

  @override
  @HiveField(0)
  final String code;
  @override
  @HiveField(1)
  @JsonKey(name: 'decimal_digits')
  final int? decimalDigits;
  @override
  @HiveField(2)
  @JsonKey(name: 'decimal_separator')
  final String? decimalSeparator;
  @override
  @HiveField(3)
  final String name;
  @override
  @HiveField(4)
  @JsonKey(name: 'name_plural')
  final String? namePlural;
  @override
  @HiveField(5)
  final int number;
  @override
  @HiveField(6)
  final String pattern;
  @override
  @HiveField(7)
  @JsonKey(name: 'space_between_amount_and_symbol')
  @HiveField(8)
  final bool? spaceBetweenAmountAndSymbol;
  @override
  @HiveField(9)
  final String? symbol;
  @override
  @HiveField(10)
  @JsonKey(name: 'symbol_on_left')
  final bool? symbolOnLeft;
  @override
  @HiveField(11)
  @JsonKey(name: 'thousands_separator')
  final String thousandsSeparator;

  @override
  String toString() {
    return 'CountryModel(code: $code, decimalDigits: $decimalDigits, decimalSeparator: $decimalSeparator, name: $name, namePlural: $namePlural, number: $number, pattern: $pattern, spaceBetweenAmountAndSymbol: $spaceBetweenAmountAndSymbol, symbol: $symbol, symbolOnLeft: $symbolOnLeft, thousandsSeparator: $thousandsSeparator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.decimalDigits, decimalDigits) ||
                other.decimalDigits == decimalDigits) &&
            (identical(other.decimalSeparator, decimalSeparator) ||
                other.decimalSeparator == decimalSeparator) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.namePlural, namePlural) ||
                other.namePlural == namePlural) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.spaceBetweenAmountAndSymbol,
                    spaceBetweenAmountAndSymbol) ||
                other.spaceBetweenAmountAndSymbol ==
                    spaceBetweenAmountAndSymbol) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.symbolOnLeft, symbolOnLeft) ||
                other.symbolOnLeft == symbolOnLeft) &&
            (identical(other.thousandsSeparator, thousandsSeparator) ||
                other.thousandsSeparator == thousandsSeparator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      decimalDigits,
      decimalSeparator,
      name,
      namePlural,
      number,
      pattern,
      spaceBetweenAmountAndSymbol,
      symbol,
      symbolOnLeft,
      thousandsSeparator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      __$$CountryModelImplCopyWithImpl<_$CountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelImplToJson(
      this,
    );
  }
}

abstract class _CountryModel extends CountryModel {
  factory _CountryModel(
      {@HiveField(0) required final String code,
      @HiveField(1)
      @JsonKey(name: 'decimal_digits')
      required final int? decimalDigits,
      @HiveField(2)
      @JsonKey(name: 'decimal_separator')
      final String? decimalSeparator,
      @HiveField(3) required final String name,
      @HiveField(4) @JsonKey(name: 'name_plural') final String? namePlural,
      @HiveField(5) required final int number,
      @HiveField(6) required final String pattern,
      @HiveField(7)
      @JsonKey(name: 'space_between_amount_and_symbol')
      @HiveField(8)
      final bool? spaceBetweenAmountAndSymbol,
      @HiveField(9) final String? symbol,
      @HiveField(10) @JsonKey(name: 'symbol_on_left') final bool? symbolOnLeft,
      @HiveField(11)
      @JsonKey(name: 'thousands_separator')
      required final String thousandsSeparator}) = _$CountryModelImpl;
  _CountryModel._() : super._();

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$CountryModelImpl.fromJson;

  @override
  @HiveField(0)
  String get code;
  @override
  @HiveField(1)
  @JsonKey(name: 'decimal_digits')
  int? get decimalDigits;
  @override
  @HiveField(2)
  @JsonKey(name: 'decimal_separator')
  String? get decimalSeparator;
  @override
  @HiveField(3)
  String get name;
  @override
  @HiveField(4)
  @JsonKey(name: 'name_plural')
  String? get namePlural;
  @override
  @HiveField(5)
  int get number;
  @override
  @HiveField(6)
  String get pattern;
  @override
  @HiveField(7)
  @JsonKey(name: 'space_between_amount_and_symbol')
  @HiveField(8)
  bool? get spaceBetweenAmountAndSymbol;
  @override
  @HiveField(9)
  String? get symbol;
  @override
  @HiveField(10)
  @JsonKey(name: 'symbol_on_left')
  bool? get symbolOnLeft;
  @override
  @HiveField(11)
  @JsonKey(name: 'thousands_separator')
  String get thousandsSeparator;
  @override
  @JsonKey(ignore: true)
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
