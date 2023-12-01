import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:paisa/features/home/presentation/cubit/summary/summary_cubit.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_desktop_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_mobile_widget.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/summary_tablet_widget.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SummaryCubit>(context).fetchAccounts();
    return BlocBuilder<SummaryCubit, SummaryState>(
      builder: (context, state) {
        if (state is TransactionsSuccessState) {
          return Provider<AccountEntity>.value(
            value: state.accountEntity,
            child: ScreenTypeLayout.builder(
              mobile: (p0) => SummaryMobileWidget(
                expenses: state.transactions,
              ),
              tablet: (p0) => SummaryTabletWidget(
                expenses: state.transactions,
              ),
              desktop: (p0) => SummaryDesktopWidget(
                expenses: state.transactions,
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
