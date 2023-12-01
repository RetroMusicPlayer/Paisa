import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:paisa/config/routes_name.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.categoryGrouped,
    required this.totalExpense,
  });

  final List<MapEntry<CategoryEntity, List<TransactionEntity>>> categoryGrouped;
  final double totalExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 124),
      itemCount: categoryGrouped.length,
      itemBuilder: (context, index) {
        final MapEntry<CategoryEntity, List<TransactionEntity>> map =
            categoryGrouped[index];

        return ListTile(
          onTap: () {
            context.pushNamed(
              RoutesName.transactionsByCategory.name,
              pathParameters: {'cid': map.key.superId.toString()},
            );
          },
          title: Text(
            map.key.name ?? '',
            style: context.bodyLarge,
          ),
          subtitle: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: map.value.total / totalExpense,
              color: Color(map.key.color ?? Colors.amber.shade100.value),
            ),
          ),
          leading: Icon(
            color: Color(map.key.color ?? Colors.amber.shade100.value),
            IconData(
              map.key.icon ?? 0,
              fontFamily: fontFamilyName,
              fontPackage: fontFamilyPackageName,
            ),
          ),
        );
      },
    );
  }
}
