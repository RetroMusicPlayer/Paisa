part of 'category_bloc.dart';

@immutable
abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object?> get props => [];
}

class AddCategoryInitial extends CategoryState {}

class CategoriesListState extends CategoryState {
  const CategoriesListState(this.categories);

  final List<CategoryModel> categories;

  @override
  List<Object?> get props => [categories];
}

class CategoryAddedState extends CategoryState {
  const CategoryAddedState({this.isCategoryAddedOrUpdate = false});

  final bool isCategoryAddedOrUpdate;

  @override
  List<Object?> get props => [isCategoryAddedOrUpdate];
}

class CategoryDeletedState extends CategoryState {}

class CategoryErrorState extends CategoryState {
  const CategoryErrorState(this.errorString);

  final String errorString;
}

class CategorySuccessState extends CategoryState {
  const CategorySuccessState(this.category);

  final CategoryEntity category;

  @override
  List<Object?> get props => [category];
}

class CategoryIconSelectedState extends CategoryState {
  const CategoryIconSelectedState(this.categoryIcon);

  final int categoryIcon;

  @override
  List<Object?> get props => [categoryIcon];
}

class CategoryColorSelectedState extends CategoryState {
  const CategoryColorSelectedState(this.categoryColor);

  final int categoryColor;

  @override
  List<Object?> get props => [categoryColor, identityHashCode(this)];
}

class UpdateCategoryBudgetState extends CategoryState {
  const UpdateCategoryBudgetState(this.isBudget);

  final bool isBudget;

  @override
  List<Object?> get props => [isBudget];
}
