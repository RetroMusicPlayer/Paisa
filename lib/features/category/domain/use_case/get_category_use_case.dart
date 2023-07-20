import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/extensions/category_extension.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

@singleton
class GetCategoryUseCase
    implements UseCase<CategoryEntity?, GetCategoryParams> {
  GetCategoryUseCase({required this.categoryRepository});

  final CategoryRepository categoryRepository;

  @override
  CategoryEntity? call({GetCategoryParams? params}) {
    return categoryRepository
        .fetchCategoryFromId(params!.categoryId)
        ?.toEntity();
  }
}

class GetCategoryParams extends Equatable {
  const GetCategoryParams(this.categoryId);

  final int categoryId;

  @override
  List<Object?> get props => [categoryId];
}
