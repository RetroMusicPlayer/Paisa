import 'package:flutter/material.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/presentation/widgets/category_item_mobile_widget.dart';

class CategoryListMobileWidget extends StatelessWidget {
  const CategoryListMobileWidget({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<CategoryEntity> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        indent: 72,
      ),
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 124),
      itemCount: categories.length,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return CategoryItemMobileWidget(category: categories[index]);
      },
    );
  }
}
