import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.categoryGrouped,
    required this.totalExpense,
  });

  final List<MapEntry<CategoryEntity, List<Transaction>>> categoryGrouped;
  final double totalExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 124),
      itemCount: categoryGrouped.length,
      itemBuilder: (context, index) {
        final MapEntry<CategoryEntity, List<Transaction>> map =
            categoryGrouped[index];
        return InkWell(
          onTap: () {
            context.pushNamed(
              expensesByCategoryName,
              pathParameters: {'cid': map.key.superId.toString()},
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        color:
                            Color(map.key.color ?? Colors.amber.shade100.value),
                        IconData(
                          map.key.icon ?? 0,
                          fontFamily: fontFamilyName,
                          fontPackage: fontFamilyPackageName,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(map.key.name ?? ''),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: LinearProgressIndicator(
                              value: map.value.total / totalExpense,
                              color: Color(
                                  map.key.color ?? Colors.amber.shade100.value),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(map.value.total.toFormateCurrency(context))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
