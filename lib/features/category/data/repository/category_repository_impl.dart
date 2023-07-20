import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/features/category/data/data_sources/local/category_data_source.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/transaction/data/data_sources/local_transaction_data_manager.dart';

@Singleton(as: CategoryRepository)
class CategoryRepositoryImpl extends CategoryRepository {
  CategoryRepositoryImpl({
    required this.dataSources,
    required this.expenseDataManager,
    @Named('settings') required this.settings,
  });

  final LocalCategoryDataManager dataSources;
  final ExpenseLocalDataManager expenseDataManager;
  final Box<dynamic> settings;

  @override
  Future<void> addCategory({
    required String? name,
    required int? icon,
    required int? color,
    required String? desc,
    required bool? isBudget,
    required double? budget,
    required bool? isDefault,
  }) {
    return dataSources.add(CategoryModel(
      description: desc ?? '',
      name: name,
      icon: icon,
      budget: budget,
      isBudget: isBudget,
      color: color,
      isDefault: isDefault,
    ));
  }

  @override
  Future<void> clearAll() => dataSources.clear();

  @override
  Future<void> deleteCategory(int key) => dataSources.delete(key);

  @override
  CategoryModel? fetchCategoryFromId(int categoryId) =>
      dataSources.findById(categoryId);

  @override
  List<CategoryModel> defaultCategories() {
    return dataSources.defaultCategories();
  }

  @override
  Future<void> updateCategory({
    required int? key,
    required String? name,
    required int? icon,
    required int? color,
    required String? desc,
    required double? budget,
    required bool isBudget,
  }) {
    return dataSources.update(CategoryModel(
      description: desc,
      name: name,
      icon: icon,
      budget: budget,
      isBudget: isBudget,
      color: color,
      superId: key,
    ));
  }
}
