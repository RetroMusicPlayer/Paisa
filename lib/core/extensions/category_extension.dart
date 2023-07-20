import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/category/domain/entities/category.dart';

extension CategoryModelHelper on CategoryModel {
  CategoryEntity toEntity() {
    return CategoryEntity(
      icon: icon,
      name: name,
      color: color,
      budget: budget,
      description: description,
      isBudget: isBudget,
      superId: superId,
      isDefault: isDefault,
    );
  }
}

extension CategoryModelsHelper on Iterable<CategoryModel> {
  List<Map<String, dynamic>> toJson() {
    return map((e) => e.toJson()).toList();
  }

  Iterable<CategoryModel> sort() =>
      sorted((a, b) => a.name!.compareTo(b.name!));
  Iterable<CategoryModel> get filterDefault {
    return sort()
        .where((element) => element.isDefault != null)
        .where((element) => !element.isDefault!);
  }

  List<CategoryEntity> toEntities() =>
      sort().map((categoryModel) => categoryModel.toEntity()).toList();

  List<CategoryEntity> toBudgetEntities() => sort()
      .map((categoryModel) => categoryModel.toEntity())
      .where((element) => element.isBudget != null)
      .where((element) => element.isBudget!)
      .toList();
}

extension CategoryHelper on CategoryEntity {
  Color get foregroundColor => Color(color ?? Colors.amber.shade100.value);
  Color get backgroundColor =>
      Color(color ?? Colors.amber.shade100.value).withOpacity(0.25);

  double get finalBudget => budget ?? 0.0;
}
