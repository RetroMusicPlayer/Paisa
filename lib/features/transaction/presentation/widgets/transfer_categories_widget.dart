import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:paisa/features/transaction/presentation/widgets/select_category_widget.dart';

class TransferCategoriesWidget extends StatelessWidget {
  const TransferCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TransactionBloc>(context)
        .add(const TransactionEvent.defaultCategory());
    return BlocBuilder<TransactionBloc, TransactionState>(
      buildWhen: (previous, current) => current is DefaultCategoriesState,
      builder: (context, state) {
        if (state is DefaultCategoriesState) {
          if (state.categories.isEmpty) {
            return ListTile(
              onTap: () async {
                await context.pushNamed(RoutesName.addCategory.name);
                if (context.mounted) {
                  BlocProvider.of<TransactionBloc>(context)
                      .add(const TransactionEvent.defaultCategory());
                }
              },
              title: Text(context.loc.addCategoryEmptyTitle),
              subtitle: Text(context.loc.addCategoryEmptySubTitle),
              trailing: const Icon(Icons.keyboard_arrow_right),
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    context.loc.selectCategory,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SelectDefaultCategoryWidget(
                  categories: state.categories,
                ),
              ],
            );
          }
        } else {
          return const SizedBox.shrink();
        }
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
    final expenseBloc = BlocProvider.of<TransactionBloc>(context);
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
                    onSelected: (p0) =>
                        context.pushNamed(RoutesName.addCategory.name),
                    icon: MdiIcons.plus.codePoint,
                    title: context.loc.addNew,
                    iconColor: context.primary,
                    titleColor: context.primary,
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
                    titleColor: Color(category.color ?? context.primary.value),
                    iconColor: Color(category.color ?? context.primary.value),
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
