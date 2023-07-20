import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/core/common.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';

import 'package:responsive_builder/responsive_builder.dart';

class TransactionDeleteWidget extends StatelessWidget {
  const TransactionDeleteWidget({super.key, required this.expenseId});

  final String? expenseId;

  void onPressed(BuildContext context) {
    paisaAlertDialog(
      context,
      title: Text(context.loc.dialogDeleteTitle),
      child: RichText(
        text: TextSpan(
          text: context.loc.deleteExpense,
          style: context.bodyLarge,
        ),
      ),
      confirmationButton: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        onPressed: () {
          BlocProvider.of<TransactionBloc>(context)
              .add(ClearExpenseEvent(expenseId!));
          Navigator.pop(context);
        },
        child: Text(context.loc.delete),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (expenseId == null) {
      return const SizedBox.shrink();
    } else {
      return ScreenTypeLayout(
        mobile: IconButton(
          onPressed: () => onPressed(context),
          icon: Icon(
            Icons.delete_rounded,
            color: context.error,
          ),
        ),
        tablet: PaisaTextButton(
          onPressed: () => onPressed(context),
          title: context.loc.delete,
        ),
      );
    }
  }
}
