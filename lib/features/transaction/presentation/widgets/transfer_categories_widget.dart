// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widgets/paisa_pill_chip.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:paisa/main.dart';

class TransferCategoriesWidget extends StatelessWidget {
  const TransferCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: getIt<Box<CategoryModel>>().listenable(),
      builder: (context, value, child) {
        final List<CategoryEntity> categories =
            value.values.filterDefault.toEntities();
        return categories.isEmpty
            ? ListTile(
                onTap: () async {
                  const CategoryPageData().push(context);
                },
                title: Text(context.loc.addCategoryEmptyTitle),
                subtitle: Text(context.loc.addCategoryEmptySubTitle),
                trailing: const Icon(Icons.keyboard_arrow_right))
            : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(context.loc.selectCategory,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontWeight: FontWeight.bold))),
                SelectDefaultCategoryWidget(categories: categories)
              ]);
      },
    );
  }
}

class SelectDefaultCategoryWidget extends StatelessWidget {
  const SelectDefaultCategoryWidget({
    super.key,
    required this.categories,
  });
  final List<CategoryEntity> categories;

  @override
  Widget build(BuildContext context) {
    final TransactionBloc expenseBloc = context.read<TransactionBloc>();
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Wrap(
            spacing: 12.0,
            runSpacing: 12.0,
            children: List.generate(
              categories.length + 1,
              (index) {
                if (index == 0) {
                  return CategoryChip(
                    selected: false,
                    onSelected: (p0) {
                      const CategoryPageData().push(context);
                    },
                    icon: MdiIcons.plus.codePoint,
                    title: context.loc.addNew,
                    color: context.primary,
                  );
                } else {
                  final CategoryEntity category = categories[index - 1];
                  final bool selected =
                      category.superId == expenseBloc.selectedCategoryId;
                  return CategoryChip(
                    selected: selected,
                    onSelected: (value) => expenseBloc
                        .add(TransactionEvent.changeCategory(category)),
                    icon: category.icon ?? 0,
                    title: category.name ?? '',
                    color: Color(category.color ?? context.primary.value),
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }
}
