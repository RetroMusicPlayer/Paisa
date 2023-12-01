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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateDefaultAndExculde,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(_UpdateDefaultAndExculde value)
        updateDefaultAndExculde,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
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
abstract class _$$AddOrUpdateAccountEventCopyWith<$Res> {
  factory _$$AddOrUpdateAccountEventCopyWith(_$AddOrUpdateAccountEvent value,
          $Res Function(_$AddOrUpdateAccountEvent) then) =
      __$$AddOrUpdateAccountEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool addOrUpdate});
}

/// @nodoc
class __$$AddOrUpdateAccountEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$AddOrUpdateAccountEvent>
    implements _$$AddOrUpdateAccountEventCopyWith<$Res> {
  __$$AddOrUpdateAccountEventCopyWithImpl(_$AddOrUpdateAccountEvent _value,
      $Res Function(_$AddOrUpdateAccountEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addOrUpdate = null,
  }) {
    return _then(_$AddOrUpdateAccountEvent(
      null == addOrUpdate
          ? _value.addOrUpdate
          : addOrUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddOrUpdateAccountEvent implements AddOrUpdateAccountEvent {
  const _$AddOrUpdateAccountEvent(this.addOrUpdate);

  @override
  final bool addOrUpdate;

  @override
  String toString() {
    return 'AccountsEvent.addOrUpdate(addOrUpdate: $addOrUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrUpdateAccountEvent &&
            (identical(other.addOrUpdate, addOrUpdate) ||
                other.addOrUpdate == addOrUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addOrUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrUpdateAccountEventCopyWith<_$AddOrUpdateAccountEvent> get copyWith =>
      __$$AddOrUpdateAccountEventCopyWithImpl<_$AddOrUpdateAccountEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateDefaultAndExculde,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
  }) {
    return addOrUpdate(this.addOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
  }) {
    return addOrUpdate?.call(this.addOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
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
    required TResult Function(_UpdateDefaultAndExculde value)
        updateDefaultAndExculde,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
  }) {
    return addOrUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
  }) {
    return addOrUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
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
      _$AddOrUpdateAccountEvent;

  bool get addOrUpdate;
  @JsonKey(ignore: true)
  _$$AddOrUpdateAccountEventCopyWith<_$AddOrUpdateAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateDefaultAndExculdeCopyWith<$Res> {
  factory _$$_UpdateDefaultAndExculdeCopyWith(_$_UpdateDefaultAndExculde value,
          $Res Function(_$_UpdateDefaultAndExculde) then) =
      __$$_UpdateDefaultAndExculdeCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAccountExcluded, bool isAccountDefault});
}

/// @nodoc
class __$$_UpdateDefaultAndExculdeCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$_UpdateDefaultAndExculde>
    implements _$$_UpdateDefaultAndExculdeCopyWith<$Res> {
  __$$_UpdateDefaultAndExculdeCopyWithImpl(_$_UpdateDefaultAndExculde _value,
      $Res Function(_$_UpdateDefaultAndExculde) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAccountExcluded = null,
    Object? isAccountDefault = null,
  }) {
    return _then(_$_UpdateDefaultAndExculde(
      isAccountExcluded: null == isAccountExcluded
          ? _value.isAccountExcluded
          : isAccountExcluded // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccountDefault: null == isAccountDefault
          ? _value.isAccountDefault
          : isAccountDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateDefaultAndExculde implements _UpdateDefaultAndExculde {
  const _$_UpdateDefaultAndExculde(
      {this.isAccountExcluded = false, this.isAccountDefault = false});

  @override
  @JsonKey()
  final bool isAccountExcluded;
  @override
  @JsonKey()
  final bool isAccountDefault;

  @override
  String toString() {
    return 'AccountsEvent.updateDefaultAndExculde(isAccountExcluded: $isAccountExcluded, isAccountDefault: $isAccountDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateDefaultAndExculde &&
            (identical(other.isAccountExcluded, isAccountExcluded) ||
                other.isAccountExcluded == isAccountExcluded) &&
            (identical(other.isAccountDefault, isAccountDefault) ||
                other.isAccountDefault == isAccountDefault));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isAccountExcluded, isAccountDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateDefaultAndExculdeCopyWith<_$_UpdateDefaultAndExculde>
      get copyWith =>
          __$$_UpdateDefaultAndExculdeCopyWithImpl<_$_UpdateDefaultAndExculde>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateDefaultAndExculde,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
  }) {
    return updateDefaultAndExculde(isAccountExcluded, isAccountDefault);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
  }) {
    return updateDefaultAndExculde?.call(isAccountExcluded, isAccountDefault);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
    required TResult orElse(),
  }) {
    if (updateDefaultAndExculde != null) {
      return updateDefaultAndExculde(isAccountExcluded, isAccountDefault);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddOrUpdateAccountEvent value) addOrUpdate,
    required TResult Function(_UpdateDefaultAndExculde value)
        updateDefaultAndExculde,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
  }) {
    return updateDefaultAndExculde(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
  }) {
    return updateDefaultAndExculde?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    required TResult orElse(),
  }) {
    if (updateDefaultAndExculde != null) {
      return updateDefaultAndExculde(this);
    }
    return orElse();
  }
}

