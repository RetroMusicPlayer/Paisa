import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/use_case/category_use_case.dart';
import 'package:paisa/features/transaction/domain/use_case/transaction_use_case.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required this.getCategoryUseCase,
    required this.addCategoryUseCase,
    required this.deleteCategoryUseCase,
    required this.deleteExpensesFromCategoryIdUseCase,
    required this.updateCategoryUseCase,
  }) : super(const CategoryState.idle()) {
    on<CategoryEvent>((event, emit) {});
    on<FetchCategoryFromIdEvent>(_fetchCategoryFromId);
    on<AddOrUpdateCategoryEvent>(_addOrUpdateCategory);
    on<CategoryDeleteEvent>(_deleteCategory);
    on<CategoryIconSelectedEvent>(_categoryIcon);
    on<UpdateCategoryBudgetEvent>(_updateCategoryBudget);
    on<CategoryColorSelectedEvent>(_updateCategoryColor);
  }

  final AddCategoryUseCase addCategoryUseCase;
  final DeleteCategoryUseCase deleteCategoryUseCase;
  final DeleteTransactionsByCategoryIdUseCase
      deleteExpensesFromCategoryIdUseCase;
  final GetCategoryUseCase getCategoryUseCase;
  final UpdateCategoryUseCase updateCategoryUseCase;

  double? categoryBudget;
  String? categoryDesc;
  String? categoryTitle;
  CategoryEntity? currentCategory;
  bool? isBudgetSet = false;
  bool? isDefault = false;
  int? selectedColor;
  int? selectedIcon;

  Future<void> _fetchCategoryFromId(
    FetchCategoryFromIdEvent event,
    Emitter<CategoryState> emit,
  ) async {
    final int? categoryId = int.tryParse(event.categoryId ?? '');
    if (categoryId == null) return;

    final categoryFold = await getCategoryUseCase(
      GetCategoryParams(categoryId),
    );
    categoryFold.fold(
      (Failure l) {
        emit(CategoryState.errorState(mapFailureToMessage(l)));
      },
      (CategoryEntity category) {
        categoryTitle = category.name;
        categoryDesc = category.description;
        categoryBudget = category.budget;
        selectedIcon = category.icon;
        currentCategory = category;
        isBudgetSet = category.isBudget;
        selectedColor = category.color ?? Colors.red.shade100.value;
        isDefault = category.isDefault;
        emit(CategoryState.success(category));
      },
    );
  }

  FutureOr<void> _addOrUpdateCategory(
    AddOrUpdateCategoryEvent event,
    Emitter<CategoryState> emit,
  ) async {
    final String? title = categoryTitle;
    final String? description = categoryDesc;
    final int? icon = selectedIcon;
    final double? budget = categoryBudget;

    final int? color = selectedColor;
    if (icon == null) {
      return emit(const CategoryState.errorState('Select category icon'));
    }
    if (title == null) {
      return emit(const CategoryState.errorState('Add category title'));
    }

    if (color == null) {
      return emit(const CategoryState.errorState('Select category color'));
    }
    if (event.isAddOrUpdate) {
      final addCategoryFold = await addCategoryUseCase(AddCategoryParams(
        icon: icon,
        description: description,
        name: title,
        budget: budget ?? 0,
        isBudget: isBudgetSet ?? false,
        color: color,
        isDefault: isDefault ?? false,
      ));
      addCategoryFold.fold((l) {
        print(l);
      }, (r) {
        emit(CategoryState.addOrUpdate(event.isAddOrUpdate));
      });
    } else {
      if (currentCategory == null) return;

      await updateCategoryUseCase(UpdateCategoryParams(
        currentCategory!.superId!,
        budget: budget,
        color: color,
        description: description,
        icon: icon,
        isBudget: isBudgetSet ?? false,
        isDefault: isDefault ?? false,
        name: title,
      ));
    }
    emit(CategoryState.addOrUpdate(event.isAddOrUpdate));
  }

  Future<void> _deleteCategory(
    CategoryDeleteEvent event,
    Emitter<CategoryState> emit,
  ) async {
    final int categoryId = int.parse(event.categoryId);
    await deleteCategoryUseCase(DeleteCategoryParams(categoryId));
    await deleteExpensesFromCategoryIdUseCase(
      DeleteTransactionsByCategoryIdParams(categoryId),
    );
    emit(const CategoryState.deleted());
  }

  FutureOr<void> _categoryIcon(
    CategoryIconSelectedEvent event,
    Emitter<CategoryState> emit,
  ) {
    selectedIcon = event.categoryIcon;
    emit(CategoryState.selectedIcon(event.categoryIcon));
  }

  FutureOr<void> _updateCategoryBudget(
    UpdateCategoryBudgetEvent event,
    Emitter<CategoryState> emit,
  ) {
    isBudgetSet = event.isBudget;
    emit(CategoryState.updateBudget(event.isBudget));
  }

  FutureOr<void> _updateCategoryColor(
    CategoryColorSelectedEvent event,
    Emitter<CategoryState> emit,
  ) {
    selectedColor = event.categoryColor;
    emit(CategoryState.selectedColor(event.categoryColor));
  }
}
