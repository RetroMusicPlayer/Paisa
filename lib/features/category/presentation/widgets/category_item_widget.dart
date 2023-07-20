import 'package:flutter/material.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'category_item_mobile_widget.dart';
import 'category_item_tablet_widget.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    Key? key,
    required this.category,
    required this.onPressed,
  }) : super(key: key);

  final CategoryEntity category;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: CategoryItemTabletWidget(
        category: category,
        onPressed: onPressed,
      ),
      desktop: CategoryItemTabletWidget(
        category: category,
        onPressed: onPressed,
      ),
      mobile: CategoryItemMobileWidget(category: category),
    );
  }
}
