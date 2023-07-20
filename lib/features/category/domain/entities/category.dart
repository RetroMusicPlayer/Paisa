import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  const CategoryEntity({
    this.budget,
    this.color,
    this.description,
    this.icon,
    this.name,
    this.superId,
    this.isBudget = false,
    this.isDefault = false,
  });

  final double? budget;
  final int? color;
  final String? description;
  final int? icon;
  final bool? isBudget;
  final bool? isDefault;
  final String? name;
  final int? superId;

  @override
  List<Object?> get props => [
        budget,
        color,
        description,
        icon,
        name,
        superId,
        isBudget,
        isDefault,
      ];
}
