part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.idle() = CategoryInitialState;
  const factory CategoryState.errorState(String error) = CategoryErrorState;
  const factory CategoryState.deleted() = CategoryDeletedState;
  const factory CategoryState.updateBudget(bool isBudget) =
      UpdateCategoryBudgetState;
  const factory CategoryState.selectedIcon(int icon) =
      CategoryIconSelectedState;
  const factory CategoryState.selectedColor(int color) =
      CategoryColorSelectedState;
  const factory CategoryState.success(CategoryEntity category) =
      CategorySuccessState;
  const factory CategoryState.addOrUpdate(bool isCategoryAddedOrUpdate) =
      CategoryAddedState;
}
