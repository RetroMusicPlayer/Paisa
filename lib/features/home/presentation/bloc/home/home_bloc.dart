import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/domain/entities/account.dart';
import 'package:paisa/features/account/domain/use_case/account_use_case.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/use_case/category_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/features/transaction/domain/use_case/expense_use_case.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this.expensesUseCase,
    this.defaultCategoriesUseCase,
    this.getAccountUseCase,
    this.getCategoryUseCase,
    this.getExpensesFromCategoryIdUseCase,
  ) : super(const CurrentIndexState(0)) {
    on<HomeEvent>((event, emit) {});
    on<CurrentIndexEvent>(_currentIndex);
  }

  int selectedIndex = 0;
  final GetExpensesUseCase expensesUseCase;
  final GetDefaultCategoriesUseCase defaultCategoriesUseCase;
  final GetAccountUseCase getAccountUseCase;
  final GetCategoryUseCase getCategoryUseCase;
  final GetExpensesFromCategoryIdUseCase getExpensesFromCategoryIdUseCase;

  PageType getPageFromIndex(int index) {
    switch (index) {
      case 1:
        return PageType.accounts;
      case 2:
        return PageType.debts;
      case 3:
        return PageType.overview;
      case 4:
        return PageType.category;
      case 5:
        return PageType.budget;
      case 6:
        return PageType.recurring;
      case 0:
      default:
        return PageType.home;
    }
  }

  void _currentIndex(
    CurrentIndexEvent event,
    Emitter<HomeState> emit,
  ) {
    if (selectedIndex != event.currentPage) {
      selectedIndex = event.currentPage;
      emit(CurrentIndexState(selectedIndex));
    }
  }

  CategoryEntity? fetchCategoryFromId(int categoryId) =>
      getCategoryUseCase(params: GetCategoryParams(categoryId));

  AccountEntity? fetchAccountFromId(int accountId) =>
      getAccountUseCase(params: GetAccountParams(accountId));

  List<Transaction> fetchExpensesFromCategoryId(int categoryId) =>
      getExpensesFromCategoryIdUseCase(categoryId);
}
