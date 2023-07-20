import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class FilterHomeExpensesWidget extends StatelessWidget {
  const FilterHomeExpensesWidget({
    super.key,
    required this.summaryController,
  });

  final SummaryController summaryController;

  void updateFilter(FilterExpense filterExpense) {
    summaryController.sortHomeExpenseNotifier.value = filterExpense;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<FilterExpense>(
      valueListenable: summaryController.sortHomeExpenseNotifier,
      builder: (_, value, child) {
        summaryController.settingsUseCase
            .put(selectedHomeFilterExpenseKey, value);
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                title: Text(
                  context.loc.sortList,
                  style: context.titleLarge,
                ),
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 16, top: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: context.outline,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    PaisaToggleButton(
                      itemIndex: ItemIndex.first,
                      title: FilterExpense.daily.stringValue(context),
                      isSelected: FilterExpense.daily == value,
                      onPressed: () {
                        updateFilter(FilterExpense.daily);
                      },
                    ),
                    Divider(
                      indent: 0,
                      thickness: 1,
                      height: 1,
                      color: context.outline,
                    ),
                    PaisaToggleButton(
                      title: FilterExpense.weekly.stringValue(context),
                      isSelected: FilterExpense.weekly == value,
                      onPressed: () {
                        updateFilter(FilterExpense.weekly);
                      },
                    ),
                    Divider(
                      indent: 0,
                      thickness: 1,
                      height: 1,
                      color: context.outline,
                    ),
                    PaisaToggleButton(
                      title: FilterExpense.monthly.stringValue(context),
                      isSelected: FilterExpense.monthly == value,
                      onPressed: () => updateFilter(FilterExpense.monthly),
                    ),
                    Divider(
                      indent: 0,
                      thickness: 1,
                      height: 1,
                      color: context.outline,
                    ),
                    PaisaToggleButton(
                      title: FilterExpense.yearly.stringValue(context),
                      isSelected: FilterExpense.yearly == value,
                      onPressed: () => updateFilter(FilterExpense.yearly),
                    ),
                    Divider(
                      indent: 0,
                      thickness: 1,
                      height: 1,
                      color: context.outline,
                    ),
                    PaisaToggleButton(
                      itemIndex: ItemIndex.last,
                      title: FilterExpense.all.stringValue(context),
                      isSelected: FilterExpense.all == value,
                      onPressed: () => updateFilter(FilterExpense.all),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
