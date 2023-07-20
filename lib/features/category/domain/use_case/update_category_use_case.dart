import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/category/domain/repository/category_repository.dart';

@singleton
class UpdateCategoryUseCase
    implements UseCase<Future<void>, UpdateCategoryParams> {
  UpdateCategoryUseCase({required this.categoryRepository});

  final CategoryRepository categoryRepository;

  @override
  Future<void> call({UpdateCategoryParams? params}) {
    return categoryRepository.updateCategory(
      key: params!.key,
      color: params.color!,
      icon: params.icon,
      name: params.name,
      budget: params.budget,
      desc: params.description,
      isBudget: params.isBudget,
    );
  }
}

class UpdateCategoryParams extends Equatable {
  const UpdateCategoryParams(
    this.key, {
    this.budget,
    this.color,
    this.description,
    this.icon,
    this.isBudget = false,
    this.isDefault = false,
    this.name,
  });

  final double? budget;
  final int? color;
  final String? description;
  final int? icon;
  final bool isBudget;
  final bool isDefault;
  final int key;
  final String? name;

  @override
  List<Object?> get props => [
        key,
        budget,
        color,
        description,
        icon,
        isBudget,
        isDefault,
        name,
      ];
}
