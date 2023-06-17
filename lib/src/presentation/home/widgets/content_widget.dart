import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common.dart';
import '../../accounts/pages/accounts_page.dart';
import '../../budget/pages/budget_page.dart';
import '../../category/pages/category_list_page.dart';
import '../../debts/pages/debts_page.dart';
import '../../overview/pages/overview_page.dart';
import '../../summary/pages/summary_page.dart';
import '../bloc/home_bloc.dart';

class ContentWidget extends StatelessWidget {
  ContentWidget({
    Key? key,
  }) : super(key: key);

  late final Map<PageType, Widget> pages = {
    PageType.home: const SummaryPage(),
    PageType.accounts: const AccountsPage(),
    PageType.category: const CategoryListPage(),
    PageType.overview: const OverViewPage(),
    PageType.debts: const DebtsPage(),
    PageType.budget: BudgetPage(),
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<HomeBloc>(context),
      builder: (context, state) {
        if (state is CurrentIndexState) {
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
            duration: const Duration(milliseconds: 300),
            child: pages[state.currentPage],
          );
        } else {
          return SizedBox.fromSize();
        }
      },
    );
  }
}
