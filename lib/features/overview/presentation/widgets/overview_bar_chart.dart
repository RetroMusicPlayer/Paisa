import 'dart:math';

import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/theme/custom_color.dart';
import 'package:paisa/core/widgets/paisa_widgets/paisa_card.dart';
import 'package:paisa/features/intro/domain/entities/country_entity.dart';
import 'package:paisa/features/overview/presentation/widgets/filter_tabs_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:provider/provider.dart';

class OverViewBarChartWidget extends StatelessWidget {
  const OverViewBarChartWidget({
    super.key,
    required this.transactions,
  });

  final Iterable<TransactionEntity> transactions;

  @override
  Widget build(BuildContext context) {
    return PaisaFilledCard(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FilterTabsWidget(
          transactions: transactions,
          builder: (groupedTransactions) {
            final list = groupedTransactions.entries.map((e) {
              final double total = e.value.fold<double>(
                0,
                (previousValue, element) => previousValue + element.currency,
              );

              return total;
            }).toList();
            double maximum = list.reduce((a, b) => max(a, b));

            final List<OverviewBarChartData> maps =
                groupedTransactions.entries.map((e) {
              return OverviewBarChartData(
                xLabel: e.key,
                expense: e.value.totalExpense,
                income: e.value.totalIncome,
              );
            }).toList();

            return BarChartSample(
              values: maps,
              minMax: (maximum / 2, maximum),
            );
          },
        ),
      ),
    );
  }
}

class BarChartSample extends StatefulWidget {
  const BarChartSample({
    super.key,
    required this.values,
    required this.minMax,
  });

  final List<OverviewBarChartData> values;

  @override
  State<StatefulWidget> createState() => BarChartSampleState();

  final (double, double) minMax;
}

class BarChartSampleState extends State<BarChartSample> {
  final double width = 12;

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    if (value % 1 != 0) {
      return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 6,
      fitInside: SideTitleFitInsideData.fromTitleMeta(meta),
      child: Text(
        value.toCompact(context),
        style: context.bodySmall,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final Widget text = Text(
      widget.values.elementAtOrNull(value.toInt())!.xLabel,
      textAlign: TextAlign.center,
      style: context.bodySmall?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      fitInside: SideTitleFitInsideData.fromTitleMeta(meta),
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: Theme.of(context).extension<CustomColors>()!.red,
          width: width,
        ),
        BarChartRodData(
          toY: y2,
          color: Theme.of(context).extension<CustomColors>()!.green,
          width: width,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<BarChartGroupData> showingBarGroups =
        widget.values.mapIndexed((index, element) {
      return makeGroupData(index, element.expense, element.income);
    }).toList();

    return AspectRatio(
      aspectRatio: (16 / 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: widget.values.length * 128,
                child: BarChart(
                  BarChartData(
                    barTouchData: BarTouchData(
                      enabled: true,
                      touchTooltipData: BarTouchTooltipData(
                        tooltipBgColor: context.primary,
                        getTooltipItem: (group, groupIndex, rod, rodIndex) {
                          return BarTooltipItem(
                            rod.toY.toCompactWithout(),
                            context.bodySmall!.copyWith(
                              color: context.onPrimary,
                            ),
                          );
                        },
                      ),
                    ),
                    titlesData: FlTitlesData(
                      rightTitles: const AxisTitles(),
                      topTitles: const AxisTitles(),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 46,
                          getTitlesWidget: leftTitleWidgets,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: bottomTitles,
                          reservedSize: 42,
                        ),
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: showingBarGroups,
                    gridData: const FlGridData(show: false),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension DoubleHelper on double {
  String toCompact(BuildContext context) {
    final CountryEntity country = Provider.of<CountryEntity>(context);

    return NumberFormat.compactCurrency(
      symbol: country.symbol,
    ).format(this);
  }

  String toCompactWithout() {
    return NumberFormat.compact().format(this);
  }
}
