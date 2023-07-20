import 'package:paisa/features/category/data/model/category_model.dart';

abstract class CategoryRepository {
  Future<void> addCategory({
    required String? name,
    required int? icon,
    required int? color,
    required String? desc,
    required double? budget,
    required bool? isBudget,
    required bool? isDefault,
  });

  Future<void> deleteCategory(int key);

  CategoryModel? fetchCategoryFromId(int categoryId);

  Future<void> updateCategory({
    required int? key,
    required String? name,
    required int? icon,
    required int? color,
    required String? desc,
    required double? budget,
    required bool isBudget,
  });

  Future<void> clearAll();

  List<CategoryModel> defaultCategories();
}
