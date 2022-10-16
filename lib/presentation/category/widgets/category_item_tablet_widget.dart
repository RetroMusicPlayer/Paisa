import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/routes.dart';
import '../../../common/widgets/paisa_card.dart';
import '../../../data/category/model/category.dart';

class CategoryItemTabletWidget extends StatelessWidget {
  const CategoryItemTabletWidget({
    Key? key,
    required this.category,
    required this.onPressed,
  }) : super(key: key);

  final Category category;
  final Function(Category category) onPressed;

  @override
  Widget build(BuildContext context) {
    return PaisaCard(
      child: InkWell(
        onTap: () => context.goNamed(
          editCategoryPath,
          params: <String, String>{'cid': category.superId.toString()},
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(
                    IconData(
                      category.icon,
                      fontFamily: 'Material Design Icons',
                      fontPackage: 'material_design_icons_flutter',
                    ),
                    size: 32,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      onPressed(category);
                    },
                    icon: Icon(
                      Icons.delete_rounded,
                      color: Theme.of(context).colorScheme.error,
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
                    category.name,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    category.description,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
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
