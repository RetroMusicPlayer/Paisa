// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
    required TResult Function(int accountId, DateTime month)
        fetchTransactionsByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
    TResult? Function(int accountId, DateTime month)? fetchTransactionsByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    TResult Function(int accountId, DateTime month)? fetchTransactionsByMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
    required TResult Function(FetchTransactionsByMonthEvent value)
        fetchTransactionsByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
    TResult? Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    TResult Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsEventCopyWith<$Res> {
  factory $AccountsEventCopyWith(
          AccountsEvent value, $Res Function(AccountsEvent) then) =
      _$AccountsEventCopyWithImpl<$Res, AccountsEvent>;
}

/// @nodoc
class _$AccountsEventCopyWithImpl<$Res, $Val extends AccountsEvent>
    implements $AccountsEventCopyWith<$Res> {
  _$AccountsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddOrUpdateAccountEventImplCopyWith<$Res> {
  factory _$$AddOrUpdateAccountEventImplCopyWith(
          _$AddOrUpdateAccountEventImpl value,
          $Res Function(_$AddOrUpdateAccountEventImpl) then) =
      __$$AddOrUpdateAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool addOrUpdate});
}

/// @nodoc
class __$$AddOrUpdateAccountEventImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$AddOrUpdateAccountEventImpl>
    implements _$$AddOrUpdateAccountEventImplCopyWith<$Res> {
  __$$AddOrUpdateAccountEventImplCopyWithImpl(
      _$AddOrUpdateAccountEventImpl _value,
      $Res Function(_$AddOrUpdateAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addOrUpdate = null,
  }) {
    return _then(_$AddOrUpdateAccountEventImpl(
      null == addOrUpdate
          ? _value.addOrUpdate
          : addOrUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddOrUpdateAccountEventImpl implements AddOrUpdateAccountEvent {
  const _$AddOrUpdateAccountEventImpl(this.addOrUpdate);

  @override
  final bool addOrUpdate;

  @override
  String toString() {
    return 'AccountsEvent.addOrUpdate(addOrUpdate: $addOrUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrUpdateAccountEventImpl &&
            (identical(other.addOrUpdate, addOrUpdate) ||
                other.addOrUpdate == addOrUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addOrUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrUpdateAccountEventImplCopyWith<_$AddOrUpdateAccountEventImpl>
      get copyWith => __$$AddOrUpdateAccountEventImplCopyWithImpl<
          _$AddOrUpdateAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
    required TResult Function(int accountId, DateTime month)
        fetchTransactionsByMonth,
  }) {
    return addOrUpdate(this.addOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
    TResult? Function(int accountId, DateTime month)? fetchTransactionsByMonth,
  }) {
    return addOrUpdate?.call(this.addOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    TResult Function(int accountId, DateTime month)? fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (addOrUpdate != null) {
      return addOrUpdate(this.addOrUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
    required TResult Function(FetchTransactionsByMonthEvent value)
        fetchTransactionsByMonth,
  }) {
    return addOrUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
    TResult? Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
  }) {
    return addOrUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    TResult Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (addOrUpdate != null) {
      return addOrUpdate(this);
    }
    return orElse();
  }
}

abstract class AddOrUpdateAccountEvent implements AccountsEvent {
  const factory AddOrUpdateAccountEvent(final bool addOrUpdate) =
      _$AddOrUpdateAccountEventImpl;

  bool get addOrUpdate;
  @JsonKey(ignore: true)
  _$$AddOrUpdateAccountEventImplCopyWith<_$AddOrUpdateAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAccountEventImplCopyWith<$Res> {
  factory _$$DeleteAccountEventImplCopyWith(_$DeleteAccountEventImpl value,
          $Res Function(_$DeleteAccountEventImpl) then) =
      __$$DeleteAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountId});
}

/// @nodoc
class __$$DeleteAccountEventImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$DeleteAccountEventImpl>
    implements _$$DeleteAccountEventImplCopyWith<$Res> {
  __$$DeleteAccountEventImplCopyWithImpl(_$DeleteAccountEventImpl _value,
      $Res Function(_$DeleteAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$DeleteAccountEventImpl(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteAccountEventImpl implements DeleteAccountEvent {
  const _$DeleteAccountEventImpl(this.accountId);

  @override
  final int accountId;

  @override
  String toString() {
    return 'AccountsEvent.deleteAccount(accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountEventImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountEventImplCopyWith<_$DeleteAccountEventImpl> get copyWith =>
      __$$DeleteAccountEventImplCopyWithImpl<_$DeleteAccountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
    required TResult Function(int accountId, DateTime month)
        fetchTransactionsByMonth,
  }) {
    return deleteAccount(accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
    TResult? Function(int accountId, DateTime month)? fetchTransactionsByMonth,
  }) {
    return deleteAccount?.call(accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    TResult Function(int accountId, DateTime month)? fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(accountId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
    required TResult Function(FetchTransactionsByMonthEvent value)
        fetchTransactionsByMonth,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
    TResult? Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    TResult Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class DeleteAccountEvent implements AccountsEvent {
  const factory DeleteAccountEvent(final int accountId) =
      _$DeleteAccountEventImpl;

  int get accountId;
  @JsonKey(ignore: true)
  _$$DeleteAccountEventImplCopyWith<_$DeleteAccountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAccountAndExpenseFromIdEventImplCopyWith<$Res> {
  factory _$$FetchAccountAndExpenseFromIdEventImplCopyWith(
          _$FetchAccountAndExpenseFromIdEventImpl value,
          $Res Function(_$FetchAccountAndExpenseFromIdEventImpl) then) =
      __$$FetchAccountAndExpenseFromIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountId});
}

/// @nodoc
class __$$FetchAccountAndExpenseFromIdEventImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res,
        _$FetchAccountAndExpenseFromIdEventImpl>
    implements _$$FetchAccountAndExpenseFromIdEventImplCopyWith<$Res> {
  __$$FetchAccountAndExpenseFromIdEventImplCopyWithImpl(
      _$FetchAccountAndExpenseFromIdEventImpl _value,
      $Res Function(_$FetchAccountAndExpenseFromIdEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$FetchAccountAndExpenseFromIdEventImpl(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchAccountAndExpenseFromIdEventImpl
    implements FetchAccountAndExpenseFromIdEvent {
  const _$FetchAccountAndExpenseFromIdEventImpl(this.accountId);

  @override
  final int accountId;

  @override
  String toString() {
    return 'AccountsEvent.fetchAccountAndExpensesFromID(accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAccountAndExpenseFromIdEventImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAccountAndExpenseFromIdEventImplCopyWith<
          _$FetchAccountAndExpenseFromIdEventImpl>
      get copyWith => __$$FetchAccountAndExpenseFromIdEventImplCopyWithImpl<
          _$FetchAccountAndExpenseFromIdEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
    required TResult Function(int accountId, DateTime month)
        fetchTransactionsByMonth,
  }) {
    return fetchAccountAndExpensesFromID(accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
    TResult? Function(int accountId, DateTime month)? fetchTransactionsByMonth,
  }) {
    return fetchAccountAndExpensesFromID?.call(accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    TResult Function(int accountId, DateTime month)? fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (fetchAccountAndExpensesFromID != null) {
      return fetchAccountAndExpensesFromID(accountId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
    required TResult Function(FetchTransactionsByMonthEvent value)
        fetchTransactionsByMonth,
  }) {
    return fetchAccountAndExpensesFromID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
    TResult? Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
  }) {
    return fetchAccountAndExpensesFromID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    TResult Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (fetchAccountAndExpensesFromID != null) {
      return fetchAccountAndExpensesFromID(this);
    }
    return orElse();
  }
}

abstract class FetchAccountAndExpenseFromIdEvent implements AccountsEvent {
  const factory FetchAccountAndExpenseFromIdEvent(final int accountId) =
      _$FetchAccountAndExpenseFromIdEventImpl;

  int get accountId;
  @JsonKey(ignore: true)
  _$$FetchAccountAndExpenseFromIdEventImplCopyWith<
          _$FetchAccountAndExpenseFromIdEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAccountFromIdEventImplCopyWith<$Res> {
  factory _$$FetchAccountFromIdEventImplCopyWith(
          _$FetchAccountFromIdEventImpl value,
          $Res Function(_$FetchAccountFromIdEventImpl) then) =
      __$$FetchAccountFromIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountId});
}

/// @nodoc
class __$$FetchAccountFromIdEventImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$FetchAccountFromIdEventImpl>
    implements _$$FetchAccountFromIdEventImplCopyWith<$Res> {
  __$$FetchAccountFromIdEventImplCopyWithImpl(
      _$FetchAccountFromIdEventImpl _value,
      $Res Function(_$FetchAccountFromIdEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$FetchAccountFromIdEventImpl(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchAccountFromIdEventImpl implements FetchAccountFromIdEvent {
  const _$FetchAccountFromIdEventImpl(this.accountId);

  @override
  final int accountId;

  @override
  String toString() {
    return 'AccountsEvent.fetchAccountFromID(accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAccountFromIdEventImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAccountFromIdEventImplCopyWith<_$FetchAccountFromIdEventImpl>
      get copyWith => __$$FetchAccountFromIdEventImplCopyWithImpl<
          _$FetchAccountFromIdEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
    required TResult Function(int accountId, DateTime month)
        fetchTransactionsByMonth,
  }) {
    return fetchAccountFromID(accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
    TResult? Function(int accountId, DateTime month)? fetchTransactionsByMonth,
  }) {
    return fetchAccountFromID?.call(accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    TResult Function(int accountId, DateTime month)? fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (fetchAccountFromID != null) {
      return fetchAccountFromID(accountId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
    required TResult Function(FetchTransactionsByMonthEvent value)
        fetchTransactionsByMonth,
  }) {
    return fetchAccountFromID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
    TResult? Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
  }) {
    return fetchAccountFromID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    TResult Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (fetchAccountFromID != null) {
      return fetchAccountFromID(this);
    }
    return orElse();
  }
}

abstract class FetchAccountFromIdEvent implements AccountsEvent {
  const factory FetchAccountFromIdEvent(final int accountId) =
      _$FetchAccountFromIdEventImpl;

  int get accountId;
  @JsonKey(ignore: true)
  _$$FetchAccountFromIdEventImplCopyWith<_$FetchAccountFromIdEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountColorSelectedEventImplCopyWith<$Res> {
  factory _$$AccountColorSelectedEventImplCopyWith(
          _$AccountColorSelectedEventImpl value,
          $Res Function(_$AccountColorSelectedEventImpl) then) =
      __$$AccountColorSelectedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int color});
}

/// @nodoc
class __$$AccountColorSelectedEventImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$AccountColorSelectedEventImpl>
    implements _$$AccountColorSelectedEventImplCopyWith<$Res> {
  __$$AccountColorSelectedEventImplCopyWithImpl(
      _$AccountColorSelectedEventImpl _value,
      $Res Function(_$AccountColorSelectedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$AccountColorSelectedEventImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AccountColorSelectedEventImpl implements AccountColorSelectedEvent {
  const _$AccountColorSelectedEventImpl(this.color);

  @override
  final int color;

  @override
  String toString() {
    return 'AccountsEvent.selectedAccountColor(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountColorSelectedEventImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountColorSelectedEventImplCopyWith<_$AccountColorSelectedEventImpl>
      get copyWith => __$$AccountColorSelectedEventImplCopyWithImpl<
          _$AccountColorSelectedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
    required TResult Function(int accountId, DateTime month)
        fetchTransactionsByMonth,
  }) {
    return selectedAccountColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
    TResult? Function(int accountId, DateTime month)? fetchTransactionsByMonth,
  }) {
    return selectedAccountColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    TResult Function(int accountId, DateTime month)? fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (selectedAccountColor != null) {
      return selectedAccountColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
    required TResult Function(FetchTransactionsByMonthEvent value)
        fetchTransactionsByMonth,
  }) {
    return selectedAccountColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
    TResult? Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
  }) {
    return selectedAccountColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    TResult Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (selectedAccountColor != null) {
      return selectedAccountColor(this);
    }
    return orElse();
  }
}

abstract class AccountColorSelectedEvent implements AccountsEvent {
  const factory AccountColorSelectedEvent(final int color) =
      _$AccountColorSelectedEventImpl;

  int get color;
  @JsonKey(ignore: true)
  _$$AccountColorSelectedEventImplCopyWith<_$AccountColorSelectedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCardTypeEventImplCopyWith<$Res> {
  factory _$$UpdateCardTypeEventImplCopyWith(_$UpdateCardTypeEventImpl value,
          $Res Function(_$UpdateCardTypeEventImpl) then) =
      __$$UpdateCardTypeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CardType cardType});
}

/// @nodoc
class __$$UpdateCardTypeEventImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$UpdateCardTypeEventImpl>
    implements _$$UpdateCardTypeEventImplCopyWith<$Res> {
  __$$UpdateCardTypeEventImplCopyWithImpl(_$UpdateCardTypeEventImpl _value,
      $Res Function(_$UpdateCardTypeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
  }) {
    return _then(_$UpdateCardTypeEventImpl(
      null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
    ));
  }
}

/// @nodoc

class _$UpdateCardTypeEventImpl implements UpdateCardTypeEvent {
  const _$UpdateCardTypeEventImpl(this.cardType);

  @override
  final CardType cardType;

  @override
  String toString() {
    return 'AccountsEvent.updateCardType(cardType: $cardType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCardTypeEventImpl &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCardTypeEventImplCopyWith<_$UpdateCardTypeEventImpl> get copyWith =>
      __$$UpdateCardTypeEventImplCopyWithImpl<_$UpdateCardTypeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
    required TResult Function(int accountId, DateTime month)
        fetchTransactionsByMonth,
  }) {
    return updateCardType(cardType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
    TResult? Function(int accountId, DateTime month)? fetchTransactionsByMonth,
  }) {
    return updateCardType?.call(cardType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    TResult Function(int accountId, DateTime month)? fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (updateCardType != null) {
      return updateCardType(cardType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
    required TResult Function(FetchTransactionsByMonthEvent value)
        fetchTransactionsByMonth,
  }) {
    return updateCardType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
    TResult? Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
  }) {
    return updateCardType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    TResult Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (updateCardType != null) {
      return updateCardType(this);
    }
    return orElse();
  }
}

abstract class UpdateCardTypeEvent implements AccountsEvent {
  const factory UpdateCardTypeEvent(final CardType cardType) =
      _$UpdateCardTypeEventImpl;

  CardType get cardType;
  @JsonKey(ignore: true)
  _$$UpdateCardTypeEventImplCopyWith<_$UpdateCardTypeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCountriesEventImplCopyWith<$Res> {
  factory _$$FetchCountriesEventImplCopyWith(_$FetchCountriesEventImpl value,
          $Res Function(_$FetchCountriesEventImpl) then) =
      __$$FetchCountriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCountriesEventImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$FetchCountriesEventImpl>
    implements _$$FetchCountriesEventImplCopyWith<$Res> {
  __$$FetchCountriesEventImplCopyWithImpl(_$FetchCountriesEventImpl _value,
      $Res Function(_$FetchCountriesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCountriesEventImpl implements FetchCountriesEvent {
  const _$FetchCountriesEventImpl();

  @override
  String toString() {
    return 'AccountsEvent.fetchCountries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCountriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
    required TResult Function(int accountId, DateTime month)
        fetchTransactionsByMonth,
  }) {
    return fetchCountries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
    TResult? Function(int accountId, DateTime month)? fetchTransactionsByMonth,
  }) {
    return fetchCountries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    TResult Function(int accountId, DateTime month)? fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (fetchCountries != null) {
      return fetchCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
    required TResult Function(FetchTransactionsByMonthEvent value)
        fetchTransactionsByMonth,
  }) {
    return fetchCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
    TResult? Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
  }) {
    return fetchCountries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    TResult Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (fetchCountries != null) {
      return fetchCountries(this);
    }
    return orElse();
  }
}

abstract class FetchCountriesEvent implements AccountsEvent {
  const factory FetchCountriesEvent() = _$FetchCountriesEventImpl;
}

/// @nodoc
abstract class _$$FetchTransactionsByMonthEventImplCopyWith<$Res> {
  factory _$$FetchTransactionsByMonthEventImplCopyWith(
          _$FetchTransactionsByMonthEventImpl value,
          $Res Function(_$FetchTransactionsByMonthEventImpl) then) =
      __$$FetchTransactionsByMonthEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountId, DateTime month});
}

/// @nodoc
class __$$FetchTransactionsByMonthEventImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res,
        _$FetchTransactionsByMonthEventImpl>
    implements _$$FetchTransactionsByMonthEventImplCopyWith<$Res> {
  __$$FetchTransactionsByMonthEventImplCopyWithImpl(
      _$FetchTransactionsByMonthEventImpl _value,
      $Res Function(_$FetchTransactionsByMonthEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? month = null,
  }) {
    return _then(_$FetchTransactionsByMonthEventImpl(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FetchTransactionsByMonthEventImpl
    implements FetchTransactionsByMonthEvent {
  const _$FetchTransactionsByMonthEventImpl(this.accountId, this.month);

  @override
  final int accountId;
  @override
  final DateTime month;

  @override
  String toString() {
    return 'AccountsEvent.fetchTransactionsByMonth(accountId: $accountId, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTransactionsByMonthEventImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTransactionsByMonthEventImplCopyWith<
          _$FetchTransactionsByMonthEventImpl>
      get copyWith => __$$FetchTransactionsByMonthEventImplCopyWithImpl<
          _$FetchTransactionsByMonthEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
    required TResult Function(int accountId, DateTime month)
        fetchTransactionsByMonth,
  }) {
    return fetchTransactionsByMonth(accountId, month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
    TResult? Function(int accountId, DateTime month)? fetchTransactionsByMonth,
  }) {
    return fetchTransactionsByMonth?.call(accountId, month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    TResult Function(int accountId, DateTime month)? fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (fetchTransactionsByMonth != null) {
      return fetchTransactionsByMonth(accountId, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
    required TResult Function(FetchTransactionsByMonthEvent value)
        fetchTransactionsByMonth,
  }) {
    return fetchTransactionsByMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
    TResult? Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
  }) {
    return fetchTransactionsByMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    TResult Function(FetchTransactionsByMonthEvent value)?
        fetchTransactionsByMonth,
    required TResult orElse(),
  }) {
    if (fetchTransactionsByMonth != null) {
      return fetchTransactionsByMonth(this);
    }
    return orElse();
  }
}

abstract class FetchTransactionsByMonthEvent implements AccountsEvent {
  const factory FetchTransactionsByMonthEvent(
          final int accountId, final DateTime month) =
      _$FetchTransactionsByMonthEventImpl;

  int get accountId;
  DateTime get month;
  @JsonKey(ignore: true)
  _$$FetchTransactionsByMonthEventImplCopyWith<
          _$FetchTransactionsByMonthEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountSuccessStateImplCopyWith<$Res> {
  factory _$$AccountSuccessStateImplCopyWith(_$AccountSuccessStateImpl value,
          $Res Function(_$AccountSuccessStateImpl) then) =
      __$$AccountSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEntity account});

  $AccountEntityCopyWith<$Res> get account;
}

/// @nodoc
class __$$AccountSuccessStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountSuccessStateImpl>
    implements _$$AccountSuccessStateImplCopyWith<$Res> {
  __$$AccountSuccessStateImplCopyWithImpl(_$AccountSuccessStateImpl _value,
      $Res Function(_$AccountSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AccountSuccessStateImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountEntityCopyWith<$Res> get account {
    return $AccountEntityCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$AccountSuccessStateImpl implements AccountSuccessState {
  const _$AccountSuccessStateImpl(this.account);

  @override
  final AccountEntity account;

  @override
  String toString() {
    return 'AccountState.accountState(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSuccessStateImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSuccessStateImplCopyWith<_$AccountSuccessStateImpl> get copyWith =>
      __$$AccountSuccessStateImplCopyWithImpl<_$AccountSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return accountState(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return accountState?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (accountState != null) {
      return accountState(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return accountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return accountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (accountState != null) {
      return accountState(this);
    }
    return orElse();
  }
}

abstract class AccountSuccessState implements AccountState {
  const factory AccountSuccessState(final AccountEntity account) =
      _$AccountSuccessStateImpl;

  AccountEntity get account;
  @JsonKey(ignore: true)
  _$$AccountSuccessStateImplCopyWith<_$AccountSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountListStateImplCopyWith<$Res> {
  factory _$$AccountListStateImplCopyWith(_$AccountListStateImpl value,
          $Res Function(_$AccountListStateImpl) then) =
      __$$AccountListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AccountEntity> account});
}

/// @nodoc
class __$$AccountListStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountListStateImpl>
    implements _$$AccountListStateImplCopyWith<$Res> {
  __$$AccountListStateImplCopyWithImpl(_$AccountListStateImpl _value,
      $Res Function(_$AccountListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AccountListStateImpl(
      null == account
          ? _value._account
          : account // ignore: cast_nullable_to_non_nullable
              as List<AccountEntity>,
    ));
  }
}

/// @nodoc

class _$AccountListStateImpl implements AccountListState {
  const _$AccountListStateImpl(final List<AccountEntity> account)
      : _account = account;

  final List<AccountEntity> _account;
  @override
  List<AccountEntity> get account {
    if (_account is EqualUnmodifiableListView) return _account;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_account);
  }

  @override
  String toString() {
    return 'AccountState.accountsState(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountListStateImpl &&
            const DeepCollectionEquality().equals(other._account, _account));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_account));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountListStateImplCopyWith<_$AccountListStateImpl> get copyWith =>
      __$$AccountListStateImplCopyWithImpl<_$AccountListStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return accountsState(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return accountsState?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (accountsState != null) {
      return accountsState(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return accountsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return accountsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (accountsState != null) {
      return accountsState(this);
    }
    return orElse();
  }
}

abstract class AccountListState implements AccountState {
  const factory AccountListState(final List<AccountEntity> account) =
      _$AccountListStateImpl;

  List<AccountEntity> get account;
  @JsonKey(ignore: true)
  _$$AccountListStateImplCopyWith<_$AccountListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountAddedStateImplCopyWith<$Res> {
  factory _$$AccountAddedStateImplCopyWith(_$AccountAddedStateImpl value,
          $Res Function(_$AccountAddedStateImpl) then) =
      __$$AccountAddedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAddOrUpdate});
}

/// @nodoc
class __$$AccountAddedStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountAddedStateImpl>
    implements _$$AccountAddedStateImplCopyWith<$Res> {
  __$$AccountAddedStateImplCopyWithImpl(_$AccountAddedStateImpl _value,
      $Res Function(_$AccountAddedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAddOrUpdate = null,
  }) {
    return _then(_$AccountAddedStateImpl(
      null == isAddOrUpdate
          ? _value.isAddOrUpdate
          : isAddOrUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AccountAddedStateImpl implements AccountAddedState {
  const _$AccountAddedStateImpl(this.isAddOrUpdate);

  @override
  final bool isAddOrUpdate;

  @override
  String toString() {
    return 'AccountState.addAccountState(isAddOrUpdate: $isAddOrUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountAddedStateImpl &&
            (identical(other.isAddOrUpdate, isAddOrUpdate) ||
                other.isAddOrUpdate == isAddOrUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAddOrUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountAddedStateImplCopyWith<_$AccountAddedStateImpl> get copyWith =>
      __$$AccountAddedStateImplCopyWithImpl<_$AccountAddedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return addAccountState(isAddOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return addAccountState?.call(isAddOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (addAccountState != null) {
      return addAccountState(isAddOrUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return addAccountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return addAccountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (addAccountState != null) {
      return addAccountState(this);
    }
    return orElse();
  }
}

abstract class AccountAddedState implements AccountState {
  const factory AccountAddedState(final bool isAddOrUpdate) =
      _$AccountAddedStateImpl;

  bool get isAddOrUpdate;
  @JsonKey(ignore: true)
  _$$AccountAddedStateImplCopyWith<_$AccountAddedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountColorSelectedStateImplCopyWith<$Res> {
  factory _$$AccountColorSelectedStateImplCopyWith(
          _$AccountColorSelectedStateImpl value,
          $Res Function(_$AccountColorSelectedStateImpl) then) =
      __$$AccountColorSelectedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int color});
}

/// @nodoc
class __$$AccountColorSelectedStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountColorSelectedStateImpl>
    implements _$$AccountColorSelectedStateImplCopyWith<$Res> {
  __$$AccountColorSelectedStateImplCopyWithImpl(
      _$AccountColorSelectedStateImpl _value,
      $Res Function(_$AccountColorSelectedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$AccountColorSelectedStateImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AccountColorSelectedStateImpl implements AccountColorSelectedState {
  const _$AccountColorSelectedStateImpl(this.color);

  @override
  final int color;

  @override
  String toString() {
    return 'AccountState.colorSelected(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountColorSelectedStateImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountColorSelectedStateImplCopyWith<_$AccountColorSelectedStateImpl>
      get copyWith => __$$AccountColorSelectedStateImplCopyWithImpl<
          _$AccountColorSelectedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return colorSelected(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return colorSelected?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (colorSelected != null) {
      return colorSelected(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return colorSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return colorSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (colorSelected != null) {
      return colorSelected(this);
    }
    return orElse();
  }
}

abstract class AccountColorSelectedState implements AccountState {
  const factory AccountColorSelectedState(final int color) =
      _$AccountColorSelectedStateImpl;

  int get color;
  @JsonKey(ignore: true)
  _$$AccountColorSelectedStateImplCopyWith<_$AccountColorSelectedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountriesStateImplCopyWith<$Res> {
  factory _$$CountriesStateImplCopyWith(_$CountriesStateImpl value,
          $Res Function(_$CountriesStateImpl) then) =
      __$$CountriesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CountryEntity> countries});
}

/// @nodoc
class __$$CountriesStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$CountriesStateImpl>
    implements _$$CountriesStateImplCopyWith<$Res> {
  __$$CountriesStateImplCopyWithImpl(
      _$CountriesStateImpl _value, $Res Function(_$CountriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$CountriesStateImpl(
      null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryEntity>,
    ));
  }
}

/// @nodoc

class _$CountriesStateImpl implements CountriesState {
  const _$CountriesStateImpl(final List<CountryEntity> countries)
      : _countries = countries;

  final List<CountryEntity> _countries;
  @override
  List<CountryEntity> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'AccountState.countries(countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesStateImplCopyWith<_$CountriesStateImpl> get copyWith =>
      __$$CountriesStateImplCopyWithImpl<_$CountriesStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return countries(this.countries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return countries?.call(this.countries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (countries != null) {
      return countries(this.countries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return countries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return countries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (countries != null) {
      return countries(this);
    }
    return orElse();
  }
}

abstract class CountriesState implements AccountState {
  const factory CountriesState(final List<CountryEntity> countries) =
      _$CountriesStateImpl;

  List<CountryEntity> get countries;
  @JsonKey(ignore: true)
  _$$CountriesStateImplCopyWith<_$CountriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountDeletedStateImplCopyWith<$Res> {
  factory _$$AccountDeletedStateImplCopyWith(_$AccountDeletedStateImpl value,
          $Res Function(_$AccountDeletedStateImpl) then) =
      __$$AccountDeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountDeletedStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountDeletedStateImpl>
    implements _$$AccountDeletedStateImplCopyWith<$Res> {
  __$$AccountDeletedStateImplCopyWithImpl(_$AccountDeletedStateImpl _value,
      $Res Function(_$AccountDeletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountDeletedStateImpl implements AccountDeletedState {
  const _$AccountDeletedStateImpl();

  @override
  String toString() {
    return 'AccountState.deleteAccountState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return deleteAccountState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return deleteAccountState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (deleteAccountState != null) {
      return deleteAccountState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return deleteAccountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return deleteAccountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (deleteAccountState != null) {
      return deleteAccountState(this);
    }
    return orElse();
  }
}

abstract class AccountDeletedState implements AccountState {
  const factory AccountDeletedState() = _$AccountDeletedStateImpl;
}

/// @nodoc
abstract class _$$AccountErrorStateImplCopyWith<$Res> {
  factory _$$AccountErrorStateImplCopyWith(_$AccountErrorStateImpl value,
          $Res Function(_$AccountErrorStateImpl) then) =
      __$$AccountErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountErrors accountErrors});

  $AccountErrorsCopyWith<$Res> get accountErrors;
}

/// @nodoc
class __$$AccountErrorStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountErrorStateImpl>
    implements _$$AccountErrorStateImplCopyWith<$Res> {
  __$$AccountErrorStateImplCopyWithImpl(_$AccountErrorStateImpl _value,
      $Res Function(_$AccountErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountErrors = null,
  }) {
    return _then(_$AccountErrorStateImpl(
      null == accountErrors
          ? _value.accountErrors
          : accountErrors // ignore: cast_nullable_to_non_nullable
              as AccountErrors,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountErrorsCopyWith<$Res> get accountErrors {
    return $AccountErrorsCopyWith<$Res>(_value.accountErrors, (value) {
      return _then(_value.copyWith(accountErrors: value));
    });
  }
}

/// @nodoc

class _$AccountErrorStateImpl implements AccountErrorState {
  const _$AccountErrorStateImpl(this.accountErrors);

  @override
  final AccountErrors accountErrors;

  @override
  String toString() {
    return 'AccountState.errorAccountState(accountErrors: $accountErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountErrorStateImpl &&
            (identical(other.accountErrors, accountErrors) ||
                other.accountErrors == accountErrors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountErrors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountErrorStateImplCopyWith<_$AccountErrorStateImpl> get copyWith =>
      __$$AccountErrorStateImplCopyWithImpl<_$AccountErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return errorAccountState(accountErrors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return errorAccountState?.call(accountErrors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (errorAccountState != null) {
      return errorAccountState(accountErrors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return errorAccountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return errorAccountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (errorAccountState != null) {
      return errorAccountState(this);
    }
    return orElse();
  }
}

abstract class AccountErrorState implements AccountState {
  const factory AccountErrorState(final AccountErrors accountErrors) =
      _$AccountErrorStateImpl;

  AccountErrors get accountErrors;
  @JsonKey(ignore: true)
  _$$AccountErrorStateImplCopyWith<_$AccountErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountsInitialImplCopyWith<$Res> {
  factory _$$AccountsInitialImplCopyWith(_$AccountsInitialImpl value,
          $Res Function(_$AccountsInitialImpl) then) =
      __$$AccountsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountsInitialImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountsInitialImpl>
    implements _$$AccountsInitialImplCopyWith<$Res> {
  __$$AccountsInitialImplCopyWithImpl(
      _$AccountsInitialImpl _value, $Res Function(_$AccountsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountsInitialImpl implements AccountsInitial {
  const _$AccountsInitialImpl();

  @override
  String toString() {
    return 'AccountState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AccountsInitial implements AccountState {
  const factory AccountsInitial() = _$AccountsInitialImpl;
}

/// @nodoc
abstract class _$$UpdateAccountExcludeStateImplCopyWith<$Res> {
  factory _$$UpdateAccountExcludeStateImplCopyWith(
          _$UpdateAccountExcludeStateImpl value,
          $Res Function(_$UpdateAccountExcludeStateImpl) then) =
      __$$UpdateAccountExcludeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAccountExcluded});
}

/// @nodoc
class __$$UpdateAccountExcludeStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$UpdateAccountExcludeStateImpl>
    implements _$$UpdateAccountExcludeStateImplCopyWith<$Res> {
  __$$UpdateAccountExcludeStateImplCopyWithImpl(
      _$UpdateAccountExcludeStateImpl _value,
      $Res Function(_$UpdateAccountExcludeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAccountExcluded = null,
  }) {
    return _then(_$UpdateAccountExcludeStateImpl(
      isAccountExcluded: null == isAccountExcluded
          ? _value.isAccountExcluded
          : isAccountExcluded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateAccountExcludeStateImpl implements UpdateAccountExcludeState {
  const _$UpdateAccountExcludeStateImpl({this.isAccountExcluded = false});

  @override
  @JsonKey()
  final bool isAccountExcluded;

  @override
  String toString() {
    return 'AccountState.updateAccountExcluded(isAccountExcluded: $isAccountExcluded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAccountExcludeStateImpl &&
            (identical(other.isAccountExcluded, isAccountExcluded) ||
                other.isAccountExcluded == isAccountExcluded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAccountExcluded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAccountExcludeStateImplCopyWith<_$UpdateAccountExcludeStateImpl>
      get copyWith => __$$UpdateAccountExcludeStateImplCopyWithImpl<
          _$UpdateAccountExcludeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return updateAccountExcluded(isAccountExcluded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return updateAccountExcluded?.call(isAccountExcluded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (updateAccountExcluded != null) {
      return updateAccountExcluded(isAccountExcluded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return updateAccountExcluded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return updateAccountExcluded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (updateAccountExcluded != null) {
      return updateAccountExcluded(this);
    }
    return orElse();
  }
}

abstract class UpdateAccountExcludeState implements AccountState {
  const factory UpdateAccountExcludeState({final bool isAccountExcluded}) =
      _$UpdateAccountExcludeStateImpl;

  bool get isAccountExcluded;
  @JsonKey(ignore: true)
  _$$UpdateAccountExcludeStateImplCopyWith<_$UpdateAccountExcludeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCardTypeStateImplCopyWith<$Res> {
  factory _$$UpdateCardTypeStateImplCopyWith(_$UpdateCardTypeStateImpl value,
          $Res Function(_$UpdateCardTypeStateImpl) then) =
      __$$UpdateCardTypeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CardType cardType});
}

/// @nodoc
class __$$UpdateCardTypeStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$UpdateCardTypeStateImpl>
    implements _$$UpdateCardTypeStateImplCopyWith<$Res> {
  __$$UpdateCardTypeStateImplCopyWithImpl(_$UpdateCardTypeStateImpl _value,
      $Res Function(_$UpdateCardTypeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
  }) {
    return _then(_$UpdateCardTypeStateImpl(
      null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
    ));
  }
}

/// @nodoc

class _$UpdateCardTypeStateImpl implements UpdateCardTypeState {
  const _$UpdateCardTypeStateImpl(this.cardType);

  @override
  final CardType cardType;

  @override
  String toString() {
    return 'AccountState.updateCardType(cardType: $cardType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCardTypeStateImpl &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCardTypeStateImplCopyWith<_$UpdateCardTypeStateImpl> get copyWith =>
      __$$UpdateCardTypeStateImplCopyWithImpl<_$UpdateCardTypeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return updateCardType(cardType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return updateCardType?.call(cardType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (updateCardType != null) {
      return updateCardType(cardType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return updateCardType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return updateCardType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (updateCardType != null) {
      return updateCardType(this);
    }
    return orElse();
  }
}

abstract class UpdateCardTypeState implements AccountState {
  const factory UpdateCardTypeState(final CardType cardType) =
      _$UpdateCardTypeStateImpl;

  CardType get cardType;
  @JsonKey(ignore: true)
  _$$UpdateCardTypeStateImplCopyWith<_$UpdateCardTypeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountSelectedStateImplCopyWith<$Res> {
  factory _$$AccountSelectedStateImplCopyWith(_$AccountSelectedStateImpl value,
          $Res Function(_$AccountSelectedStateImpl) then) =
      __$$AccountSelectedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AccountEntity accountEntity, List<TransactionEntity> transactions});

  $AccountEntityCopyWith<$Res> get accountEntity;
}

/// @nodoc
class __$$AccountSelectedStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountSelectedStateImpl>
    implements _$$AccountSelectedStateImplCopyWith<$Res> {
  __$$AccountSelectedStateImplCopyWithImpl(_$AccountSelectedStateImpl _value,
      $Res Function(_$AccountSelectedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountEntity = null,
    Object? transactions = null,
  }) {
    return _then(_$AccountSelectedStateImpl(
      null == accountEntity
          ? _value.accountEntity
          : accountEntity // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountEntityCopyWith<$Res> get accountEntity {
    return $AccountEntityCopyWith<$Res>(_value.accountEntity, (value) {
      return _then(_value.copyWith(accountEntity: value));
    });
  }
}

/// @nodoc

class _$AccountSelectedStateImpl implements AccountSelectedState {
  const _$AccountSelectedStateImpl(
      this.accountEntity, final List<TransactionEntity> transactions)
      : _transactions = transactions;

  @override
  final AccountEntity accountEntity;
  final List<TransactionEntity> _transactions;
  @override
  List<TransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'AccountState.selectedAccount(accountEntity: $accountEntity, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSelectedStateImpl &&
            (identical(other.accountEntity, accountEntity) ||
                other.accountEntity == accountEntity) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountEntity,
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSelectedStateImplCopyWith<_$AccountSelectedStateImpl>
      get copyWith =>
          __$$AccountSelectedStateImplCopyWithImpl<_$AccountSelectedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return selectedAccount(accountEntity, transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return selectedAccount?.call(accountEntity, transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (selectedAccount != null) {
      return selectedAccount(accountEntity, transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return selectedAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return selectedAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (selectedAccount != null) {
      return selectedAccount(this);
    }
    return orElse();
  }
}

abstract class AccountSelectedState implements AccountState {
  const factory AccountSelectedState(final AccountEntity accountEntity,
      final List<TransactionEntity> transactions) = _$AccountSelectedStateImpl;

  AccountEntity get accountEntity;
  List<TransactionEntity> get transactions;
  @JsonKey(ignore: true)
  _$$AccountSelectedStateImplCopyWith<_$AccountSelectedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionsByMonthStateImplCopyWith<$Res> {
  factory _$$TransactionsByMonthStateImplCopyWith(
          _$TransactionsByMonthStateImpl value,
          $Res Function(_$TransactionsByMonthStateImpl) then) =
      __$$TransactionsByMonthStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int accountId, DateTime month, List<TransactionEntity> transactions});
}

/// @nodoc
class __$$TransactionsByMonthStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$TransactionsByMonthStateImpl>
    implements _$$TransactionsByMonthStateImplCopyWith<$Res> {
  __$$TransactionsByMonthStateImplCopyWithImpl(
      _$TransactionsByMonthStateImpl _value,
      $Res Function(_$TransactionsByMonthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? month = null,
    Object? transactions = null,
  }) {
    return _then(_$TransactionsByMonthStateImpl(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$TransactionsByMonthStateImpl implements TransactionsByMonthState {
  const _$TransactionsByMonthStateImpl(
      this.accountId, this.month, final List<TransactionEntity> transactions)
      : _transactions = transactions;

  @override
  final int accountId;
  @override
  final DateTime month;
  final List<TransactionEntity> _transactions;
  @override
  List<TransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'AccountState.transactionsByMonth(accountId: $accountId, month: $month, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsByMonthStateImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.month, month) || other.month == month) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId, month,
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsByMonthStateImplCopyWith<_$TransactionsByMonthStateImpl>
      get copyWith => __$$TransactionsByMonthStateImplCopyWithImpl<
          _$TransactionsByMonthStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<CountryEntity> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded) updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)
        selectedAccount,
    required TResult Function(
            int accountId, DateTime month, List<TransactionEntity> transactions)
        transactionsByMonth,
  }) {
    return transactionsByMonth(accountId, month, transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<CountryEntity> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult? Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
  }) {
    return transactionsByMonth?.call(accountId, month, transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<CountryEntity> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded)? updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function(
            AccountEntity accountEntity, List<TransactionEntity> transactions)?
        selectedAccount,
    TResult Function(int accountId, DateTime month,
            List<TransactionEntity> transactions)?
        transactionsByMonth,
    required TResult orElse(),
  }) {
    if (transactionsByMonth != null) {
      return transactionsByMonth(accountId, month, transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountSuccessState value) accountState,
    required TResult Function(AccountListState value) accountsState,
    required TResult Function(AccountAddedState value) addAccountState,
    required TResult Function(AccountColorSelectedState value) colorSelected,
    required TResult Function(CountriesState value) countries,
    required TResult Function(AccountDeletedState value) deleteAccountState,
    required TResult Function(AccountErrorState value) errorAccountState,
    required TResult Function(AccountsInitial value) idle,
    required TResult Function(UpdateAccountExcludeState value)
        updateAccountExcluded,
    required TResult Function(UpdateCardTypeState value) updateCardType,
    required TResult Function(AccountSelectedState value) selectedAccount,
    required TResult Function(TransactionsByMonthState value)
        transactionsByMonth,
  }) {
    return transactionsByMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountSuccessState value)? accountState,
    TResult? Function(AccountListState value)? accountsState,
    TResult? Function(AccountAddedState value)? addAccountState,
    TResult? Function(AccountColorSelectedState value)? colorSelected,
    TResult? Function(CountriesState value)? countries,
    TResult? Function(AccountDeletedState value)? deleteAccountState,
    TResult? Function(AccountErrorState value)? errorAccountState,
    TResult? Function(AccountsInitial value)? idle,
    TResult? Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult? Function(UpdateCardTypeState value)? updateCardType,
    TResult? Function(AccountSelectedState value)? selectedAccount,
    TResult? Function(TransactionsByMonthState value)? transactionsByMonth,
  }) {
    return transactionsByMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountSuccessState value)? accountState,
    TResult Function(AccountListState value)? accountsState,
    TResult Function(AccountAddedState value)? addAccountState,
    TResult Function(AccountColorSelectedState value)? colorSelected,
    TResult Function(CountriesState value)? countries,
    TResult Function(AccountDeletedState value)? deleteAccountState,
    TResult Function(AccountErrorState value)? errorAccountState,
    TResult Function(AccountsInitial value)? idle,
    TResult Function(UpdateAccountExcludeState value)? updateAccountExcluded,
    TResult Function(UpdateCardTypeState value)? updateCardType,
    TResult Function(AccountSelectedState value)? selectedAccount,
    TResult Function(TransactionsByMonthState value)? transactionsByMonth,
    required TResult orElse(),
  }) {
    if (transactionsByMonth != null) {
      return transactionsByMonth(this);
    }
    return orElse();
  }
}

abstract class TransactionsByMonthState implements AccountState {
  const factory TransactionsByMonthState(final int accountId,
          final DateTime month, final List<TransactionEntity> transactions) =
      _$TransactionsByMonthStateImpl;

  int get accountId;
  DateTime get month;
  List<TransactionEntity> get transactions;
  @JsonKey(ignore: true)
  _$$TransactionsByMonthStateImplCopyWith<_$TransactionsByMonthStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
