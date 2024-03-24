// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

part 'get_category_use_case.freezed.dart';

@lazySingleton
class GetCategoryUseCase
    implements UseCase<CategoryEntity?, GetCategoryParams> {
  GetCategoryUseCase({required this.categoryRepository});

  final CategoryRepository categoryRepository;

  @override
  Future<CategoryEntity?> call(GetCategoryParams params) async {
    return categoryRepository.fetchById(params.categoryId);
  }
}

@freezed
class GetCategoryParams with _$GetCategoryParams {
  const factory GetCategoryParams(int categoryId) = _GetCategoryParams;
}
