// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SummaryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AccountEntity accountEntity,
            List<TransactionEntity> transactions, List<AccountEntity> accounts)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AccountEntity accountEntity,
            List<TransactionEntity> transactions, List<AccountEntity> accounts)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AccountEntity accountEntity,
            List<TransactionEntity> transactions, List<AccountEntity> accounts)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SummaryInitial value) initial,
    required TResult Function(TransactionsSuccessState value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryInitial value)? initial,
    TResult? Function(TransactionsSuccessState value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryInitial value)? initial,
    TResult Function(TransactionsSuccessState value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res, SummaryState>;
}

/// @nodoc
class _$SummaryStateCopyWithImpl<$Res, $Val extends SummaryState>
    implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SummaryInitialCopyWith<$Res> {
  factory _$$_SummaryInitialCopyWith(
          _$_SummaryInitial value, $Res Function(_$_SummaryInitial) then) =
      __$$_SummaryInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SummaryInitialCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$_SummaryInitial>
    implements _$$_SummaryInitialCopyWith<$Res> {
  __$$_SummaryInitialCopyWithImpl(
      _$_SummaryInitial _value, $Res Function(_$_SummaryInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SummaryInitial implements _SummaryInitial {
  const _$_SummaryInitial();

  @override
  String toString() {
    return 'SummaryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SummaryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AccountEntity accountEntity,
            List<TransactionEntity> transactions, List<AccountEntity> accounts)
        update,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AccountEntity accountEntity,
            List<TransactionEntity> transactions, List<AccountEntity> accounts)?
        update,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AccountEntity accountEntity,
            List<TransactionEntity> transactions, List<AccountEntity> accounts)?
        update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SummaryInitial value) initial,
    required TResult Function(TransactionsSuccessState value) update,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryInitial value)? initial,
    TResult? Function(TransactionsSuccessState value)? update,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryInitial value)? initial,
    TResult Function(TransactionsSuccessState value)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SummaryInitial implements SummaryState {
  const factory _SummaryInitial() = _$_SummaryInitial;
}

/// @nodoc
abstract class _$$TransactionsSuccessStateCopyWith<$Res> {
  factory _$$TransactionsSuccessStateCopyWith(_$TransactionsSuccessState value,
          $Res Function(_$TransactionsSuccessState) then) =
      __$$TransactionsSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AccountEntity accountEntity,
      List<TransactionEntity> transactions,
      List<AccountEntity> accounts});
}

/// @nodoc
class __$$TransactionsSuccessStateCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$TransactionsSuccessState>
    implements _$$TransactionsSuccessStateCopyWith<$Res> {
  __$$TransactionsSuccessStateCopyWithImpl(_$TransactionsSuccessState _value,
      $Res Function(_$TransactionsSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountEntity = null,
    Object? transactions = null,
    Object? accounts = null,
  }) {
    return _then(_$TransactionsSuccessState(
      accountEntity: null == accountEntity
          ? _value.accountEntity
          : accountEntity // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountEntity>,
    ));
  }
}

/// @nodoc

class _$TransactionsSuccessState implements TransactionsSuccessState {
  const _$TransactionsSuccessState(
      {required this.accountEntity,
      required final List<TransactionEntity> transactions,
      required final List<AccountEntity> accounts})
      : _transactions = transactions,
        _accounts = accounts;

  @override
  final AccountEntity accountEntity;
  final List<TransactionEntity> _transactions;
  @override
  List<TransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  final List<AccountEntity> _accounts;
  @override
  List<AccountEntity> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'SummaryState.update(accountEntity: $accountEntity, transactions: $transactions, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsSuccessState &&
            (identical(other.accountEntity, accountEntity) ||
                other.accountEntity == accountEntity) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountEntity,
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsSuccessStateCopyWith<_$TransactionsSuccessState>
      get copyWith =>
          __$$TransactionsSuccessStateCopyWithImpl<_$TransactionsSuccessState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AccountEntity accountEntity,
            List<TransactionEntity> transactions, List<AccountEntity> accounts)
        update,
  }) {
    return update(accountEntity, transactions, accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AccountEntity accountEntity,
            List<TransactionEntity> transactions, List<AccountEntity> accounts)?
        update,
  }) {
    return update?.call(accountEntity, transactions, accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AccountEntity accountEntity,
            List<TransactionEntity> transactions, List<AccountEntity> accounts)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(accountEntity, transactions, accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SummaryInitial value) initial,
    required TResult Function(TransactionsSuccessState value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryInitial value)? initial,
    TResult? Function(TransactionsSuccessState value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryInitial value)? initial,
    TResult Function(TransactionsSuccessState value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class TransactionsSuccessState implements SummaryState {
  const factory TransactionsSuccessState(
          {required final AccountEntity accountEntity,
          required final List<TransactionEntity> transactions,
          required final List<AccountEntity> accounts}) =
      _$TransactionsSuccessState;

  AccountEntity get accountEntity;
  List<TransactionEntity> get transactions;
  List<AccountEntity> get accounts;
  @JsonKey(ignore: true)
  _$$TransactionsSuccessStateCopyWith<_$TransactionsSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}
