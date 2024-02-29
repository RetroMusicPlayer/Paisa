// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_debit_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteDebitParams {
  int get debitId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteDebitParamsCopyWith<DeleteDebitParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteDebitParamsCopyWith<$Res> {
  factory $DeleteDebitParamsCopyWith(
          DeleteDebitParams value, $Res Function(DeleteDebitParams) then) =
      _$DeleteDebitParamsCopyWithImpl<$Res, DeleteDebitParams>;
  @useResult
  $Res call({int debitId});
}

/// @nodoc
class _$DeleteDebitParamsCopyWithImpl<$Res, $Val extends DeleteDebitParams>
    implements $DeleteDebitParamsCopyWith<$Res> {
  _$DeleteDebitParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debitId = null,
  }) {
    return _then(_value.copyWith(
      debitId: null == debitId
          ? _value.debitId
          : debitId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteDebitParamsImplCopyWith<$Res>
    implements $DeleteDebitParamsCopyWith<$Res> {
  factory _$$DeleteDebitParamsImplCopyWith(_$DeleteDebitParamsImpl value,
          $Res Function(_$DeleteDebitParamsImpl) then) =
      __$$DeleteDebitParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int debitId});
}

/// @nodoc
class __$$DeleteDebitParamsImplCopyWithImpl<$Res>
    extends _$DeleteDebitParamsCopyWithImpl<$Res, _$DeleteDebitParamsImpl>
    implements _$$DeleteDebitParamsImplCopyWith<$Res> {
  __$$DeleteDebitParamsImplCopyWithImpl(_$DeleteDebitParamsImpl _value,
      $Res Function(_$DeleteDebitParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debitId = null,
  }) {
    return _then(_$DeleteDebitParamsImpl(
      null == debitId
          ? _value.debitId
          : debitId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteDebitParamsImpl implements _DeleteDebitParams {
  const _$DeleteDebitParamsImpl(this.debitId);

  @override
  final int debitId;

  @override
  String toString() {
    return 'DeleteDebitParams(debitId: $debitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDebitParamsImpl &&
            (identical(other.debitId, debitId) || other.debitId == debitId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, debitId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDebitParamsImplCopyWith<_$DeleteDebitParamsImpl> get copyWith =>
      __$$DeleteDebitParamsImplCopyWithImpl<_$DeleteDebitParamsImpl>(
          this, _$identity);
}

abstract class _DeleteDebitParams implements DeleteDebitParams {
  const factory _DeleteDebitParams(final int debitId) = _$DeleteDebitParamsImpl;

  @override
  int get debitId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteDebitParamsImplCopyWith<_$DeleteDebitParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
