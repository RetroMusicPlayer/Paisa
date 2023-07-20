import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/presentation/bloc/category_bloc.dart';
import 'package:paisa/features/category/presentation/widgets/category_item_tablet_widget.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';

class CategoryListTabletWidget extends StatelessWidget {
  const CategoryListTabletWidget({
    Key? key,
    required this.addCategoryBloc,
    this.crossAxisCount = 1,
    required this.categories,
  }) : super(key: key);

  final CategoryBloc addCategoryBloc;
  final List<CategoryEntity> categories;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(
        bottom: 124,
        left: 8,
        right: 8,
        top: 8,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 2,
        childAspectRatio: 4,
      ),
      itemCount: categories.length,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return CategoryItemTabletWidget(
          category: categories[index],
          onPressed: () => paisaAlertDialog(
            context,
            title: Text(context.loc.dialogDeleteTitle),
            child: RichText(
              text: TextSpan(
                text: context.loc.deleteCategory,
                children: [
                  TextSpan(
                      text: categories[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ],
                style: context.bodyLarge,
              ),
            ),
            confirmationButton: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),
              onPressed: () {
                addCategoryBloc.add(
                    CategoryDeleteEvent(categories[index].superId!.toString()));
                Navigator.pop(context);
              },
              child: const Text('Delete'),
            ),
          ),
        );
      },
    );
  }
}
