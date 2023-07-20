import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:paisa/core/common.dart';

class TotalBalanceWidget extends StatelessWidget {
  const TotalBalanceWidget({
    Key? key,
    required this.title,
    required this.amount,
  }) : super(key: key);

  final double amount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.titleMedium?.copyWith(
            color: Theme.of(context)
                .colorScheme
                .onPrimaryContainer
                .withOpacity(0.85),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          amount.toFormateCurrency(context),
          style: GoogleFonts.manrope(
            textStyle: context.headlineMedium?.copyWith(
              color: context.onPrimaryContainer,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
