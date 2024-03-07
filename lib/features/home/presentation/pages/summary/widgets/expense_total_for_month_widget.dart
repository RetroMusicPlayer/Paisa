import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/theme/custom_color.dart';

class ExpenseTotalForMonthWidget extends StatelessWidget {
  const ExpenseTotalForMonthWidget({
    Key? key,
    required this.income,
    required this.expense,
  }) : super(key: key);

  final double income;
  final double expense;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.loc.total,
          style: context.titleMedium?.copyWith(
            color: context.onPrimaryContainer.withOpacity(0.85),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '▼',
                      style: context.labelLarge?.copyWith(
                        color:
                            Theme.of(context).extension<CustomColors>()!.green,
                      ),
                      children: [
                        TextSpan(
                          text: context.loc.income,
                          style: context.labelLarge?.copyWith(
                            color: context.onPrimaryContainer.withOpacity(0.75),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    '+${income.toFormateCurrency(context)}',
                    style: context.titleLarge?.copyWith(
                      color: context.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '▲',
                      style: context.labelLarge?.copyWith(
                        color: Theme.of(context).extension<CustomColors>()!.red,
                      ),
                      children: [
                        TextSpan(
                          text: context.loc.expense,
                          style: context.labelLarge?.copyWith(
                            color: context.onPrimaryContainer.withOpacity(0.75),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    '-${expense.toFormateCurrency(context)}',
                    style: context.titleLarge?.copyWith(
                      color: context.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
