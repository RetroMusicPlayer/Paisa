import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/routes.dart';
import '../../../common/widgets/paisa_card.dart';
import '../../../data/category/model/category.dart';

class CategoryItemMobileWidget extends StatelessWidget {
  const CategoryItemMobileWidget({
    Key? key,
    required this.category,
    required this.onPressed,
  }) : super(key: key);

  final Category category;
  final Function(Category) onPressed;

  @override
  Widget build(BuildContext context) {
    return PaisaCard(
      child: InkWell(
        onTap: () => context.goNamed(
          editCategoryPath,
          params: <String, String>{'cid': category.superId.toString()},
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    IconData(
                      category.icon,
                      fontFamily: 'Material Design Icons',
                      fontPackage: 'material_design_icons_flutter',
                    ),
                    size: 28,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    category.name,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    category.description,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant
                              .withOpacity(0.75),
                        ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () {
                  onPressed(category);
                },
                icon: Icon(
                  Icons.delete_rounded,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
