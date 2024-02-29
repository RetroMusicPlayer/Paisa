// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_transactions_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParamsDefaultAccountId {
  int? get accountId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParamsDefaultAccountIdCopyWith<ParamsDefaultAccountId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamsDefaultAccountIdCopyWith<$Res> {
  factory $ParamsDefaultAccountIdCopyWith(ParamsDefaultAccountId value,
          $Res Function(ParamsDefaultAccountId) then) =
      _$ParamsDefaultAccountIdCopyWithImpl<$Res, ParamsDefaultAccountId>;
  @useResult
  $Res call({int? accountId});
}

/// @nodoc
class _$ParamsDefaultAccountIdCopyWithImpl<$Res,
        $Val extends ParamsDefaultAccountId>
    implements $ParamsDefaultAccountIdCopyWith<$Res> {
  _$ParamsDefaultAccountIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParamsDefaultAccountIdImplCopyWith<$Res>
    implements $ParamsDefaultAccountIdCopyWith<$Res> {
  factory _$$ParamsDefaultAccountIdImplCopyWith(
          _$ParamsDefaultAccountIdImpl value,
          $Res Function(_$ParamsDefaultAccountIdImpl) then) =
      __$$ParamsDefaultAccountIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? accountId});
}

/// @nodoc
class __$$ParamsDefaultAccountIdImplCopyWithImpl<$Res>
    extends _$ParamsDefaultAccountIdCopyWithImpl<$Res,
        _$ParamsDefaultAccountIdImpl>
    implements _$$ParamsDefaultAccountIdImplCopyWith<$Res> {
  __$$ParamsDefaultAccountIdImplCopyWithImpl(
      _$ParamsDefaultAccountIdImpl _value,
      $Res Function(_$ParamsDefaultAccountIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
  }) {
    return _then(_$ParamsDefaultAccountIdImpl(
      freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ParamsDefaultAccountIdImpl implements _ParamsDefaultAccountId {
  const _$ParamsDefaultAccountIdImpl(this.accountId);

  @override
  final int? accountId;

  @override
  String toString() {
    return 'ParamsDefaultAccountId(accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParamsDefaultAccountIdImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParamsDefaultAccountIdImplCopyWith<_$ParamsDefaultAccountIdImpl>
      get copyWith => __$$ParamsDefaultAccountIdImplCopyWithImpl<
          _$ParamsDefaultAccountIdImpl>(this, _$identity);
}

abstract class _ParamsDefaultAccountId implements ParamsDefaultAccountId {
  const factory _ParamsDefaultAccountId(final int? accountId) =
      _$ParamsDefaultAccountIdImpl;

  @override
  int? get accountId;
  @override
  @JsonKey(ignore: true)
  _$$ParamsDefaultAccountIdImplCopyWith<_$ParamsDefaultAccountIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}
