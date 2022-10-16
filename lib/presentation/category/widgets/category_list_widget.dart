import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../common/widgets/empty_widget.dart';
import '../../../data/category/model/category.dart';
import '../../../di/service_locator.dart';
import '../bloc/category_bloc.dart';
import 'category_item_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    Key? key,
    required this.addCategoryBloc,
    required this.crossAxisCount,
  }) : super(key: key);

  final CategoryBloc addCategoryBloc;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<Category>>(
      valueListenable: locator.get<Box<Category>>().listenable(),
      builder: (BuildContext context, value, Widget? child) {
        final categories = value.values.toList();
        if (categories.isEmpty) {
          return EmptyWidget(
            description:
                AppLocalizations.of(context)!.errorNoCategoriesDescriptionLabel,
            icon: Icons.category,
            title: AppLocalizations.of(context)!.errorNoCatagoriesLabel,
          );
        }
        return GridView.builder(
          padding: const EdgeInsets.only(
            bottom: 124,
            left: 8,
            right: 8,
            top: 8,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
          ),
          itemCount: categories.length,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            final category = categories[index];
            return CategoryItemWidget(
              category: category,
              onPressed: (category) {
                addCategoryBloc.add(CategoryDeleteEvent(category));
              },
            );
          },
        );
      },
    );
  }
}
