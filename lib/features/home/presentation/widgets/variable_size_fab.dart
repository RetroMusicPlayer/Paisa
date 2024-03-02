// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/widgets/variable_fab_size.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/home/presentation/pages/home/home_cubit.dart';

class HomeFloatingActionButtonWidget extends StatelessWidget {
  const HomeFloatingActionButtonWidget({
    super.key,
    required this.summaryController,
  });

  final SummaryController summaryController;

  void _handleClick(BuildContext context, int page) {
    switch (page) {
      case 1:
        const AccountPageData().push(context);
        break;
      case 6:
        const RecurringPageData().push(context);
        break;
      case 0:
        const TransactionPageData().push(context);

        break;
      case 4:
        const CategoryPageData().push(context);
        break;
      case 2:
        const DebitPageData().push(context);
        break;
      case 3:
        _dateRangePicker(context);
        break;
      case 5:
        break;
    }
  }

  Future<void> _dateRangePicker(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now().subtract(const Duration(days: 3)),
      end: DateTime.now(),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime.now(),
      initialDateRange: initialDateRange,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      builder: (_, child) {
        return Theme(
          data: ThemeData.from(colorScheme: Theme.of(context).colorScheme)
              .copyWith(
            appBarTheme: Theme.of(context).appBarTheme,
          ),
          child: child!,
        );
      },
    );
    if (newDateRange == null) return;
    summaryController.dateTimeRangeNotifier.value = newDateRange;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state is CurrentIndexState && state.index != 5
            ? VariableFABSize(
                onPressed: () => _handleClick(context, state.index),
                icon: state.index != 3 ? Icons.add : Icons.date_range,
              )
            : const SizedBox.shrink();
      },
    );
  }
}
