// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/presentation/bloc/accounts_bloc.dart';
import 'package:paisa/features/account/presentation/widgets/account_history_widget.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/transactions_header_widget.dart';

class AccountTransactionWidget extends StatefulWidget {
  const AccountTransactionWidget({
    super.key,
    this.isScroll = false,
  });

  final bool isScroll;

  @override
  AccountTransactionWidgetState createState() =>
      AccountTransactionWidgetState();
}

class AccountTransactionWidgetState extends State<AccountTransactionWidget> {
  int currentPage = 0;
  final int itemsPerPage =
      50; // Change this to the number of items you want per page

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        if (state is AccountSelectedState) {
          if (state.transactions.isEmpty) {
            return EmptyWidget(
              title: context.loc.emptyExpensesMessageTitle,
              icon: Icons.money_off_rounded,
              description: context.loc.emptyExpensesMessageTitle,
            );
          }
          final int displayCount = (currentPage + 1) * itemsPerPage;
          final bool hasMore = displayCount < state.transactions.length;
          return Column(
            children: [
              TransactionsHeaderWidget(
                summaryController: Provider.of<SummaryController>(context),
              ),
              Expanded(
                child: ListView(
                  physics: widget.isScroll
                      ? null
                      : const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    AccountHistoryWidget(
                      expenses: state.transactions.take(displayCount).toList(),
                      summaryController:
                          Provider.of<SummaryController>(context),
                    ),
                    if (hasMore)
                      ElevatedButton(
                        child: const Text('Load More'),
                        onPressed: () {
                          setState(() {
                            currentPage++;
                          });
                        },
                      ),
                  ],
                ),
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
