import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/main.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:provider/provider.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({
    super.key,
    required this.summaryController,
  });

  final SummaryController summaryController;

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: ValueListenableBuilder<Box<CategoryModel>>(
        valueListenable: getIt.get<Box<CategoryModel>>().listenable(),
        builder: (_, value, child) {
          final categories = value.values.toBudgetEntities();
          if (categories.isEmpty) {
            return EmptyWidget(
              icon: MdiIcons.timetable,
              title: context.loc.emptyBudgetMessageTitle,
              description: context.loc.emptyBudgetMessageSubTitle,
            );
          }
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final CategoryEntity category = categories[index];
              final List<TransactionEntity> expenses =
                  Provider.of<List<TransactionEntity>>(context)
                      .where(
                          (element) => element.categoryId == category.superId!)
                      .thisMonthExpensesList;
              return BudgetItem(category: category, expenses: expenses);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          );
        },
      ),
    );
  }
}

class BudgetItem extends StatelessWidget {
  const BudgetItem({
    super.key,
    required this.category,
    required this.expenses,
  });

  final CategoryEntity category;
  final List<TransactionEntity> expenses;

  @override
  Widget build(BuildContext context) {
    final double totalExpenses = expenses.totalExpense;
    final double totalBudget =
        (category.finalBudget == 0.0 ? 1 : category.finalBudget);
    double difference = category.finalBudget - totalExpenses;

    return ListTile(
      isThreeLine: true,
      leading: CircleAvatar(
        backgroundColor: category.backgroundColor,
        child: Icon(
          IconData(
            category.icon ?? 0,
            fontFamily: fontFamilyName,
            fontPackage: fontFamilyPackageName,
          ),
          color: category.foregroundColor,
        ),
      ),
      title: Text(category.name ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Limit: ',
                    style: context.bodyMedium?.copyWith(
                      color: context.bodySmall?.color,
                    ),
                    children: [
                      TextSpan(
                        text:
                            ' ${category.finalBudget.toFormateCurrency(context)}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Spent: ',
                    style: context.bodyMedium?.copyWith(
                      color: context.bodySmall?.color,
                    ),
                    children: [
                      TextSpan(
                        text: ' ${totalExpenses.toFormateCurrency(context)}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Remaining: ',
                    style: context.bodyMedium?.copyWith(
                      color: context.bodySmall?.color,
                    ),
                    children: [
                      TextSpan(
                        text:
                            ' ${(difference < 0 ? 0.0 : difference).toFormateCurrency(context)}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: totalExpenses / totalBudget,
              color: category.foregroundColor,
              backgroundColor: category.backgroundColor,
            ),
          )
        ],
      ),
    );
  }
}
