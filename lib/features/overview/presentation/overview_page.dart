// Dart imports:

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/core/widgets/paisa_widgets/paisa_empty_widget.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/overview/presentation/widgets/filter_tabs_widget.dart';

// Project imports:
import 'package:paisa/features/overview/presentation/widgets/overview_bar_chart.dart';
import 'package:paisa/features/overview/presentation/widgets/overview_pie_chart_widget.dart';
import 'package:paisa/features/overview/presentation/widgets/overview_transaction_widget.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/main.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SummaryController controller = getIt<SummaryController>();
    return Scaffold(
        body: FutureBuilder<List<TransactionEntity>>(
            future: controller.getRecentTransactions(20),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final transactions = snapshot.data;

                // issue here is that I was supposed to be using this code above but instead have directly used the code below

                return ScreenTypeLayout.builder(
                  tablet: (p0) {
                    return OverviewTransactionWidget(
                      builder: (Iterable<TransactionEntity> transactions) {
                        // used here instead of above.
                        if (transactions.isEmpty) {
                          return EmptyWidget(
                            icon: Icons.paid,
                            title: context.loc.emptyOverviewMessageTitle,
                            description:
                                context.loc.emptyOverviewMessageSubtitle,
                          );
                        }
                        return ListView(
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(bottom: 124),
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 8,
                                        ),
                                        child: FilterTabs(
                                          valueNotifier:
                                              controller.filterExpenseNotifier,
                                        ),
                                      ),
                                      FilterGroupCategoryTransactionWidget(
                                        transactions: transactions.toList(),
                                        valueNotifier:
                                            controller.filterExpenseNotifier,
                                        builder: (groupedTransactions) {
                                          return OverViewBarChartWidget(
                                            groupedTransactions:
                                                groupedTransactions,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CategoryTransactionFilterWidget(),
                                      FilterTransactionTypeWidget(
                                        valueNotifier: controller.typeNotifier,
                                        transactions: transactions.toList(),
                                        builder: (List<TransactionEntity>
                                            transactions) {
                                          return FilterGroupCategoryTransactionWidget(
                                            transactions: transactions,
                                            valueNotifier: controller
                                                .filterExpenseNotifier,
                                            builder: (groupedTransactions) {
                                              if (groupedTransactions
                                                  .isNotEmpty) {
                                                controller.dateNotifier.value =
                                                    groupedTransactions
                                                        .keys.first;
                                              }
                                              return Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 6,
                                                    ),
                                                    child:
                                                        FilterSecondaryTabsWidget(
                                                      dates: groupedTransactions
                                                          .keys
                                                          .toList(),
                                                      valueNotifier: controller
                                                          .dateNotifier,
                                                    ),
                                                  ),
                                                  const ListTile(
                                                      title: Text(
                                                          'Category wise')),
                                                  ValueListenableBuilder<
                                                      String>(
                                                    valueListenable:
                                                        controller.dateNotifier,
                                                    builder: (_, value, child) {
                                                      return OverviewPieChartWidget(
                                                        transactions:
                                                            groupedTransactions[
                                                                    value] ??
                                                                [],
                                                      );
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                  mobile: (context) {
                    return OverviewTransactionWidget(
                      builder: (Iterable<TransactionEntity> transactions) {
                        final transactions = snapshot.data!.take(20).toList();

                        if (transactions.isEmpty) {
                          return EmptyWidget(
                            icon: Icons.paid,
                            title: context.loc.emptyOverviewMessageTitle,
                            description:
                                context.loc.emptyOverviewMessageSubtitle,
                          );
                        }
                        return ListView(
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(bottom: 124),
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 8,
                              ),
                              child: FilterTabs(
                                valueNotifier: controller.filterExpenseNotifier,
                              ),
                            ),
                            FilterGroupCategoryTransactionWidget(
                              transactions: transactions,
                              valueNotifier: controller.filterExpenseNotifier,
                              builder: (groupedTransactions) {
                                return OverViewBarChartWidget(
                                  groupedTransactions: groupedTransactions,
                                );
                              },
                            ),
                            const ListTile(title: Text('Category wise')),
                            const CategoryTransactionFilterWidget(),
                            FilterTransactionTypeWidget(
                              valueNotifier: controller.typeNotifier,
                              transactions: transactions,
                              builder:
                                  (Iterable<TransactionEntity> transactions) {
                                return FilterGroupCategoryTransactionWidget(
                                  transactions: transactions,
                                  valueNotifier:
                                      controller.filterExpenseNotifier,
                                  builder: (groupedTransactions) {
                                    if (groupedTransactions.isNotEmpty) {
                                      controller.dateNotifier.value =
                                          groupedTransactions.keys.first;
                                    }
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0,
                                            vertical: 6,
                                          ),
                                          child: FilterSecondaryTabsWidget(
                                            dates: groupedTransactions.keys
                                                .toList(),
                                            valueNotifier:
                                                controller.dateNotifier,
                                          ),
                                        ),
                                        ValueListenableBuilder<String>(
                                          valueListenable:
                                              controller.dateNotifier,
                                          builder: (_, value, child) {
                                            return OverviewPieChartWidget(
                                              transactions:
                                                  groupedTransactions[value] ??
                                                      [],
                                            );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              }
            }));
  }
}
