// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountryPickerState {
  List<CountryEntity> get countries => throw _privateConstructorUsedError;
  CountryEntity? get selectedCountry => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CountryEntity> countries, CountryEntity? selectedCountry)
        countries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CountryEntity> countries, CountryEntity? selectedCountry)?
        countries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CountryEntity> countries, CountryEntity? selectedCountry)?
        countries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountriesLoadedState value) countries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountriesLoadedState value)? countries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountriesLoadedState value)? countries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryPickerStateCopyWith<CountryPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryPickerStateCopyWith<$Res> {
  factory $CountryPickerStateCopyWith(
          CountryPickerState value, $Res Function(CountryPickerState) then) =
      _$CountryPickerStateCopyWithImpl<$Res, CountryPickerState>;
  @useResult
  $Res call({List<CountryEntity> countries, CountryEntity? selectedCountry});

  $CountryEntityCopyWith<$Res>? get selectedCountry;
}

/// @nodoc
class _$CountryPickerStateCopyWithImpl<$Res, $Val extends CountryPickerState>
    implements $CountryPickerStateCopyWith<$Res> {
  _$CountryPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
    Object? selectedCountry = freezed,
  }) {
    return _then(_value.copyWith(
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryEntity>,
      selectedCountry: freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as CountryEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryEntityCopyWith<$Res>? get selectedCountry {
    if (_value.selectedCountry == null) {
      return null;
    }

    return $CountryEntityCopyWith<$Res>(_value.selectedCountry!, (value) {
      return _then(_value.copyWith(selectedCountry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountriesLoadedStateImplCopyWith<$Res>
    implements $CountryPickerStateCopyWith<$Res> {
  factory _$$CountriesLoadedStateImplCopyWith(_$CountriesLoadedStateImpl value,
          $Res Function(_$CountriesLoadedStateImpl) then) =
      __$$CountriesLoadedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountryEntity> countries, CountryEntity? selectedCountry});

  @override
  $CountryEntityCopyWith<$Res>? get selectedCountry;
}

/// @nodoc
class __$$CountriesLoadedStateImplCopyWithImpl<$Res>
    extends _$CountryPickerStateCopyWithImpl<$Res, _$CountriesLoadedStateImpl>
    implements _$$CountriesLoadedStateImplCopyWith<$Res> {
  __$$CountriesLoadedStateImplCopyWithImpl(_$CountriesLoadedStateImpl _value,
      $Res Function(_$CountriesLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
    Object? selectedCountry = freezed,
  }) {
    return _then(_$CountriesLoadedStateImpl(
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryEntity>,
      selectedCountry: freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as CountryEntity?,
    ));
  }
}

/// @nodoc

class _$CountriesLoadedStateImpl implements CountriesLoadedState {
  _$CountriesLoadedStateImpl(
      {final List<CountryEntity> countries = const [], this.selectedCountry})
      : _countries = countries;

  final List<CountryEntity> _countries;
  @override
  @JsonKey()
  List<CountryEntity> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  final CountryEntity? selectedCountry;

  @override
  String toString() {
    return 'CountryPickerState.countries(countries: $countries, selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_countries), selectedCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesLoadedStateImplCopyWith<_$CountriesLoadedStateImpl>
      get copyWith =>
          __$$CountriesLoadedStateImplCopyWithImpl<_$CountriesLoadedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CountryEntity> countries, CountryEntity? selectedCountry)
        countries,
  }) {
    return countries(this.countries, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<CountryEntity> countries, CountryEntity? selectedCountry)?
        countries,
  }) {
    return countries?.call(this.countries, selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<CountryEntity> countries, CountryEntity? selectedCountry)?
        countries,
    required TResult orElse(),
  }) {
    if (countries != null) {
      return countries(this.countries, selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountriesLoadedState value) countries,
  }) {
    return countries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountriesLoadedState value)? countries,
  }) {
    return countries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountriesLoadedState value)? countries,
    required TResult orElse(),
  }) {
    if (countries != null) {
      return countries(this);
    }
    return orElse();
  }
}

abstract class CountriesLoadedState implements CountryPickerState {
  factory CountriesLoadedState(
      {final List<CountryEntity> countries,
      final CountryEntity? selectedCountry}) = _$CountriesLoadedStateImpl;

  @override
  List<CountryEntity> get countries;
  @override
  CountryEntity? get selectedCountry;
  @override
  @JsonKey(ignore: true)
  _$$CountriesLoadedStateImplCopyWith<_$CountriesLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
