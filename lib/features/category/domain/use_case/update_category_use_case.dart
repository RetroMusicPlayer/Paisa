// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

part 'update_category_use_case.freezed.dart';

@lazySingleton
class UpdateCategoryUseCase implements UseCase<void, UpdateCategoryParams> {
  UpdateCategoryUseCase({required this.categoryRepository});

  final CategoryRepository categoryRepository;

  @override
  Future<void> call(UpdateCategoryParams params) {
    return categoryRepository.update(
      key: params.key,
      color: params.color,
      icon: params.icon,
      name: params.name,
      budget: params.budget,
      desc: params.description,
      isBudget: params.isBudget,
      isDefault: params.isDefault,
    );
  }
}

@freezed
class UpdateCategoryParams with _$UpdateCategoryParams {
  const factory UpdateCategoryParams({
    required int key,
    double? budget,
    required int color,
    String? description,
    required int icon,
    @Default(false) bool isBudget,
    @Default(false) bool isDefault,
    required String name,
  }) = _UpdateCategoryParams;
}
