import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/overview/presentation/widgets/category_list_widget.dart';
import 'package:paisa/features/overview/presentation/widgets/overview_category_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:collection/collection.dart';

class OverviewPieChartWidget extends StatelessWidget {
  const OverviewPieChartWidget({
    super.key,
    required this.transactions,
  });

  final Iterable<TransactionEntity> transactions;

  @override
  Widget build(BuildContext context) {
    return OverviewCategoryWidget(
      builder: (categoryModels) {
        final Map<CategoryEntity?, List<TransactionEntity>>
            categoryGroupedExpenses =
            transactions.toCategoryGrouped(categoryModels);
        final List<MapEntry<CategoryEntity, List<TransactionEntity>>>
            mapExpenses = categoryGroupedExpenses.toNonNull();
        final double total = transactions.total;

        return Column(
          children: [
            PieChartWidget(
              map: mapExpenses,
              total: total,
            ),
            CategoryListWidget(
              categoryGrouped: mapExpenses,
              totalExpense: total,
            ),
          ],
        );
      },
    );
  }
}

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({
    super.key,
    required this.total,
    required this.map,
  });

  final Iterable<MapEntry<CategoryEntity, List<TransactionEntity>>> map;
  final double total;

  @override
  Widget build(BuildContext context) {
    final List<PieChartSectionData> sections = map.map((e) {
      final Color color = Color(e.key.color ?? Colors.amber.value);

      return PieChartSectionData(
        color: color.withOpacity(0.3),
        value: e.value.total / total,
        title: '${((e.value.total / total) * 100).toStringAsFixed(0)}%',
        titleStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: color,
        ),
      );
    }).toList();

    return SizedBox(
      height: 200,
      child: PieChart(
        PieChartData(
          startDegreeOffset: 180,
          pieTouchData: PieTouchData(),
          borderData: FlBorderData(
            show: true,
          ),
          sectionsSpace: 2,
          centerSpaceRadius: 40,
          sections: sections,
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });

  final Color color;
  final bool isSquare;
  final double size;
  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ],
    );
  }
}

extension TransactionsHelper on Iterable<TransactionEntity> {
  Map<CategoryEntity?, List<TransactionEntity>> toCategoryGrouped(
    Iterable<CategoryEntity> categoryModels,
  ) {
    return groupBy(this, (entity) {
      final CategoryEntity? categoryEntity = categoryModels
          .firstWhereOrNull((element) => element.superId == entity.categoryId);

      return categoryEntity;
    });
  }
}

extension MapTransactionsHelper
    on Map<CategoryEntity?, List<TransactionEntity>> {
  List<MapEntry<CategoryEntity, List<TransactionEntity>>> toNonNull() {
    final List<MapEntry<CategoryEntity, List<TransactionEntity>>> mapExpenses =
        [];
    for (var element in entries) {
      if (element.key != null) {
        mapExpenses.add(MapEntry(element.key!, element.value));
      }
    }

    return mapExpenses.sorted((a, b) {
      return b.value.total.compareTo(a.value.total);
    });
  }
}
