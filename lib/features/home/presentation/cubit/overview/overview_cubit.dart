import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/use_case/category_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/use_case/transaction_use_case.dart';

@injectable
class OverviewCubit extends Cubit<BudgetState> {
  OverviewCubit(
    this._getCategoryUseCase,
    this._getCategoriesUseCase,
    this._getTransactionsByCategoryIdUseCase,
  ) : super(BudgetInitial());

  final GetDefaultCategoriesUseCase _getCategoriesUseCase;
  final GetCategoryUseCase _getCategoryUseCase;
  final GetTransactionsByCategoryIdUseCase _getTransactionsByCategoryIdUseCase;
  String? selectedTime;

  final List<CategoryEntity> _defaultCategories = [];

  void emitExpenses(List<TransactionEntity> transactions) {
    /* final Map<CategoryEntity, List<TransactionEntity>> categoryGroupedExpenses =
        groupBy(transactions, (TransactionEntity expense)   {
      final categoryFold =
         await  _getCategoryUseCase(GetCategoryParams(expense.categoryId));

          categoryFold.
    });
    final List<MapEntry<CategoryEntity, List<TransactionEntity>>> mapExpenses =
        categoryGroupedExpenses.entries.toList().sorted(
            (a, b) => b.value.totalExpense.compareTo(a.value.totalExpense));
    emit(FilteredCategoryListState(
      mapExpenses,
      transactions.total,
    )); */
  }

  void fetchDefaultCategory() {
    _getCategoriesUseCase(NoParams()).then((categoryFold) {
      categoryFold.fold((l) => null, (r) {
        _defaultCategories.addAll(r);
      });
    });
  }

  void transactionsForCategoryId(int categoryId) {
    _getTransactionsByCategoryIdUseCase(
            ParamsGetTransactionsByCategoryId(categoryId))
        .then((value) {
      value.fold((l) => null, (r) {});
    });
  }
}

abstract class BudgetState extends Equatable {
  const BudgetState();

  @override
  List<Object> get props => [];
}

class BudgetInitial extends BudgetState {}

class InitialSelectedState extends BudgetState {
  const InitialSelectedState(this.selectedTime, this.filerTimes);

  final List<String> filerTimes;
  final String selectedTime;

  @override
  List<Object> get props => [selectedTime, filerTimes];
}

class FilteredCategoryListState extends BudgetState {
  const FilteredCategoryListState(this.categoryGrouped, this.totalExpense);

  final List<MapEntry<CategoryEntity, List<TransactionEntity>>> categoryGrouped;
  final double totalExpense;
  @override
  List<Object> get props => [
        categoryGrouped,
        totalExpense,
      ];
}

class EmptyFilterListState extends BudgetState {}

class OverviewFilterArguments {
  final Map<String, List<TransactionEntity>> groupedExpense;

  OverviewFilterArguments({required this.groupedExpense});

  OverviewFilterArguments copyWith({
    Map<String, List<TransactionEntity>>? groupedExpense,
  }) {
    return OverviewFilterArguments(
      groupedExpense: groupedExpense ?? this.groupedExpense,
    );
  }
}
