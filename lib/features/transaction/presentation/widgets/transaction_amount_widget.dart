// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:math_expressions/math_expressions.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';

class TransactionAmountWidget extends StatelessWidget {
  const TransactionAmountWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    //final Parser parser = Parser();
    //final ContextModel contextModel = ContextModel();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: PaisaTextFormField(
        /* suffixIcon: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: PaisaTextField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  hintText: 'Enter expression',
                  controller: TextEditingController(),
                  onChanged: (value) {
                    final Expression expression =
                        parser.parse(value.replaceAll('x', '*'));
                    final double amount =
                        expression.evaluate(EvaluationType.REAL, contextModel);
                    controller.text = amount.toString();
                  },
                ),
              ),
            );
          },
          child: const Icon(Icons.calculate),
        ), */
        controller: controller,
        hintText: context.loc.amount,
        maxLength: 13,
        maxLines: 1,
        counterText: '',
        keyboardType:
            const TextInputType.numberWithOptions(decimal: true, signed: true),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r"[0-9 '.,-]")),
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
          context.read<TransactionBloc>().transactionAmount = amount;
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
