// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:animations/animations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/features/overview/presentation/overview_page.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:paisa/features/account/presentation/pages/accounts_page.dart';
import 'package:paisa/features/category/presentation/pages/category_list_page.dart';
import 'package:paisa/features/debit/presentation/pages/debts_page.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/home/presentation/pages/budget/budget_page.dart';
import 'package:paisa/features/home/presentation/pages/home/home_cubit.dart';
import 'package:paisa/features/home/presentation/pages/summary/summary_page.dart';
import 'package:paisa/features/recurring/presentation/page/recurring_page.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> pages = {
      0: const SummaryPage(),
      1: const AccountsPage(),
      2: const DebtsPage(),
      3: const OverViewPage(),
      4: const CategoryListPage(),
      5: BudgetPage(
        summaryController: Provider.of<SummaryController>(context),
      ),
      6: const RecurringPage(),
    };

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return PageTransitionSwitcher(
          transitionBuilder: (
            child,
            primaryAnimation,
            secondaryAnimation,
          ) =>
              FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
          child: pages[state.index],
        );
      },
    );
  }
}
