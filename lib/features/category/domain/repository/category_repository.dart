import 'package:dartz/dartz.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/category/domain/entities/category.dart';

abstract class CategoryRepository {
  Future<Either<Failure, int>> add({
    required String? name,
    required int? icon,
    required int? color,
    required String? desc,
    required double? budget,
    required bool? isBudget,
    required bool? isDefault,
  });
  Future<Either<Failure, void>> update({
    required int? key,
    required String? name,
    required int? icon,
    required int? color,
    required String? desc,
    required double? budget,
    required bool isBudget,
    required bool isDefault,
  });

  Future<Either<Failure, void>> delete(int key);

  Future<Either<Failure, CategoryEntity>> findById(int? id);

  Future<Either<Failure, void>> clear();

  Future<Either<Failure, List<CategoryEntity>>> defaultCategories();

  Future<Either<Failure, List<CategoryEntity>>> all();
}
