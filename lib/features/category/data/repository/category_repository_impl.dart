import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/data/data_manager.dart';
import 'package:paisa/core/error/exceptions.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/category/data/data_sources/category_manager.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

import 'package:paisa/features/category/data/model/category_model.dart';

@Singleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl(
    this.categoryManager,
    this.dataManager,
  );

  final DataManager<CategoryModel> dataManager;
  final CategoryManager categoryManager;

  @override
  Future<Either<Failure, int>> add({
    required String? name,
    required int? icon,
    required int? color,
    required String? desc,
    required bool? isBudget,
    required double? budget,
    required bool? isDefault,
  }) async {
    try {
      final int id = await dataManager.add(CategoryModel(
        description: desc ?? '',
        name: name,
        icon: icon,
        budget: budget,
        isBudget: isBudget,
        color: color,
        isDefault: isDefault ?? false,
      ));
      return right(id);
    } on ItemNotAbleToAddException {
      return left(const Failure.itemNotAbleToAdd());
    }
  }

  @override
  Future<Either<Failure, void>> update({
    required int? key,
    required String? name,
    required int? icon,
    required int? color,
    required String? desc,
    required double? budget,
    required bool isBudget,
    required bool isDefault,
  }) async {
    try {
      return right(await dataManager.update(
        CategoryModel(
          description: desc,
          name: name,
          icon: icon,
          budget: budget,
          isBudget: isBudget,
          isDefault: isDefault,
          color: color,
          superId: key,
        ),
      ));
    } on UnableToUpdateException {
      return left(const Failure.unAbleToUpdate());
    }
  }

  @override
  Future<Either<Failure, void>> clear() async {
    try {
      return right(await dataManager.clear());
    } on CannotClearException {
      return left(const Failure.cannotClear());
    }
  }

  @override
  Future<Either<Failure, void>> delete(int key) async {
    try {
      return right(await dataManager.deleteById(key));
    } on NotAbleToDeleteException {
      return left(const Failure.notAbleToDelete());
    }
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> defaultCategories() async {
    try {
      final List<CategoryModel> result =
          await categoryManager.defaultCategories();
      if (result.isEmpty) {
        return left(const Failure.itemNotFound());
      } else {
        return right(result.toEntities());
      }
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> all() async {
    try {
      final List<CategoryModel> result = await dataManager.all();
      if (result.isEmpty) {
        return left(const Failure.itemNotFound());
      } else {
        return right(result.toEntities());
      }
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }

  @override
  Future<Either<Failure, CategoryEntity>> findById(int? id) async {
    try {
      final CategoryModel? result = await dataManager.findById(id);
      if (result == null) {
        return left(const Failure.itemNotFound());
      } else {
        return right(result.toEntity());
      }
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }
}
