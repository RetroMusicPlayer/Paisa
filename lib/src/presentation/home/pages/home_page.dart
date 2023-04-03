import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../main.dart';
import '../../../app/routes.dart';
import '../../../core/common.dart';
import '../../summary/controller/settings_controller.dart';
import '../bloc/home_bloc.dart';
import 'home_desktop_widget.dart';
import 'home_mobile_page.dart';
import 'home_tablet_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final HomeBloc homeBloc = getIt.get<HomeBloc>();
  final ValueNotifier<DateTimeRange?> dateTimeRangeNotifier =
      ValueNotifier<DateTimeRange?>(null);
  final SettingsController settingsController = getIt.get();

  DateTimeRange? dateTimeRange;
  void _handleClick(PageType page) {
    switch (page) {
      case PageType.accounts:
        context.goNamed(addAccountPath);
        break;
      case PageType.home:
        context.pushNamed(addExpensePath);
        break;
      case PageType.category:
        context.goNamed(addCategoryPath);
        break;
      case PageType.debts:
        context.goNamed(addDebitName);
        break;
      case PageType.budgetOverview:
        _dateRangePicker();
        break;
    }
  }

  Widget _desktopButton() {
    return BlocBuilder(
      bloc: homeBloc,
      builder: (context, state) {
        if (state is CurrentIndexState) {
          return FloatingActionButton.large(
            onPressed: () => _handleClick(state.currentPage),
            child: const Icon(Icons.add),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _floatingActionButtonBig() {
    return BlocBuilder(
      bloc: homeBloc,
      builder: (context, state) {
        if (state is CurrentIndexState) {
          return FloatingActionButton(
            onPressed: () => _handleClick(state.currentPage),
            child: state.currentPage != PageType.budgetOverview
                ? const Icon(Icons.add)
                : const Icon(Icons.date_range),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Future<void> _dateRangePicker() async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now().subtract(const Duration(days: 3)),
      end: DateTime.now(),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateTimeRange ?? initialDateRange,
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
    if (newDateRange == null || newDateRange == dateTimeRange) return;
    dateTimeRange = newDateRange;
    dateTimeRangeNotifier.value = newDateRange;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeBloc,
      child: WillPopScope(
        onWillPop: () async {
          if (homeBloc.currentPage == PageType.home) {
            return true;
          }
          homeBloc.add(const CurrentIndexEvent(PageType.home));
          return false;
        },
        child: ScreenTypeLayout(
          breakpoints: const ScreenBreakpoints(
            tablet: 600,
            desktop: 700,
            watch: 300,
          ),
          mobile: HomeMobilePage(
            homeBloc: homeBloc,
            dateTimeRangeNotifier: dateTimeRangeNotifier,
            floatingActionButton: _floatingActionButtonBig(),
          ),
          tablet: HomeTabletPage(
            homeBloc: homeBloc,
            dateTimeRangeNotifier: dateTimeRangeNotifier,
            floatingActionButton: _desktopButton(),
          ),
          desktop: HomeDesktopWidget(
            homeBloc: homeBloc,
            dateTimeRangeNotifier: dateTimeRangeNotifier,
            floatingActionButton: _desktopButton(),
          ),
        ),
      ),
    );
  }
}
