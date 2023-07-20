import 'package:injectable/injectable.dart';
import 'package:paisa/core/extensions/category_extension.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

@singleton
class GetDefaultCategoriesUseCase
    implements UseCase<List<CategoryEntity>, NoParams> {
  GetDefaultCategoriesUseCase({required this.categoryRepository});

  final CategoryRepository categoryRepository;

  @override
  List<CategoryEntity> call({NoParams? params}) {
    return categoryRepository.defaultCategories().toEntities();
  }
}
