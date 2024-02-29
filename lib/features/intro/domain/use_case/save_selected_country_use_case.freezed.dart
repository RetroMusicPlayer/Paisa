// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_selected_country_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParamsSaveCountry {
  CountryEntity get countryEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParamsSaveCountryCopyWith<ParamsSaveCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamsSaveCountryCopyWith<$Res> {
  factory $ParamsSaveCountryCopyWith(
          ParamsSaveCountry value, $Res Function(ParamsSaveCountry) then) =
      _$ParamsSaveCountryCopyWithImpl<$Res, ParamsSaveCountry>;
  @useResult
  $Res call({CountryEntity countryEntity});

  $CountryEntityCopyWith<$Res> get countryEntity;
}

/// @nodoc
class _$ParamsSaveCountryCopyWithImpl<$Res, $Val extends ParamsSaveCountry>
    implements $ParamsSaveCountryCopyWith<$Res> {
  _$ParamsSaveCountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryEntity = null,
  }) {
    return _then(_value.copyWith(
      countryEntity: null == countryEntity
          ? _value.countryEntity
          : countryEntity // ignore: cast_nullable_to_non_nullable
              as CountryEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryEntityCopyWith<$Res> get countryEntity {
    return $CountryEntityCopyWith<$Res>(_value.countryEntity, (value) {
      return _then(_value.copyWith(countryEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParamsSaveCountryImplCopyWith<$Res>
    implements $ParamsSaveCountryCopyWith<$Res> {
  factory _$$ParamsSaveCountryImplCopyWith(_$ParamsSaveCountryImpl value,
          $Res Function(_$ParamsSaveCountryImpl) then) =
      __$$ParamsSaveCountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CountryEntity countryEntity});

  @override
  $CountryEntityCopyWith<$Res> get countryEntity;
}

/// @nodoc
class __$$ParamsSaveCountryImplCopyWithImpl<$Res>
    extends _$ParamsSaveCountryCopyWithImpl<$Res, _$ParamsSaveCountryImpl>
    implements _$$ParamsSaveCountryImplCopyWith<$Res> {
  __$$ParamsSaveCountryImplCopyWithImpl(_$ParamsSaveCountryImpl _value,
      $Res Function(_$ParamsSaveCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryEntity = null,
  }) {
    return _then(_$ParamsSaveCountryImpl(
      null == countryEntity
          ? _value.countryEntity
          : countryEntity // ignore: cast_nullable_to_non_nullable
              as CountryEntity,
    ));
  }
}

/// @nodoc

class _$ParamsSaveCountryImpl implements _ParamsSaveCountry {
  _$ParamsSaveCountryImpl(this.countryEntity);

  @override
  final CountryEntity countryEntity;

  @override
  String toString() {
    return 'ParamsSaveCountry(countryEntity: $countryEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParamsSaveCountryImpl &&
            (identical(other.countryEntity, countryEntity) ||
                other.countryEntity == countryEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countryEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParamsSaveCountryImplCopyWith<_$ParamsSaveCountryImpl> get copyWith =>
      __$$ParamsSaveCountryImplCopyWithImpl<_$ParamsSaveCountryImpl>(
          this, _$identity);
}

abstract class _ParamsSaveCountry implements ParamsSaveCountry {
  factory _ParamsSaveCountry(final CountryEntity countryEntity) =
      _$ParamsSaveCountryImpl;

  @override
  CountryEntity get countryEntity;
  @override
  @JsonKey(ignore: true)
  _$$ParamsSaveCountryImplCopyWith<_$ParamsSaveCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
