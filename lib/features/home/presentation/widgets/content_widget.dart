import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:paisa/features/account/presentation/pages/accounts_page.dart';
import 'package:paisa/features/category/presentation/pages/category_list_page.dart';
import 'package:paisa/features/debit/presentation/pages/debts_page.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/home/presentation/cubit/summary/summary_cubit.dart';
import 'package:paisa/features/home/presentation/pages/budget/budget_page.dart';
import 'package:paisa/features/home/presentation/pages/overview/overview_page.dart';
import 'package:paisa/features/home/presentation/pages/summary/summary_page.dart';
import 'package:paisa/features/recurring/presentation/page/recurring_page.dart';
import 'package:paisa/main.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> pages = {
      0: BlocProvider(
        create: (context) => getIt.get<SummaryCubit>(),
        child: const SummaryPage(),
      ),
      1: const AccountsPage(),
      2: const DebtsPage(),
      3: OverViewPage(
        summaryController: Provider.of<SummaryController>(context),
      ),
      4: const CategoryListPage(),
      5: BudgetPage(
        summaryController: Provider.of<SummaryController>(context),
      ),
      6: const RecurringPage(),
    };
    return BlocBuilder(
      bloc: BlocProvider.of<HomeBloc>(context),
      builder: (context, state) {
        if (state is CurrentIndexState) {
          return PageTransitionSwitcher(
            duration: const Duration(milliseconds: 300),
            child: pages[state.currentPage],
            transitionBuilder: (
              child,
              primaryAnimation,
              secondaryAnimation,
            ) {
              return FadeThroughTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
          );
        } else {
          return SizedBox.fromSize();
        }
      },
    );
  }
}
