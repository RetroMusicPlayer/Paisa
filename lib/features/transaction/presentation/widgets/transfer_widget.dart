import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';

import 'pill_accounts_widget.dart';
import 'transaction_amount_widget.dart';
import 'transaction_date_picker_widget.dart';
import 'transfer_categories_widget.dart';

class TransferWidget extends StatelessWidget {
  const TransferWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 16),
        TransactionAmountWidget(controller: controller),
        const TransferCategoriesWidget(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Date & time',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: ExpenseDatePickerWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            context.loc.fromAccount,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        PillsAccountWidget(
          accountSelected: (account) {
            BlocProvider.of<TransactionBloc>(context).fromAccount = account;
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            context.loc.toAccount,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        PillsAccountWidget(
          accountSelected: (account) {
            BlocProvider.of<TransactionBloc>(context).toAccount = account;
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
