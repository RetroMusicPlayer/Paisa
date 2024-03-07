import 'package:paisa/features/category/data/model/category_model.dart';

abstract class CategoryManager {
  Future<List<CategoryModel>> defaultCategories();
}
