import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class CategoryItemDesktopWidget extends StatelessWidget {
  const CategoryItemDesktopWidget({
    Key? key,
    required this.category,
    required this.onPressed,
  }) : super(key: key);

  final CategoryModel category;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return PaisaCard(
      child: InkWell(
        onTap: () => context.pushNamed(
          RoutesName.editCategory.name,
          pathParameters: <String, String>{'cid': category.superId.toString()},
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    IconData(
                      category.icon ?? 0,
                      fontFamily: fontFamilyName,
                      fontPackage: fontFamilyPackageName,
                    ),
                    size: 42,
                    color: context.onSurface,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      Icons.delete_rounded,
                      color: context.error,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.name ?? '',
                    style: context.titleLarge?.copyWith(
                      color: context.onSurface,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    category.description == null ? '' : category.description!,
                    style: context.bodyLarge?.copyWith(
                      color: context.onSurface,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
