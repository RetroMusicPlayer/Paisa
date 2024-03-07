import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/features/category/data/data_sources/category_manager.dart';
import 'package:paisa/features/category/data/model/category_model.dart';

@Singleton(as: CategoryManager)
class LocalCategoryManagerDataSourceImpl implements CategoryManager {
  LocalCategoryManagerDataSourceImpl(this.box);
  final Box<CategoryModel> box;
  @override
  Future<List<CategoryModel>> defaultCategories() async {
    return box.values
        .where((element) => element.isDefault != null)
        .where((element) => element.isDefault!)
        .toList();
  }
}
