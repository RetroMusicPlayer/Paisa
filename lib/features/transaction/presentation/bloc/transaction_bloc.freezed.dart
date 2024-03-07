// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddOrUpdateExpenseEventImplCopyWith<$Res> {
  factory _$$AddOrUpdateExpenseEventImplCopyWith(
          _$AddOrUpdateExpenseEventImpl value,
          $Res Function(_$AddOrUpdateExpenseEventImpl) then) =
      __$$AddOrUpdateExpenseEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAdding});
}

/// @nodoc
class __$$AddOrUpdateExpenseEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$AddOrUpdateExpenseEventImpl>
    implements _$$AddOrUpdateExpenseEventImplCopyWith<$Res> {
  __$$AddOrUpdateExpenseEventImplCopyWithImpl(
      _$AddOrUpdateExpenseEventImpl _value,
      $Res Function(_$AddOrUpdateExpenseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdding = null,
  }) {
    return _then(_$AddOrUpdateExpenseEventImpl(
      null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddOrUpdateExpenseEventImpl implements _AddOrUpdateExpenseEvent {
  const _$AddOrUpdateExpenseEventImpl(this.isAdding);

  @override
  final bool isAdding;

  @override
  String toString() {
    return 'TransactionEvent.addOrUpdate(isAdding: $isAdding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrUpdateExpenseEventImpl &&
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAdding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrUpdateExpenseEventImplCopyWith<_$AddOrUpdateExpenseEventImpl>
      get copyWith => __$$AddOrUpdateExpenseEventImplCopyWithImpl<
          _$AddOrUpdateExpenseEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return addOrUpdate(isAdding);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return addOrUpdate?.call(isAdding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (addOrUpdate != null) {
      return addOrUpdate(isAdding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return addOrUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return addOrUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (addOrUpdate != null) {
      return addOrUpdate(this);
    }
    return orElse();
  }
}

abstract class _AddOrUpdateExpenseEvent implements TransactionEvent {
  const factory _AddOrUpdateExpenseEvent(final bool isAdding) =
      _$AddOrUpdateExpenseEventImpl;

  bool get isAdding;
  @JsonKey(ignore: true)
  _$$AddOrUpdateExpenseEventImplCopyWith<_$AddOrUpdateExpenseEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearExpenseEventImplCopyWith<$Res> {
  factory _$$ClearExpenseEventImplCopyWith(_$ClearExpenseEventImpl value,
          $Res Function(_$ClearExpenseEventImpl) then) =
      __$$ClearExpenseEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String expenseId});
}

/// @nodoc
class __$$ClearExpenseEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$ClearExpenseEventImpl>
    implements _$$ClearExpenseEventImplCopyWith<$Res> {
  __$$ClearExpenseEventImplCopyWithImpl(_$ClearExpenseEventImpl _value,
      $Res Function(_$ClearExpenseEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = null,
  }) {
    return _then(_$ClearExpenseEventImpl(
      null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClearExpenseEventImpl implements _ClearExpenseEvent {
  const _$ClearExpenseEventImpl(this.expenseId);

  @override
  final String expenseId;

  @override
  String toString() {
    return 'TransactionEvent.delete(expenseId: $expenseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearExpenseEventImpl &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearExpenseEventImplCopyWith<_$ClearExpenseEventImpl> get copyWith =>
      __$$ClearExpenseEventImplCopyWithImpl<_$ClearExpenseEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return delete(expenseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return delete?.call(expenseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(expenseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _ClearExpenseEvent implements TransactionEvent {
  const factory _ClearExpenseEvent(final String expenseId) =
      _$ClearExpenseEventImpl;

  String get expenseId;
  @JsonKey(ignore: true)
  _$$ClearExpenseEventImplCopyWith<_$ClearExpenseEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTransactionTypeEventImplCopyWith<$Res> {
  factory _$$ChangeTransactionTypeEventImplCopyWith(
          _$ChangeTransactionTypeEventImpl value,
          $Res Function(_$ChangeTransactionTypeEventImpl) then) =
      __$$ChangeTransactionTypeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionType transactionType});
}

/// @nodoc
class __$$ChangeTransactionTypeEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$ChangeTransactionTypeEventImpl>
    implements _$$ChangeTransactionTypeEventImplCopyWith<$Res> {
  __$$ChangeTransactionTypeEventImplCopyWithImpl(
      _$ChangeTransactionTypeEventImpl _value,
      $Res Function(_$ChangeTransactionTypeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
  }) {
    return _then(_$ChangeTransactionTypeEventImpl(
      null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc

class _$ChangeTransactionTypeEventImpl implements _ChangeTransactionTypeEvent {
  const _$ChangeTransactionTypeEventImpl(this.transactionType);

  @override
  final TransactionType transactionType;

  @override
  String toString() {
    return 'TransactionEvent.changeTransactionType(transactionType: $transactionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTransactionTypeEventImpl &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTransactionTypeEventImplCopyWith<_$ChangeTransactionTypeEventImpl>
      get copyWith => __$$ChangeTransactionTypeEventImplCopyWithImpl<
          _$ChangeTransactionTypeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return changeTransactionType(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return changeTransactionType?.call(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeTransactionType != null) {
      return changeTransactionType(transactionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return changeTransactionType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return changeTransactionType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeTransactionType != null) {
      return changeTransactionType(this);
    }
    return orElse();
  }
}

abstract class _ChangeTransactionTypeEvent implements TransactionEvent {
  const factory _ChangeTransactionTypeEvent(
      final TransactionType transactionType) = _$ChangeTransactionTypeEventImpl;

  TransactionType get transactionType;
  @JsonKey(ignore: true)
  _$$ChangeTransactionTypeEventImplCopyWith<_$ChangeTransactionTypeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransferAccountEventImplCopyWith<$Res> {
  factory _$$TransferAccountEventImplCopyWith(_$TransferAccountEventImpl value,
          $Res Function(_$TransferAccountEventImpl) then) =
      __$$TransferAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEntity account, bool isFromAccount});
}

/// @nodoc
class __$$TransferAccountEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransferAccountEventImpl>
    implements _$$TransferAccountEventImplCopyWith<$Res> {
  __$$TransferAccountEventImplCopyWithImpl(_$TransferAccountEventImpl _value,
      $Res Function(_$TransferAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? isFromAccount = null,
  }) {
    return _then(_$TransferAccountEventImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
      isFromAccount: null == isFromAccount
          ? _value.isFromAccount
          : isFromAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TransferAccountEventImpl implements _TransferAccountEvent {
  const _$TransferAccountEventImpl(this.account, {this.isFromAccount = false});

  @override
  final AccountEntity account;
  @override
  @JsonKey()
  final bool isFromAccount;

  @override
  String toString() {
    return 'TransactionEvent.transferAccount(account: $account, isFromAccount: $isFromAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferAccountEventImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.isFromAccount, isFromAccount) ||
                other.isFromAccount == isFromAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, isFromAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferAccountEventImplCopyWith<_$TransferAccountEventImpl>
      get copyWith =>
          __$$TransferAccountEventImplCopyWithImpl<_$TransferAccountEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return transferAccount(account, isFromAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return transferAccount?.call(account, isFromAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transferAccount != null) {
      return transferAccount(account, isFromAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return transferAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return transferAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transferAccount != null) {
      return transferAccount(this);
    }
    return orElse();
  }
}

abstract class _TransferAccountEvent implements TransactionEvent {
  const factory _TransferAccountEvent(final AccountEntity account,
      {final bool isFromAccount}) = _$TransferAccountEventImpl;

  AccountEntity get account;
  bool get isFromAccount;
  @JsonKey(ignore: true)
  _$$TransferAccountEventImplCopyWith<_$TransferAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRecurringEventImplCopyWith<$Res> {
  factory _$$AddRecurringEventImplCopyWith(_$AddRecurringEventImpl value,
          $Res Function(_$AddRecurringEventImpl) then) =
      __$$AddRecurringEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddRecurringEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$AddRecurringEventImpl>
    implements _$$AddRecurringEventImplCopyWith<$Res> {
  __$$AddRecurringEventImplCopyWithImpl(_$AddRecurringEventImpl _value,
      $Res Function(_$AddRecurringEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddRecurringEventImpl implements _AddRecurringEvent {
  const _$AddRecurringEventImpl();

  @override
  String toString() {
    return 'TransactionEvent.addRecurring()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddRecurringEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return addRecurring();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return addRecurring?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (addRecurring != null) {
      return addRecurring();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return addRecurring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return addRecurring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (addRecurring != null) {
      return addRecurring(this);
    }
    return orElse();
  }
}

abstract class _AddRecurringEvent implements TransactionEvent {
  const factory _AddRecurringEvent() = _$AddRecurringEventImpl;
}

/// @nodoc
abstract class _$$ChangeAccountEventImplCopyWith<$Res> {
  factory _$$ChangeAccountEventImplCopyWith(_$ChangeAccountEventImpl value,
          $Res Function(_$ChangeAccountEventImpl) then) =
      __$$ChangeAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEntity account});
}

/// @nodoc
class __$$ChangeAccountEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$ChangeAccountEventImpl>
    implements _$$ChangeAccountEventImplCopyWith<$Res> {
  __$$ChangeAccountEventImplCopyWithImpl(_$ChangeAccountEventImpl _value,
      $Res Function(_$ChangeAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$ChangeAccountEventImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
    ));
  }
}

/// @nodoc

class _$ChangeAccountEventImpl implements _ChangeAccountEvent {
  const _$ChangeAccountEventImpl(this.account);

  @override
  final AccountEntity account;

  @override
  String toString() {
    return 'TransactionEvent.changeAccount(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAccountEventImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAccountEventImplCopyWith<_$ChangeAccountEventImpl> get copyWith =>
      __$$ChangeAccountEventImplCopyWithImpl<_$ChangeAccountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return changeAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return changeAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeAccount != null) {
      return changeAccount(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return changeAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return changeAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeAccount != null) {
      return changeAccount(this);
    }
    return orElse();
  }
}

abstract class _ChangeAccountEvent implements TransactionEvent {
  const factory _ChangeAccountEvent(final AccountEntity account) =
      _$ChangeAccountEventImpl;

  AccountEntity get account;
  @JsonKey(ignore: true)
  _$$ChangeAccountEventImplCopyWith<_$ChangeAccountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCategoryEventImplCopyWith<$Res> {
  factory _$$ChangeCategoryEventImplCopyWith(_$ChangeCategoryEventImpl value,
          $Res Function(_$ChangeCategoryEventImpl) then) =
      __$$ChangeCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryEntity category});
}

/// @nodoc
class __$$ChangeCategoryEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$ChangeCategoryEventImpl>
    implements _$$ChangeCategoryEventImplCopyWith<$Res> {
  __$$ChangeCategoryEventImplCopyWithImpl(_$ChangeCategoryEventImpl _value,
      $Res Function(_$ChangeCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$ChangeCategoryEventImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryEventImpl implements _ChangeCategoryEvent {
  const _$ChangeCategoryEventImpl(this.category);

  @override
  final CategoryEntity category;

  @override
  String toString() {
    return 'TransactionEvent.changeCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCategoryEventImplCopyWith<_$ChangeCategoryEventImpl> get copyWith =>
      __$$ChangeCategoryEventImplCopyWithImpl<_$ChangeCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return changeCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return changeCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return changeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return changeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(this);
    }
    return orElse();
  }
}

abstract class _ChangeCategoryEvent implements TransactionEvent {
  const factory _ChangeCategoryEvent(final CategoryEntity category) =
      _$ChangeCategoryEventImpl;

  CategoryEntity get category;
  @JsonKey(ignore: true)
  _$$ChangeCategoryEventImplCopyWith<_$ChangeCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchDefaultCategoryEventImplCopyWith<$Res> {
  factory _$$FetchDefaultCategoryEventImplCopyWith(
          _$FetchDefaultCategoryEventImpl value,
          $Res Function(_$FetchDefaultCategoryEventImpl) then) =
      __$$FetchDefaultCategoryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDefaultCategoryEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$FetchDefaultCategoryEventImpl>
    implements _$$FetchDefaultCategoryEventImplCopyWith<$Res> {
  __$$FetchDefaultCategoryEventImplCopyWithImpl(
      _$FetchDefaultCategoryEventImpl _value,
      $Res Function(_$FetchDefaultCategoryEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDefaultCategoryEventImpl implements _FetchDefaultCategoryEvent {
  const _$FetchDefaultCategoryEventImpl();

  @override
  String toString() {
    return 'TransactionEvent.defaultCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDefaultCategoryEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return defaultCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return defaultCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (defaultCategory != null) {
      return defaultCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return defaultCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return defaultCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (defaultCategory != null) {
      return defaultCategory(this);
    }
    return orElse();
  }
}

abstract class _FetchDefaultCategoryEvent implements TransactionEvent {
  const factory _FetchDefaultCategoryEvent() = _$FetchDefaultCategoryEventImpl;
}

/// @nodoc
abstract class _$$FindTransactionFromIdEventImplCopyWith<$Res> {
  factory _$$FindTransactionFromIdEventImplCopyWith(
          _$FindTransactionFromIdEventImpl value,
          $Res Function(_$FindTransactionFromIdEventImpl) then) =
      __$$FindTransactionFromIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? expenseId});
}

/// @nodoc
class __$$FindTransactionFromIdEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$FindTransactionFromIdEventImpl>
    implements _$$FindTransactionFromIdEventImplCopyWith<$Res> {
  __$$FindTransactionFromIdEventImplCopyWithImpl(
      _$FindTransactionFromIdEventImpl _value,
      $Res Function(_$FindTransactionFromIdEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = freezed,
  }) {
    return _then(_$FindTransactionFromIdEventImpl(
      freezed == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FindTransactionFromIdEventImpl implements _FindTransactionFromIdEvent {
  const _$FindTransactionFromIdEventImpl(this.expenseId);

  @override
  final String? expenseId;

  @override
  String toString() {
    return 'TransactionEvent.findTransaction(expenseId: $expenseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindTransactionFromIdEventImpl &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FindTransactionFromIdEventImplCopyWith<_$FindTransactionFromIdEventImpl>
      get copyWith => __$$FindTransactionFromIdEventImplCopyWithImpl<
          _$FindTransactionFromIdEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return findTransaction(expenseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return findTransaction?.call(expenseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (findTransaction != null) {
      return findTransaction(expenseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return findTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return findTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (findTransaction != null) {
      return findTransaction(this);
    }
    return orElse();
  }
}

abstract class _FindTransactionFromIdEvent implements TransactionEvent {
  const factory _FindTransactionFromIdEvent(final String? expenseId) =
      _$FindTransactionFromIdEventImpl;

  String? get expenseId;
  @JsonKey(ignore: true)
  _$$FindTransactionFromIdEventImplCopyWith<_$FindTransactionFromIdEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDateTimeEventImplCopyWith<$Res> {
  factory _$$UpdateDateTimeEventImplCopyWith(_$UpdateDateTimeEventImpl value,
          $Res Function(_$UpdateDateTimeEventImpl) then) =
      __$$UpdateDateTimeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$UpdateDateTimeEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$UpdateDateTimeEventImpl>
    implements _$$UpdateDateTimeEventImplCopyWith<$Res> {
  __$$UpdateDateTimeEventImplCopyWithImpl(_$UpdateDateTimeEventImpl _value,
      $Res Function(_$UpdateDateTimeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$UpdateDateTimeEventImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateDateTimeEventImpl implements _UpdateDateTimeEvent {
  const _$UpdateDateTimeEventImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'TransactionEvent.updateDateTime(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDateTimeEventImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDateTimeEventImplCopyWith<_$UpdateDateTimeEventImpl> get copyWith =>
      __$$UpdateDateTimeEventImplCopyWithImpl<_$UpdateDateTimeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAdding) addOrUpdate,
    required TResult Function(String expenseId) delete,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(AccountEntity account, bool isFromAccount)
        transferAccount,
    required TResult Function() addRecurring,
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function() defaultCategory,
    required TResult Function(String? expenseId) findTransaction,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return updateDateTime(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAdding)? addOrUpdate,
    TResult? Function(String expenseId)? delete,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult? Function()? addRecurring,
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function()? defaultCategory,
    TResult? Function(String? expenseId)? findTransaction,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return updateDateTime?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAdding)? addOrUpdate,
    TResult Function(String expenseId)? delete,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(AccountEntity account, bool isFromAccount)?
        transferAccount,
    TResult Function()? addRecurring,
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function()? defaultCategory,
    TResult Function(String? expenseId)? findTransaction,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (updateDateTime != null) {
      return updateDateTime(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOrUpdateExpenseEvent value) addOrUpdate,
    required TResult Function(_ClearExpenseEvent value) delete,
    required TResult Function(_ChangeTransactionTypeEvent value)
        changeTransactionType,
    required TResult Function(_TransferAccountEvent value) transferAccount,
    required TResult Function(_AddRecurringEvent value) addRecurring,
    required TResult Function(_ChangeAccountEvent value) changeAccount,
    required TResult Function(_ChangeCategoryEvent value) changeCategory,
    required TResult Function(_FetchDefaultCategoryEvent value) defaultCategory,
    required TResult Function(_FindTransactionFromIdEvent value)
        findTransaction,
    required TResult Function(_UpdateDateTimeEvent value) updateDateTime,
  }) {
    return updateDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult? Function(_ClearExpenseEvent value)? delete,
    TResult? Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult? Function(_TransferAccountEvent value)? transferAccount,
    TResult? Function(_AddRecurringEvent value)? addRecurring,
    TResult? Function(_ChangeAccountEvent value)? changeAccount,
    TResult? Function(_ChangeCategoryEvent value)? changeCategory,
    TResult? Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult? Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult? Function(_UpdateDateTimeEvent value)? updateDateTime,
  }) {
    return updateDateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOrUpdateExpenseEvent value)? addOrUpdate,
    TResult Function(_ClearExpenseEvent value)? delete,
    TResult Function(_ChangeTransactionTypeEvent value)? changeTransactionType,
    TResult Function(_TransferAccountEvent value)? transferAccount,
    TResult Function(_AddRecurringEvent value)? addRecurring,
    TResult Function(_ChangeAccountEvent value)? changeAccount,
    TResult Function(_ChangeCategoryEvent value)? changeCategory,
    TResult Function(_FetchDefaultCategoryEvent value)? defaultCategory,
    TResult Function(_FindTransactionFromIdEvent value)? findTransaction,
    TResult Function(_UpdateDateTimeEvent value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (updateDateTime != null) {
      return updateDateTime(this);
    }
    return orElse();
  }
}

abstract class _UpdateDateTimeEvent implements TransactionEvent {
  const factory _UpdateDateTimeEvent(final DateTime dateTime) =
      _$UpdateDateTimeEventImpl;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$UpdateDateTimeEventImplCopyWith<_$UpdateDateTimeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeAccountStateImplCopyWith<$Res> {
  factory _$$ChangeAccountStateImplCopyWith(_$ChangeAccountStateImpl value,
          $Res Function(_$ChangeAccountStateImpl) then) =
      __$$ChangeAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEntity account});
}

/// @nodoc
class __$$ChangeAccountStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$ChangeAccountStateImpl>
    implements _$$ChangeAccountStateImplCopyWith<$Res> {
  __$$ChangeAccountStateImplCopyWithImpl(_$ChangeAccountStateImpl _value,
      $Res Function(_$ChangeAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$ChangeAccountStateImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
    ));
  }
}

/// @nodoc

class _$ChangeAccountStateImpl implements ChangeAccountState {
  const _$ChangeAccountStateImpl(this.account);

  @override
  final AccountEntity account;

  @override
  String toString() {
    return 'TransactionState.changeAccount(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAccountStateImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAccountStateImplCopyWith<_$ChangeAccountStateImpl> get copyWith =>
      __$$ChangeAccountStateImplCopyWithImpl<_$ChangeAccountStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return changeAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return changeAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeAccount != null) {
      return changeAccount(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return changeAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return changeAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeAccount != null) {
      return changeAccount(this);
    }
    return orElse();
  }
}

abstract class ChangeAccountState implements TransactionState {
  const factory ChangeAccountState(final AccountEntity account) =
      _$ChangeAccountStateImpl;

  AccountEntity get account;
  @JsonKey(ignore: true)
  _$$ChangeAccountStateImplCopyWith<_$ChangeAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTransactionTypeStateImplCopyWith<$Res> {
  factory _$$ChangeTransactionTypeStateImplCopyWith(
          _$ChangeTransactionTypeStateImpl value,
          $Res Function(_$ChangeTransactionTypeStateImpl) then) =
      __$$ChangeTransactionTypeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionType transactionType});
}

/// @nodoc
class __$$ChangeTransactionTypeStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res,
        _$ChangeTransactionTypeStateImpl>
    implements _$$ChangeTransactionTypeStateImplCopyWith<$Res> {
  __$$ChangeTransactionTypeStateImplCopyWithImpl(
      _$ChangeTransactionTypeStateImpl _value,
      $Res Function(_$ChangeTransactionTypeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
  }) {
    return _then(_$ChangeTransactionTypeStateImpl(
      null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc

class _$ChangeTransactionTypeStateImpl implements ChangeTransactionTypeState {
  const _$ChangeTransactionTypeStateImpl(this.transactionType);

  @override
  final TransactionType transactionType;

  @override
  String toString() {
    return 'TransactionState.changeTransactionType(transactionType: $transactionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTransactionTypeStateImpl &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTransactionTypeStateImplCopyWith<_$ChangeTransactionTypeStateImpl>
      get copyWith => __$$ChangeTransactionTypeStateImplCopyWithImpl<
          _$ChangeTransactionTypeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return changeTransactionType(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return changeTransactionType?.call(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeTransactionType != null) {
      return changeTransactionType(transactionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return changeTransactionType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return changeTransactionType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeTransactionType != null) {
      return changeTransactionType(this);
    }
    return orElse();
  }
}

abstract class ChangeTransactionTypeState implements TransactionState {
  const factory ChangeTransactionTypeState(
      final TransactionType transactionType) = _$ChangeTransactionTypeStateImpl;

  TransactionType get transactionType;
  @JsonKey(ignore: true)
  _$$ChangeTransactionTypeStateImplCopyWith<_$ChangeTransactionTypeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCategoryStateImplCopyWith<$Res> {
  factory _$$ChangeCategoryStateImplCopyWith(_$ChangeCategoryStateImpl value,
          $Res Function(_$ChangeCategoryStateImpl) then) =
      __$$ChangeCategoryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryEntity category});
}

/// @nodoc
class __$$ChangeCategoryStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$ChangeCategoryStateImpl>
    implements _$$ChangeCategoryStateImplCopyWith<$Res> {
  __$$ChangeCategoryStateImplCopyWithImpl(_$ChangeCategoryStateImpl _value,
      $Res Function(_$ChangeCategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$ChangeCategoryStateImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryStateImpl implements ChangeCategoryState {
  const _$ChangeCategoryStateImpl(this.category);

  @override
  final CategoryEntity category;

  @override
  String toString() {
    return 'TransactionState.changeCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategoryStateImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCategoryStateImplCopyWith<_$ChangeCategoryStateImpl> get copyWith =>
      __$$ChangeCategoryStateImplCopyWithImpl<_$ChangeCategoryStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return changeCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return changeCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return changeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return changeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(this);
    }
    return orElse();
  }
}

abstract class ChangeCategoryState implements TransactionState {
  const factory ChangeCategoryState(final CategoryEntity category) =
      _$ChangeCategoryStateImpl;

  CategoryEntity get category;
  @JsonKey(ignore: true)
  _$$ChangeCategoryStateImplCopyWith<_$ChangeCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefaultCategoriesStateImplCopyWith<$Res> {
  factory _$$DefaultCategoriesStateImplCopyWith(
          _$DefaultCategoriesStateImpl value,
          $Res Function(_$DefaultCategoriesStateImpl) then) =
      __$$DefaultCategoriesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryEntity> categories});
}

/// @nodoc
class __$$DefaultCategoriesStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$DefaultCategoriesStateImpl>
    implements _$$DefaultCategoriesStateImplCopyWith<$Res> {
  __$$DefaultCategoriesStateImplCopyWithImpl(
      _$DefaultCategoriesStateImpl _value,
      $Res Function(_$DefaultCategoriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$DefaultCategoriesStateImpl(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
    ));
  }
}

/// @nodoc

class _$DefaultCategoriesStateImpl implements DefaultCategoriesState {
  const _$DefaultCategoriesStateImpl(final List<CategoryEntity> categories)
      : _categories = categories;

  final List<CategoryEntity> _categories;
  @override
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'TransactionState.defaultCategory(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultCategoriesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultCategoriesStateImplCopyWith<_$DefaultCategoriesStateImpl>
      get copyWith => __$$DefaultCategoriesStateImplCopyWithImpl<
          _$DefaultCategoriesStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return defaultCategory(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return defaultCategory?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (defaultCategory != null) {
      return defaultCategory(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return defaultCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return defaultCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (defaultCategory != null) {
      return defaultCategory(this);
    }
    return orElse();
  }
}

abstract class DefaultCategoriesState implements TransactionState {
  const factory DefaultCategoriesState(final List<CategoryEntity> categories) =
      _$DefaultCategoriesStateImpl;

  List<CategoryEntity> get categories;
  @JsonKey(ignore: true)
  _$$DefaultCategoriesStateImplCopyWith<_$DefaultCategoriesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseInitialImplCopyWith<$Res> {
  factory _$$ExpenseInitialImplCopyWith(_$ExpenseInitialImpl value,
          $Res Function(_$ExpenseInitialImpl) then) =
      __$$ExpenseInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpenseInitialImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$ExpenseInitialImpl>
    implements _$$ExpenseInitialImplCopyWith<$Res> {
  __$$ExpenseInitialImplCopyWithImpl(
      _$ExpenseInitialImpl _value, $Res Function(_$ExpenseInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpenseInitialImpl implements ExpenseInitial {
  const _$ExpenseInitialImpl();

  @override
  String toString() {
    return 'TransactionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpenseInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
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
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ExpenseInitial implements TransactionState {
  const factory ExpenseInitial() = _$ExpenseInitialImpl;
}

/// @nodoc
abstract class _$$TransactionFoundStateImplCopyWith<$Res> {
  factory _$$TransactionFoundStateImplCopyWith(
          _$TransactionFoundStateImpl value,
          $Res Function(_$TransactionFoundStateImpl) then) =
      __$$TransactionFoundStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionEntity transaction});

  $TransactionEntityCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$TransactionFoundStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionFoundStateImpl>
    implements _$$TransactionFoundStateImplCopyWith<$Res> {
  __$$TransactionFoundStateImplCopyWithImpl(_$TransactionFoundStateImpl _value,
      $Res Function(_$TransactionFoundStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$TransactionFoundStateImpl(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionEntityCopyWith<$Res> get transaction {
    return $TransactionEntityCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc

class _$TransactionFoundStateImpl implements TransactionFoundState {
  const _$TransactionFoundStateImpl(this.transaction);

  @override
  final TransactionEntity transaction;

  @override
  String toString() {
    return 'TransactionState.transaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFoundStateImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionFoundStateImplCopyWith<_$TransactionFoundStateImpl>
      get copyWith => __$$TransactionFoundStateImplCopyWithImpl<
          _$TransactionFoundStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return transaction(this.transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return transaction?.call(this.transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(this.transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return transaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return transaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(this);
    }
    return orElse();
  }
}

abstract class TransactionFoundState implements TransactionState {
  const factory TransactionFoundState(final TransactionEntity transaction) =
      _$TransactionFoundStateImpl;

  TransactionEntity get transaction;
  @JsonKey(ignore: true)
  _$$TransactionFoundStateImplCopyWith<_$TransactionFoundStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionAddedImplCopyWith<$Res> {
  factory _$$TransactionAddedImplCopyWith(_$TransactionAddedImpl value,
          $Res Function(_$TransactionAddedImpl) then) =
      __$$TransactionAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAddOrUpdate});
}

/// @nodoc
class __$$TransactionAddedImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionAddedImpl>
    implements _$$TransactionAddedImplCopyWith<$Res> {
  __$$TransactionAddedImplCopyWithImpl(_$TransactionAddedImpl _value,
      $Res Function(_$TransactionAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAddOrUpdate = null,
  }) {
    return _then(_$TransactionAddedImpl(
      isAddOrUpdate: null == isAddOrUpdate
          ? _value.isAddOrUpdate
          : isAddOrUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TransactionAddedImpl implements TransactionAdded {
  const _$TransactionAddedImpl({this.isAddOrUpdate = false});

  @override
  @JsonKey()
  final bool isAddOrUpdate;

  @override
  String toString() {
    return 'TransactionState.transactionAdded(isAddOrUpdate: $isAddOrUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionAddedImpl &&
            (identical(other.isAddOrUpdate, isAddOrUpdate) ||
                other.isAddOrUpdate == isAddOrUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAddOrUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionAddedImplCopyWith<_$TransactionAddedImpl> get copyWith =>
      __$$TransactionAddedImplCopyWithImpl<_$TransactionAddedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return transactionAdded(isAddOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return transactionAdded?.call(isAddOrUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transactionAdded != null) {
      return transactionAdded(isAddOrUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return transactionAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return transactionAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transactionAdded != null) {
      return transactionAdded(this);
    }
    return orElse();
  }
}

abstract class TransactionAdded implements TransactionState {
  const factory TransactionAdded({final bool isAddOrUpdate}) =
      _$TransactionAddedImpl;

  bool get isAddOrUpdate;
  @JsonKey(ignore: true)
  _$$TransactionAddedImplCopyWith<_$TransactionAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionDeletedStateImplCopyWith<$Res> {
  factory _$$TransactionDeletedStateImplCopyWith(
          _$TransactionDeletedStateImpl value,
          $Res Function(_$TransactionDeletedStateImpl) then) =
      __$$TransactionDeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionDeletedStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionDeletedStateImpl>
    implements _$$TransactionDeletedStateImplCopyWith<$Res> {
  __$$TransactionDeletedStateImplCopyWithImpl(
      _$TransactionDeletedStateImpl _value,
      $Res Function(_$TransactionDeletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionDeletedStateImpl implements TransactionDeletedState {
  const _$TransactionDeletedStateImpl();

  @override
  String toString() {
    return 'TransactionState.transactionDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return transactionDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return transactionDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transactionDeleted != null) {
      return transactionDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return transactionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return transactionDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transactionDeleted != null) {
      return transactionDeleted(this);
    }
    return orElse();
  }
}

abstract class TransactionDeletedState implements TransactionState {
  const factory TransactionDeletedState() = _$TransactionDeletedStateImpl;
}

/// @nodoc
abstract class _$$TransactionErrorStateImplCopyWith<$Res> {
  factory _$$TransactionErrorStateImplCopyWith(
          _$TransactionErrorStateImpl value,
          $Res Function(_$TransactionErrorStateImpl) then) =
      __$$TransactionErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorString});
}

/// @nodoc
class __$$TransactionErrorStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionErrorStateImpl>
    implements _$$TransactionErrorStateImplCopyWith<$Res> {
  __$$TransactionErrorStateImplCopyWithImpl(_$TransactionErrorStateImpl _value,
      $Res Function(_$TransactionErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorString = null,
  }) {
    return _then(_$TransactionErrorStateImpl(
      null == errorString
          ? _value.errorString
          : errorString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionErrorStateImpl implements TransactionErrorState {
  const _$TransactionErrorStateImpl(this.errorString);

  @override
  final String errorString;

  @override
  String toString() {
    return 'TransactionState.transactionError(errorString: $errorString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionErrorStateImpl &&
            (identical(other.errorString, errorString) ||
                other.errorString == errorString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionErrorStateImplCopyWith<_$TransactionErrorStateImpl>
      get copyWith => __$$TransactionErrorStateImplCopyWithImpl<
          _$TransactionErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return transactionError(errorString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return transactionError?.call(errorString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transactionError != null) {
      return transactionError(errorString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return transactionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return transactionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transactionError != null) {
      return transactionError(this);
    }
    return orElse();
  }
}

abstract class TransactionErrorState implements TransactionState {
  const factory TransactionErrorState(final String errorString) =
      _$TransactionErrorStateImpl;

  String get errorString;
  @JsonKey(ignore: true)
  _$$TransactionErrorStateImplCopyWith<_$TransactionErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransferAccountStateImplCopyWith<$Res> {
  factory _$$TransferAccountStateImplCopyWith(_$TransferAccountStateImpl value,
          $Res Function(_$TransferAccountStateImpl) then) =
      __$$TransferAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AccountEntity? fromAccount,
      AccountEntity? toAccount,
      bool isFromAccount});
}

/// @nodoc
class __$$TransferAccountStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransferAccountStateImpl>
    implements _$$TransferAccountStateImplCopyWith<$Res> {
  __$$TransferAccountStateImplCopyWithImpl(_$TransferAccountStateImpl _value,
      $Res Function(_$TransferAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromAccount = freezed,
    Object? toAccount = freezed,
    Object? isFromAccount = null,
  }) {
    return _then(_$TransferAccountStateImpl(
      fromAccount: freezed == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as AccountEntity?,
      toAccount: freezed == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as AccountEntity?,
      isFromAccount: null == isFromAccount
          ? _value.isFromAccount
          : isFromAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TransferAccountStateImpl implements TransferAccountState {
  const _$TransferAccountStateImpl(
      {this.fromAccount, this.toAccount, this.isFromAccount = false});

  @override
  final AccountEntity? fromAccount;
  @override
  final AccountEntity? toAccount;
  @override
  @JsonKey()
  final bool isFromAccount;

  @override
  String toString() {
    return 'TransactionState.transferAccount(fromAccount: $fromAccount, toAccount: $toAccount, isFromAccount: $isFromAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferAccountStateImpl &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount) &&
            (identical(other.isFromAccount, isFromAccount) ||
                other.isFromAccount == isFromAccount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fromAccount, toAccount, isFromAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferAccountStateImplCopyWith<_$TransferAccountStateImpl>
      get copyWith =>
          __$$TransferAccountStateImplCopyWithImpl<_$TransferAccountStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return transferAccount(fromAccount, toAccount, isFromAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return transferAccount?.call(fromAccount, toAccount, isFromAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transferAccount != null) {
      return transferAccount(fromAccount, toAccount, isFromAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return transferAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return transferAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (transferAccount != null) {
      return transferAccount(this);
    }
    return orElse();
  }
}

abstract class TransferAccountState implements TransactionState {
  const factory TransferAccountState(
      {final AccountEntity? fromAccount,
      final AccountEntity? toAccount,
      final bool isFromAccount}) = _$TransferAccountStateImpl;

  AccountEntity? get fromAccount;
  AccountEntity? get toAccount;
  bool get isFromAccount;
  @JsonKey(ignore: true)
  _$$TransferAccountStateImplCopyWith<_$TransferAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDateTimeStateImplCopyWith<$Res> {
  factory _$$UpdateDateTimeStateImplCopyWith(_$UpdateDateTimeStateImpl value,
          $Res Function(_$UpdateDateTimeStateImpl) then) =
      __$$UpdateDateTimeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$UpdateDateTimeStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$UpdateDateTimeStateImpl>
    implements _$$UpdateDateTimeStateImplCopyWith<$Res> {
  __$$UpdateDateTimeStateImplCopyWithImpl(_$UpdateDateTimeStateImpl _value,
      $Res Function(_$UpdateDateTimeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$UpdateDateTimeStateImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateDateTimeStateImpl implements UpdateDateTimeState {
  const _$UpdateDateTimeStateImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'TransactionState.updateDateTime(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDateTimeStateImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDateTimeStateImplCopyWith<_$UpdateDateTimeStateImpl> get copyWith =>
      __$$UpdateDateTimeStateImplCopyWithImpl<_$UpdateDateTimeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEntity account) changeAccount,
    required TResult Function(TransactionType transactionType)
        changeTransactionType,
    required TResult Function(CategoryEntity category) changeCategory,
    required TResult Function(List<CategoryEntity> categories) defaultCategory,
    required TResult Function() initial,
    required TResult Function(TransactionEntity transaction) transaction,
    required TResult Function(bool isAddOrUpdate) transactionAdded,
    required TResult Function() transactionDeleted,
    required TResult Function(String errorString) transactionError,
    required TResult Function(AccountEntity? fromAccount,
            AccountEntity? toAccount, bool isFromAccount)
        transferAccount,
    required TResult Function(DateTime dateTime) updateDateTime,
  }) {
    return updateDateTime(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEntity account)? changeAccount,
    TResult? Function(TransactionType transactionType)? changeTransactionType,
    TResult? Function(CategoryEntity category)? changeCategory,
    TResult? Function(List<CategoryEntity> categories)? defaultCategory,
    TResult? Function()? initial,
    TResult? Function(TransactionEntity transaction)? transaction,
    TResult? Function(bool isAddOrUpdate)? transactionAdded,
    TResult? Function()? transactionDeleted,
    TResult? Function(String errorString)? transactionError,
    TResult? Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult? Function(DateTime dateTime)? updateDateTime,
  }) {
    return updateDateTime?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEntity account)? changeAccount,
    TResult Function(TransactionType transactionType)? changeTransactionType,
    TResult Function(CategoryEntity category)? changeCategory,
    TResult Function(List<CategoryEntity> categories)? defaultCategory,
    TResult Function()? initial,
    TResult Function(TransactionEntity transaction)? transaction,
    TResult Function(bool isAddOrUpdate)? transactionAdded,
    TResult Function()? transactionDeleted,
    TResult Function(String errorString)? transactionError,
    TResult Function(AccountEntity? fromAccount, AccountEntity? toAccount,
            bool isFromAccount)?
        transferAccount,
    TResult Function(DateTime dateTime)? updateDateTime,
    required TResult orElse(),
  }) {
    if (updateDateTime != null) {
      return updateDateTime(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAccountState value) changeAccount,
    required TResult Function(ChangeTransactionTypeState value)
        changeTransactionType,
    required TResult Function(ChangeCategoryState value) changeCategory,
    required TResult Function(DefaultCategoriesState value) defaultCategory,
    required TResult Function(ExpenseInitial value) initial,
    required TResult Function(TransactionFoundState value) transaction,
    required TResult Function(TransactionAdded value) transactionAdded,
    required TResult Function(TransactionDeletedState value) transactionDeleted,
    required TResult Function(TransactionErrorState value) transactionError,
    required TResult Function(TransferAccountState value) transferAccount,
    required TResult Function(UpdateDateTimeState value) updateDateTime,
  }) {
    return updateDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeAccountState value)? changeAccount,
    TResult? Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult? Function(ChangeCategoryState value)? changeCategory,
    TResult? Function(DefaultCategoriesState value)? defaultCategory,
    TResult? Function(ExpenseInitial value)? initial,
    TResult? Function(TransactionFoundState value)? transaction,
    TResult? Function(TransactionAdded value)? transactionAdded,
    TResult? Function(TransactionDeletedState value)? transactionDeleted,
    TResult? Function(TransactionErrorState value)? transactionError,
    TResult? Function(TransferAccountState value)? transferAccount,
    TResult? Function(UpdateDateTimeState value)? updateDateTime,
  }) {
    return updateDateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAccountState value)? changeAccount,
    TResult Function(ChangeTransactionTypeState value)? changeTransactionType,
    TResult Function(ChangeCategoryState value)? changeCategory,
    TResult Function(DefaultCategoriesState value)? defaultCategory,
    TResult Function(ExpenseInitial value)? initial,
    TResult Function(TransactionFoundState value)? transaction,
    TResult Function(TransactionAdded value)? transactionAdded,
    TResult Function(TransactionDeletedState value)? transactionDeleted,
    TResult Function(TransactionErrorState value)? transactionError,
    TResult Function(TransferAccountState value)? transferAccount,
    TResult Function(UpdateDateTimeState value)? updateDateTime,
    required TResult orElse(),
  }) {
    if (updateDateTime != null) {
      return updateDateTime(this);
    }
    return orElse();
  }
}

abstract class UpdateDateTimeState implements TransactionState {
  const factory UpdateDateTimeState(final DateTime dateTime) =
      _$UpdateDateTimeStateImpl;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$UpdateDateTimeStateImplCopyWith<_$UpdateDateTimeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
