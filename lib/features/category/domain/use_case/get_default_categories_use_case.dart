// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

@lazySingleton
class GetDefaultCategoriesUseCase
    implements UseCase<List<CategoryEntity>, NoParams> {
  GetDefaultCategoriesUseCase({required this.categoryRepository});

  final CategoryRepository categoryRepository;

  @override
  Future<List<CategoryEntity>> call(NoParams? params) async {
    return Future<List<CategoryEntity>>.value(
        categoryRepository.defaultCategories());
  }
}
