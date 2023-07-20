part of 'category_bloc.dart';

@immutable
abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object?> get props => [];
}

class AddOrUpdateCategoryEvent extends CategoryEvent {
  const AddOrUpdateCategoryEvent(this.isAddOrUpdate);

  final bool isAddOrUpdate;

  @override
  List<Object?> get props => [isAddOrUpdate];
}

class CategoryDeleteEvent extends CategoryEvent {
  const CategoryDeleteEvent(this.categoryId);

  final String categoryId;

  @override
  List<Object?> get props => [categoryId];
}

class FetchCategoryFromIdEvent extends CategoryEvent {
  const FetchCategoryFromIdEvent(this.categoryId);

  final String? categoryId;

  @override
  List<Object?> get props => [categoryId];

  FetchCategoryFromIdEvent copyWith({
    String? categoryId,
  }) =>
      FetchCategoryFromIdEvent(categoryId ?? this.categoryId);
}

class CategoryIconSelectedEvent extends CategoryEvent {
  const CategoryIconSelectedEvent(this.categoryIcon);

  final int categoryIcon;

  @override
  List<Object?> get props => [categoryIcon];
}

class CategoryColorSelectedEvent extends CategoryEvent {
  const CategoryColorSelectedEvent(this.categoryColor);

  final int categoryColor;

  @override
  List<Object?> get props => [categoryColor];
}

class UpdateCategoryBudgetEvent extends CategoryEvent {
  const UpdateCategoryBudgetEvent(this.isBudget);

  final bool isBudget;

  @override
  List<Object?> get props => [isBudget];
}
