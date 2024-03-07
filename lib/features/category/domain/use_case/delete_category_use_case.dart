import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

@singleton
class DeleteCategoryUseCase implements UseCase<void, DeleteCategoryParams> {
  DeleteCategoryUseCase({required this.categoryRepository});

  final CategoryRepository categoryRepository;

  @override
  Future<Either<Failure, void>> call(DeleteCategoryParams params) {
    return categoryRepository.delete(params.categoryId);
  }
}

class DeleteCategoryParams extends Equatable {
  const DeleteCategoryParams(this.categoryId);

  final int categoryId;

  @override
  List<Object?> get props => [categoryId];
}
