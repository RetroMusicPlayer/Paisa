import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

@singleton
class GetCategoryUseCase implements UseCase<CategoryEntity, GetCategoryParams> {
  GetCategoryUseCase({required this.categoryRepository});

  final CategoryRepository categoryRepository;

  @override
  Future<Either<Failure, CategoryEntity>> call(GetCategoryParams params) {
    return categoryRepository.findById(params.categoryId);
  }
}

class GetCategoryParams extends Equatable {
  const GetCategoryParams(this.categoryId);

  final int? categoryId;

  @override
  List<Object?> get props => [categoryId];
}