abstract class _UpdateDefaultAndExculde implements AccountsEvent {
  const factory _UpdateDefaultAndExculde(
      {final bool isAccountExcluded,
      final bool isAccountDefault}) = _$_UpdateDefaultAndExculde;

  bool get isAccountExcluded;
  bool get isAccountDefault;
  @JsonKey(ignore: true)
  _$$_UpdateDefaultAndExculdeCopyWith<_$_UpdateDefaultAndExculde>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAccountEventCopyWith<$Res> {
  factory _$$DeleteAccountEventCopyWith(_$DeleteAccountEvent value,
          $Res Function(_$DeleteAccountEvent) then) =
      __$$DeleteAccountEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountId});
}

/// @nodoc
class __$$DeleteAccountEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$DeleteAccountEvent>
    implements _$$DeleteAccountEventCopyWith<$Res> {
  __$$DeleteAccountEventCopyWithImpl(
      _$DeleteAccountEvent _value, $Res Function(_$DeleteAccountEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$DeleteAccountEvent(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteAccountEvent implements DeleteAccountEvent {
  const _$DeleteAccountEvent(this.accountId);

  @override
  final int accountId;

  @override
  String toString() {
    return 'AccountsEvent.deleteAccount(accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountEvent &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountEventCopyWith<_$DeleteAccountEvent> get copyWith =>
      __$$DeleteAccountEventCopyWithImpl<_$DeleteAccountEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateDefaultAndExculde,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
  }) {
    return deleteAccount(accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
  }) {
    return deleteAccount?.call(accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
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
    required TResult Function(_UpdateDefaultAndExculde value)
        updateDefaultAndExculde,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class DeleteAccountEvent implements AccountsEvent {
  const factory DeleteAccountEvent(final int accountId) = _$DeleteAccountEvent;

  int get accountId;
  @JsonKey(ignore: true)
  _$$DeleteAccountEventCopyWith<_$DeleteAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAccountAndExpenseFromIdEventCopyWith<$Res> {
  factory _$$FetchAccountAndExpenseFromIdEventCopyWith(
          _$FetchAccountAndExpenseFromIdEvent value,
          $Res Function(_$FetchAccountAndExpenseFromIdEvent) then) =
      __$$FetchAccountAndExpenseFromIdEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountId});
}

/// @nodoc
class __$$FetchAccountAndExpenseFromIdEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res,
        _$FetchAccountAndExpenseFromIdEvent>
    implements _$$FetchAccountAndExpenseFromIdEventCopyWith<$Res> {
  __$$FetchAccountAndExpenseFromIdEventCopyWithImpl(
      _$FetchAccountAndExpenseFromIdEvent _value,
      $Res Function(_$FetchAccountAndExpenseFromIdEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$FetchAccountAndExpenseFromIdEvent(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchAccountAndExpenseFromIdEvent
    implements FetchAccountAndExpenseFromIdEvent {
  const _$FetchAccountAndExpenseFromIdEvent(this.accountId);

  @override
  final int accountId;

  @override
  String toString() {
    return 'AccountsEvent.fetchAccountAndExpensesFromID(accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAccountAndExpenseFromIdEvent &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAccountAndExpenseFromIdEventCopyWith<
          _$FetchAccountAndExpenseFromIdEvent>
      get copyWith => __$$FetchAccountAndExpenseFromIdEventCopyWithImpl<
          _$FetchAccountAndExpenseFromIdEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateDefaultAndExculde,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
  }) {
    return fetchAccountAndExpensesFromID(accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
  }) {
    return fetchAccountAndExpensesFromID?.call(accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
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
    required TResult Function(_UpdateDefaultAndExculde value)
        updateDefaultAndExculde,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
  }) {
    return fetchAccountAndExpensesFromID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
  }) {
    return fetchAccountAndExpensesFromID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
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
      _$FetchAccountAndExpenseFromIdEvent;

  int get accountId;
  @JsonKey(ignore: true)
  _$$FetchAccountAndExpenseFromIdEventCopyWith<
          _$FetchAccountAndExpenseFromIdEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAccountFromIdEventCopyWith<$Res> {
  factory _$$FetchAccountFromIdEventCopyWith(_$FetchAccountFromIdEvent value,
          $Res Function(_$FetchAccountFromIdEvent) then) =
      __$$FetchAccountFromIdEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountId});
}

/// @nodoc
class __$$FetchAccountFromIdEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$FetchAccountFromIdEvent>
    implements _$$FetchAccountFromIdEventCopyWith<$Res> {
  __$$FetchAccountFromIdEventCopyWithImpl(_$FetchAccountFromIdEvent _value,
      $Res Function(_$FetchAccountFromIdEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
  }) {
    return _then(_$FetchAccountFromIdEvent(
      null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchAccountFromIdEvent implements FetchAccountFromIdEvent {
  const _$FetchAccountFromIdEvent(this.accountId);

  @override
  final int accountId;

  @override
  String toString() {
    return 'AccountsEvent.fetchAccountFromID(accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAccountFromIdEvent &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAccountFromIdEventCopyWith<_$FetchAccountFromIdEvent> get copyWith =>
      __$$FetchAccountFromIdEventCopyWithImpl<_$FetchAccountFromIdEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateDefaultAndExculde,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
  }) {
    return fetchAccountFromID(accountId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
  }) {
    return fetchAccountFromID?.call(accountId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
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
    required TResult Function(_UpdateDefaultAndExculde value)
        updateDefaultAndExculde,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
  }) {
    return fetchAccountFromID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
  }) {
    return fetchAccountFromID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
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
      _$FetchAccountFromIdEvent;

  int get accountId;
  @JsonKey(ignore: true)
  _$$FetchAccountFromIdEventCopyWith<_$FetchAccountFromIdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountColorSelectedEventCopyWith<$Res> {
  factory _$$AccountColorSelectedEventCopyWith(
          _$AccountColorSelectedEvent value,
          $Res Function(_$AccountColorSelectedEvent) then) =
      __$$AccountColorSelectedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int color});
}

/// @nodoc
class __$$AccountColorSelectedEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$AccountColorSelectedEvent>
    implements _$$AccountColorSelectedEventCopyWith<$Res> {
  __$$AccountColorSelectedEventCopyWithImpl(_$AccountColorSelectedEvent _value,
      $Res Function(_$AccountColorSelectedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$AccountColorSelectedEvent(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AccountColorSelectedEvent implements AccountColorSelectedEvent {
  const _$AccountColorSelectedEvent(this.color);

  @override
  final int color;

  @override
  String toString() {
    return 'AccountsEvent.selectedAccountColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountColorSelectedEvent &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountColorSelectedEventCopyWith<_$AccountColorSelectedEvent>
      get copyWith => __$$AccountColorSelectedEventCopyWithImpl<
          _$AccountColorSelectedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateDefaultAndExculde,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
  }) {
    return selectedAccountColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
  }) {
    return selectedAccountColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
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
    required TResult Function(_UpdateDefaultAndExculde value)
        updateDefaultAndExculde,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
  }) {
    return selectedAccountColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
  }) {
    return selectedAccountColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
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
      _$AccountColorSelectedEvent;

  int get color;
  @JsonKey(ignore: true)
  _$$AccountColorSelectedEventCopyWith<_$AccountColorSelectedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCardTypeEventCopyWith<$Res> {
  factory _$$UpdateCardTypeEventCopyWith(_$UpdateCardTypeEvent value,
          $Res Function(_$UpdateCardTypeEvent) then) =
      __$$UpdateCardTypeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({CardType cardType});
}

/// @nodoc
class __$$UpdateCardTypeEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$UpdateCardTypeEvent>
    implements _$$UpdateCardTypeEventCopyWith<$Res> {
  __$$UpdateCardTypeEventCopyWithImpl(
      _$UpdateCardTypeEvent _value, $Res Function(_$UpdateCardTypeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
  }) {
    return _then(_$UpdateCardTypeEvent(
      null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
    ));
  }
}

/// @nodoc

class _$UpdateCardTypeEvent implements UpdateCardTypeEvent {
  const _$UpdateCardTypeEvent(this.cardType);

  @override
  final CardType cardType;

  @override
  String toString() {
    return 'AccountsEvent.updateCardType(cardType: $cardType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCardTypeEvent &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCardTypeEventCopyWith<_$UpdateCardTypeEvent> get copyWith =>
      __$$UpdateCardTypeEventCopyWithImpl<_$UpdateCardTypeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateDefaultAndExculde,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
  }) {
    return updateCardType(cardType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
  }) {
    return updateCardType?.call(cardType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
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
    required TResult Function(_UpdateDefaultAndExculde value)
        updateDefaultAndExculde,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
  }) {
    return updateCardType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
  }) {
    return updateCardType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
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
      _$UpdateCardTypeEvent;

  CardType get cardType;
  @JsonKey(ignore: true)
  _$$UpdateCardTypeEventCopyWith<_$UpdateCardTypeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCountriesEventCopyWith<$Res> {
  factory _$$FetchCountriesEventCopyWith(_$FetchCountriesEvent value,
          $Res Function(_$FetchCountriesEvent) then) =
      __$$FetchCountriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCountriesEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$FetchCountriesEvent>
    implements _$$FetchCountriesEventCopyWith<$Res> {
  __$$FetchCountriesEventCopyWithImpl(
      _$FetchCountriesEvent _value, $Res Function(_$FetchCountriesEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCountriesEvent implements FetchCountriesEvent {
  const _$FetchCountriesEvent();

  @override
  String toString() {
    return 'AccountsEvent.fetchCountries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCountriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool addOrUpdate) addOrUpdate,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateDefaultAndExculde,
    required TResult Function(int accountId) deleteAccount,
    required TResult Function(int accountId) fetchAccountAndExpensesFromID,
    required TResult Function(int accountId) fetchAccountFromID,
    required TResult Function(int color) selectedAccountColor,
    required TResult Function(CardType cardType) updateCardType,
    required TResult Function() fetchCountries,
  }) {
    return fetchCountries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool addOrUpdate)? addOrUpdate,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult? Function(int accountId)? deleteAccount,
    TResult? Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult? Function(int accountId)? fetchAccountFromID,
    TResult? Function(int color)? selectedAccountColor,
    TResult? Function(CardType cardType)? updateCardType,
    TResult? Function()? fetchCountries,
  }) {
    return fetchCountries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool addOrUpdate)? addOrUpdate,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateDefaultAndExculde,
    TResult Function(int accountId)? deleteAccount,
    TResult Function(int accountId)? fetchAccountAndExpensesFromID,
    TResult Function(int accountId)? fetchAccountFromID,
    TResult Function(int color)? selectedAccountColor,
    TResult Function(CardType cardType)? updateCardType,
    TResult Function()? fetchCountries,
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
    required TResult Function(_UpdateDefaultAndExculde value)
        updateDefaultAndExculde,
    required TResult Function(DeleteAccountEvent value) deleteAccount,
    required TResult Function(FetchAccountAndExpenseFromIdEvent value)
        fetchAccountAndExpensesFromID,
    required TResult Function(FetchAccountFromIdEvent value) fetchAccountFromID,
    required TResult Function(AccountColorSelectedEvent value)
        selectedAccountColor,
    required TResult Function(UpdateCardTypeEvent value) updateCardType,
    required TResult Function(FetchCountriesEvent value) fetchCountries,
  }) {
    return fetchCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult? Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult? Function(DeleteAccountEvent value)? deleteAccount,
    TResult? Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult? Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult? Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult? Function(UpdateCardTypeEvent value)? updateCardType,
    TResult? Function(FetchCountriesEvent value)? fetchCountries,
  }) {
    return fetchCountries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddOrUpdateAccountEvent value)? addOrUpdate,
    TResult Function(_UpdateDefaultAndExculde value)? updateDefaultAndExculde,
    TResult Function(DeleteAccountEvent value)? deleteAccount,
    TResult Function(FetchAccountAndExpenseFromIdEvent value)?
        fetchAccountAndExpensesFromID,
    TResult Function(FetchAccountFromIdEvent value)? fetchAccountFromID,
    TResult Function(AccountColorSelectedEvent value)? selectedAccountColor,
    TResult Function(UpdateCardTypeEvent value)? updateCardType,
    TResult Function(FetchCountriesEvent value)? fetchCountries,
    required TResult orElse(),
  }) {
    if (fetchCountries != null) {
      return fetchCountries(this);
    }
    return orElse();
  }
}

abstract class FetchCountriesEvent implements AccountsEvent {
  const factory FetchCountriesEvent() = _$FetchCountriesEvent;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
abstract class _$$AccountAndExpensesStateCopyWith<$Res> {
  factory _$$AccountAndExpensesStateCopyWith(_$AccountAndExpensesState value,
          $Res Function(_$AccountAndExpensesState) then) =
      __$$AccountAndExpensesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEntity account, List<TransactionEntity> expenses});
}

/// @nodoc
class __$$AccountAndExpensesStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountAndExpensesState>
    implements _$$AccountAndExpensesStateCopyWith<$Res> {
  __$$AccountAndExpensesStateCopyWithImpl(_$AccountAndExpensesState _value,
      $Res Function(_$AccountAndExpensesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? expenses = null,
  }) {
    return _then(_$AccountAndExpensesState(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
      null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$AccountAndExpensesState implements AccountAndExpensesState {
  const _$AccountAndExpensesState(
      this.account, final List<TransactionEntity> expenses)
      : _expenses = expenses;

  @override
  final AccountEntity account;
  final List<TransactionEntity> _expenses;
  @override
  List<TransactionEntity> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  String toString() {
    return 'AccountState.accountAndExpenseState(account: $account, expenses: $expenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountAndExpensesState &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, account, const DeepCollectionEquality().hash(_expenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountAndExpensesStateCopyWith<_$AccountAndExpensesState> get copyWith =>
      __$$AccountAndExpensesStateCopyWithImpl<_$AccountAndExpensesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return accountAndExpenseState(account, expenses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return accountAndExpenseState?.call(account, expenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    required TResult orElse(),
  }) {
    if (accountAndExpenseState != null) {
      return accountAndExpenseState(account, expenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return accountAndExpenseState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return accountAndExpenseState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
    required TResult orElse(),
  }) {
    if (accountAndExpenseState != null) {
      return accountAndExpenseState(this);
    }
    return orElse();
  }
}

abstract class AccountAndExpensesState implements AccountState {
  const factory AccountAndExpensesState(
          final AccountEntity account, final List<TransactionEntity> expenses) =
      _$AccountAndExpensesState;

  AccountEntity get account;
  List<TransactionEntity> get expenses;
  @JsonKey(ignore: true)
  _$$AccountAndExpensesStateCopyWith<_$AccountAndExpensesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountSuccessStateCopyWith<$Res> {
  factory _$$AccountSuccessStateCopyWith(_$AccountSuccessState value,
          $Res Function(_$AccountSuccessState) then) =
      __$$AccountSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEntity account});
}

/// @nodoc
class __$$AccountSuccessStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountSuccessState>
    implements _$$AccountSuccessStateCopyWith<$Res> {
  __$$AccountSuccessStateCopyWithImpl(
      _$AccountSuccessState _value, $Res Function(_$AccountSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AccountSuccessState(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
    ));
  }
}

/// @nodoc

class _$AccountSuccessState implements AccountSuccessState {
  const _$AccountSuccessState(this.account);

  @override
  final AccountEntity account;

  @override
  String toString() {
    return 'AccountState.accountState(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSuccessState &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSuccessStateCopyWith<_$AccountSuccessState> get copyWith =>
      __$$AccountSuccessStateCopyWithImpl<_$AccountSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return accountState(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return accountState?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
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
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return accountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return accountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
      _$AccountSuccessState;

  AccountEntity get account;
  @JsonKey(ignore: true)
  _$$AccountSuccessStateCopyWith<_$AccountSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountListStateCopyWith<$Res> {
  factory _$$AccountListStateCopyWith(
          _$AccountListState value, $Res Function(_$AccountListState) then) =
      __$$AccountListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AccountEntity> account});
}

/// @nodoc
class __$$AccountListStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountListState>
    implements _$$AccountListStateCopyWith<$Res> {
  __$$AccountListStateCopyWithImpl(
      _$AccountListState _value, $Res Function(_$AccountListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AccountListState(
      null == account
          ? _value._account
          : account // ignore: cast_nullable_to_non_nullable
              as List<AccountEntity>,
    ));
  }
}

/// @nodoc

class _$AccountListState implements AccountListState {
  const _$AccountListState(final List<AccountEntity> account)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountListState &&
            const DeepCollectionEquality().equals(other._account, _account));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_account));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountListStateCopyWith<_$AccountListState> get copyWith =>
      __$$AccountListStateCopyWithImpl<_$AccountListState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return accountsState(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return accountsState?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
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
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return accountsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return accountsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
      _$AccountListState;

  List<AccountEntity> get account;
  @JsonKey(ignore: true)
  _$$AccountListStateCopyWith<_$AccountListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountAddedStateCopyWith<$Res> {
  factory _$$AccountAddedStateCopyWith(
          _$AccountAddedState value, $Res Function(_$AccountAddedState) then) =
      __$$AccountAddedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAddOrUpdate});
}

/// @nodoc
class __$$AccountAddedStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountAddedState>
    implements _$$AccountAddedStateCopyWith<$Res> {
  __$$AccountAddedStateCopyWithImpl(
      _$AccountAddedState _value, $Res Function(_$AccountAddedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAddOrUpdate = null,
  }) {
    return _then(_$AccountAddedState(
      null == isAddOrUpdate
          ? _value.isAddOrUpdate
          : isAddOrUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AccountAddedState implements AccountAddedState {
  const _$AccountAddedState(this.isAddOrUpdate);

  @override
  final bool isAddOrUpdate;

  @override
  String toString() {
    return 'AccountState.addAccountState(isAddOrUpdate: $isAddOrUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountAddedState &&
            (identical(other.isAddOrUpdate, isAddOrUpdate) ||
                other.isAddOrUpdate == isAddOrUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAddOrUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountAddedStateCopyWith<_$AccountAddedState> get copyWith =>
      __$$AccountAddedStateCopyWithImpl<_$AccountAddedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return addAccountState(isAddOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return addAccountState?.call(isAddOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
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
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return addAccountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return addAccountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
      _$AccountAddedState;

  bool get isAddOrUpdate;
  @JsonKey(ignore: true)
  _$$AccountAddedStateCopyWith<_$AccountAddedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountColorSelectedStateCopyWith<$Res> {
  factory _$$AccountColorSelectedStateCopyWith(
          _$AccountColorSelectedState value,
          $Res Function(_$AccountColorSelectedState) then) =
      __$$AccountColorSelectedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({int color});
}

/// @nodoc
class __$$AccountColorSelectedStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountColorSelectedState>
    implements _$$AccountColorSelectedStateCopyWith<$Res> {
  __$$AccountColorSelectedStateCopyWithImpl(_$AccountColorSelectedState _value,
      $Res Function(_$AccountColorSelectedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$AccountColorSelectedState(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AccountColorSelectedState implements AccountColorSelectedState {
  const _$AccountColorSelectedState(this.color);

  @override
  final int color;

  @override
  String toString() {
    return 'AccountState.colorSelected(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountColorSelectedState &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountColorSelectedStateCopyWith<_$AccountColorSelectedState>
      get copyWith => __$$AccountColorSelectedStateCopyWithImpl<
          _$AccountColorSelectedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return colorSelected(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return colorSelected?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
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
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return colorSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return colorSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
      _$AccountColorSelectedState;

  int get color;
  @JsonKey(ignore: true)
  _$$AccountColorSelectedStateCopyWith<_$AccountColorSelectedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountriesStateCopyWith<$Res> {
  factory _$$CountriesStateCopyWith(
          _$CountriesState value, $Res Function(_$CountriesState) then) =
      __$$CountriesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Country> countries});
}

/// @nodoc
class __$$CountriesStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$CountriesState>
    implements _$$CountriesStateCopyWith<$Res> {
  __$$CountriesStateCopyWithImpl(
      _$CountriesState _value, $Res Function(_$CountriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$CountriesState(
      null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc

class _$CountriesState implements CountriesState {
  const _$CountriesState(final List<Country> countries)
      : _countries = countries;

  final List<Country> _countries;
  @override
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'AccountState.countries(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesState &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesStateCopyWith<_$CountriesState> get copyWith =>
      __$$CountriesStateCopyWithImpl<_$CountriesState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return countries(this.countries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return countries?.call(this.countries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
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
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return countries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return countries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
    required TResult orElse(),
  }) {
    if (countries != null) {
      return countries(this);
    }
    return orElse();
  }
}

abstract class CountriesState implements AccountState {
  const factory CountriesState(final List<Country> countries) =
      _$CountriesState;

  List<Country> get countries;
  @JsonKey(ignore: true)
  _$$CountriesStateCopyWith<_$CountriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountDeletedStateCopyWith<$Res> {
  factory _$$AccountDeletedStateCopyWith(_$AccountDeletedState value,
          $Res Function(_$AccountDeletedState) then) =
      __$$AccountDeletedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountDeletedStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountDeletedState>
    implements _$$AccountDeletedStateCopyWith<$Res> {
  __$$AccountDeletedStateCopyWithImpl(
      _$AccountDeletedState _value, $Res Function(_$AccountDeletedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountDeletedState implements AccountDeletedState {
  const _$AccountDeletedState();

  @override
  String toString() {
    return 'AccountState.deleteAccountState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountDeletedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return deleteAccountState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return deleteAccountState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
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
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return deleteAccountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return deleteAccountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
    required TResult orElse(),
  }) {
    if (deleteAccountState != null) {
      return deleteAccountState(this);
    }
    return orElse();
  }
}

abstract class AccountDeletedState implements AccountState {
  const factory AccountDeletedState() = _$AccountDeletedState;
}

/// @nodoc
abstract class _$$AccountErrorStateCopyWith<$Res> {
  factory _$$AccountErrorStateCopyWith(
          _$AccountErrorState value, $Res Function(_$AccountErrorState) then) =
      __$$AccountErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountErrors accountErrors});

  $AccountErrorsCopyWith<$Res> get accountErrors;
}

/// @nodoc
class __$$AccountErrorStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountErrorState>
    implements _$$AccountErrorStateCopyWith<$Res> {
  __$$AccountErrorStateCopyWithImpl(
      _$AccountErrorState _value, $Res Function(_$AccountErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountErrors = null,
  }) {
    return _then(_$AccountErrorState(
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

class _$AccountErrorState implements AccountErrorState {
  const _$AccountErrorState(this.accountErrors);

  @override
  final AccountErrors accountErrors;

  @override
  String toString() {
    return 'AccountState.errorAccountState(accountErrors: $accountErrors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountErrorState &&
            (identical(other.accountErrors, accountErrors) ||
                other.accountErrors == accountErrors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountErrors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountErrorStateCopyWith<_$AccountErrorState> get copyWith =>
      __$$AccountErrorStateCopyWithImpl<_$AccountErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return errorAccountState(accountErrors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return errorAccountState?.call(accountErrors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
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
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return errorAccountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return errorAccountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
      _$AccountErrorState;

  AccountErrors get accountErrors;
  @JsonKey(ignore: true)
  _$$AccountErrorStateCopyWith<_$AccountErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountsInitialCopyWith<$Res> {
  factory _$$AccountsInitialCopyWith(
          _$AccountsInitial value, $Res Function(_$AccountsInitial) then) =
      __$$AccountsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountsInitialCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountsInitial>
    implements _$$AccountsInitialCopyWith<$Res> {
  __$$AccountsInitialCopyWithImpl(
      _$AccountsInitial _value, $Res Function(_$AccountsInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountsInitial implements AccountsInitial {
  const _$AccountsInitial();

  @override
  String toString() {
    return 'AccountState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
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
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AccountsInitial implements AccountState {
  const factory AccountsInitial() = _$AccountsInitial;
}

/// @nodoc
abstract class _$$UpdateAccountExcludeStateCopyWith<$Res> {
  factory _$$UpdateAccountExcludeStateCopyWith(
          _$UpdateAccountExcludeState value,
          $Res Function(_$UpdateAccountExcludeState) then) =
      __$$UpdateAccountExcludeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAccountExcluded, bool isAccountDefault});
}

/// @nodoc
class __$$UpdateAccountExcludeStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$UpdateAccountExcludeState>
    implements _$$UpdateAccountExcludeStateCopyWith<$Res> {
  __$$UpdateAccountExcludeStateCopyWithImpl(_$UpdateAccountExcludeState _value,
      $Res Function(_$UpdateAccountExcludeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAccountExcluded = null,
    Object? isAccountDefault = null,
  }) {
    return _then(_$UpdateAccountExcludeState(
      isAccountExcluded: null == isAccountExcluded
          ? _value.isAccountExcluded
          : isAccountExcluded // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccountDefault: null == isAccountDefault
          ? _value.isAccountDefault
          : isAccountDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateAccountExcludeState implements UpdateAccountExcludeState {
  const _$UpdateAccountExcludeState(
      {this.isAccountExcluded = false, this.isAccountDefault = false});

  @override
  @JsonKey()
  final bool isAccountExcluded;
  @override
  @JsonKey()
  final bool isAccountDefault;

  @override
  String toString() {
    return 'AccountState.updateAccountExcluded(isAccountExcluded: $isAccountExcluded, isAccountDefault: $isAccountDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAccountExcludeState &&
            (identical(other.isAccountExcluded, isAccountExcluded) ||
                other.isAccountExcluded == isAccountExcluded) &&
            (identical(other.isAccountDefault, isAccountDefault) ||
                other.isAccountDefault == isAccountDefault));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isAccountExcluded, isAccountDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAccountExcludeStateCopyWith<_$UpdateAccountExcludeState>
      get copyWith => __$$UpdateAccountExcludeStateCopyWithImpl<
          _$UpdateAccountExcludeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return updateAccountExcluded(isAccountExcluded, isAccountDefault);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return updateAccountExcluded?.call(isAccountExcluded, isAccountDefault);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
    required TResult orElse(),
  }) {
    if (updateAccountExcluded != null) {
      return updateAccountExcluded(isAccountExcluded, isAccountDefault);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return updateAccountExcluded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return updateAccountExcluded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
    required TResult orElse(),
  }) {
    if (updateAccountExcluded != null) {
      return updateAccountExcluded(this);
    }
    return orElse();
  }
}

abstract class UpdateAccountExcludeState implements AccountState {
  const factory UpdateAccountExcludeState(
      {final bool isAccountExcluded,
      final bool isAccountDefault}) = _$UpdateAccountExcludeState;

  bool get isAccountExcluded;
  bool get isAccountDefault;
  @JsonKey(ignore: true)
  _$$UpdateAccountExcludeStateCopyWith<_$UpdateAccountExcludeState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCardTypeStateCopyWith<$Res> {
  factory _$$UpdateCardTypeStateCopyWith(_$UpdateCardTypeState value,
          $Res Function(_$UpdateCardTypeState) then) =
      __$$UpdateCardTypeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({CardType cardType});
}

/// @nodoc
class __$$UpdateCardTypeStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$UpdateCardTypeState>
    implements _$$UpdateCardTypeStateCopyWith<$Res> {
  __$$UpdateCardTypeStateCopyWithImpl(
      _$UpdateCardTypeState _value, $Res Function(_$UpdateCardTypeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
  }) {
    return _then(_$UpdateCardTypeState(
      null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
    ));
  }
}

/// @nodoc

class _$UpdateCardTypeState implements UpdateCardTypeState {
  const _$UpdateCardTypeState(this.cardType);

  @override
  final CardType cardType;

  @override
  String toString() {
    return 'AccountState.updateCardType(cardType: $cardType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCardTypeState &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCardTypeStateCopyWith<_$UpdateCardTypeState> get copyWith =>
      __$$UpdateCardTypeStateCopyWithImpl<_$UpdateCardTypeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AccountEntity account, List<TransactionEntity> expenses)
        accountAndExpenseState,
    required TResult Function(AccountEntity account) accountState,
    required TResult Function(List<AccountEntity> account) accountsState,
    required TResult Function(bool isAddOrUpdate) addAccountState,
    required TResult Function(int color) colorSelected,
    required TResult Function(List<Country> countries) countries,
    required TResult Function() deleteAccountState,
    required TResult Function(AccountErrors accountErrors) errorAccountState,
    required TResult Function() idle,
    required TResult Function(bool isAccountExcluded, bool isAccountDefault)
        updateAccountExcluded,
    required TResult Function(CardType cardType) updateCardType,
  }) {
    return updateCardType(cardType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult? Function(AccountEntity account)? accountState,
    TResult? Function(List<AccountEntity> account)? accountsState,
    TResult? Function(bool isAddOrUpdate)? addAccountState,
    TResult? Function(int color)? colorSelected,
    TResult? Function(List<Country> countries)? countries,
    TResult? Function()? deleteAccountState,
    TResult? Function(AccountErrors accountErrors)? errorAccountState,
    TResult? Function()? idle,
    TResult? Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult? Function(CardType cardType)? updateCardType,
  }) {
    return updateCardType?.call(cardType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account, List<TransactionEntity> expenses)?
        accountAndExpenseState,
    TResult Function(AccountEntity account)? accountState,
    TResult Function(List<AccountEntity> account)? accountsState,
    TResult Function(bool isAddOrUpdate)? addAccountState,
    TResult Function(int color)? colorSelected,
    TResult Function(List<Country> countries)? countries,
    TResult Function()? deleteAccountState,
    TResult Function(AccountErrors accountErrors)? errorAccountState,
    TResult Function()? idle,
    TResult Function(bool isAccountExcluded, bool isAccountDefault)?
        updateAccountExcluded,
    TResult Function(CardType cardType)? updateCardType,
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
    required TResult Function(AccountAndExpensesState value)
        accountAndExpenseState,
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
  }) {
    return updateCardType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountAndExpensesState value)? accountAndExpenseState,
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
  }) {
    return updateCardType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountAndExpensesState value)? accountAndExpenseState,
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
      _$UpdateCardTypeState;

  CardType get cardType;
  @JsonKey(ignore: true)
  _$$UpdateCardTypeStateCopyWith<_$UpdateCardTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}
