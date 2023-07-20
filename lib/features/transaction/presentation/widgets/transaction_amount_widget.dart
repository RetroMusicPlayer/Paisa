import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class TransactionAmountWidget extends StatelessWidget {
  const TransactionAmountWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: PaisaTextFormField(
        controller: controller,
        hintText: context.loc.amount,
        keyboardType: TextInputType.number,
        maxLength: 13,
        maxLines: 1,
        counterText: '',
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
          TextInputFormatter.withFunction((oldValue, newValue) {
            try {
              final text = newValue.text;
              if (text.isNotEmpty) double.parse(text);
              return newValue;
            } catch (_) {}
            return oldValue;
          }),
        ],
        onChanged: (value) {
          double? amount = double.tryParse(value);
          if (BlocProvider.of<TransactionBloc>(context).transactionType !=
              TransactionType.transfer) {
            BlocProvider.of<TransactionBloc>(context).expenseAmount = amount;
          } else {
            BlocProvider.of<TransactionBloc>(context).transferAmount = amount;
          }
        },
        validator: (value) {
          if (value!.isNotEmpty) {
            return null;
          } else {
            return context.loc.validAmount;
          }
        },
      ),
    );
  }
}
