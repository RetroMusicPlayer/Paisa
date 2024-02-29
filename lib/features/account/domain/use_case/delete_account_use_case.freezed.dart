// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteAccountParams {
  int get accountId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteAccountParamsCopyWith<DeleteAccountParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountParamsCopyWith<$Res> {
  factory $DeleteAccountParamsCopyWith(
          DeleteAccountParams value, $Res Function(DeleteAccountParams) then) =
      _$DeleteAccountParamsCopyWithImpl<$Res, DeleteAccountParams>;
  @useResult
  $Res call({int accountId});
}

/// @nodoc
class _$DeleteAccountParamsCopyWithImpl<$Res, $Val extends DeleteAccountParams>
    implements $DeleteAccountParamsCopyWith<$Res> {
  _$DeleteAccountParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteAccountParamsImplCopyWith<$Res>
    implements $DeleteAccountParamsCopyWith<$Res> {
  factory _$$DeleteAccountParamsImplCopyWith(_$DeleteAccountParamsImpl value,
          $Res Function(_$DeleteAccountParamsImpl) then) =
      __$$DeleteAccountParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int accountId});
}

/// @nodoc
class __$$DeleteAccountParamsImplCopyWithImpl<$Res>
    extends _$DeleteAccountParamsCopyWithImpl<$Res, _$DeleteAccountParamsImpl>
    implements _$$DeleteAccountParamsImplCopyWith<$Res> {
  __$$DeleteAccountParamsImplCopyWithImpl(_$DeleteAccountParamsImpl _value,
      $Res Function(_$DeleteAccountParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$DeleteAccountParamsImpl(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteAccountParamsImpl implements _DeleteAccountParams {
  const _$DeleteAccountParamsImpl(this.accountId);

  @override
  final int accountId;

  @override
  String toString() {
    return 'DeleteAccountParams(accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountParamsImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountParamsImplCopyWith<_$DeleteAccountParamsImpl> get copyWith =>
      __$$DeleteAccountParamsImplCopyWithImpl<_$DeleteAccountParamsImpl>(
          this, _$identity);
}

abstract class _DeleteAccountParams implements DeleteAccountParams {
  const factory _DeleteAccountParams(final int accountId) =
      _$DeleteAccountParamsImpl;

  @override
  int get accountId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteAccountParamsImplCopyWith<_$DeleteAccountParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
