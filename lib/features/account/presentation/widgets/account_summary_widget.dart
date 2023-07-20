import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/theme/custom_color.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';

class AccountSummaryWidget extends StatelessWidget {
  const AccountSummaryWidget({
    super.key,
    required this.expenses,
    this.useAccountsList = false,
  });

  final List<Transaction> expenses;
  final bool useAccountsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 0,
            ),
            visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
            title: Text(
              context.loc.thisMonth,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w600,
                textStyle: context.titleMedium,
                color: context.onBackground,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: PaisaExpenseStatsWidget(
                  title: context.loc.income,
                  total: expenses.thisMonthIncome.toFormateCurrency(context),
                  data: expenses.incomeDoubleList,
                  graphLineColor:
                      Theme.of(context).extension<CustomColors>()!.green ??
                          context.secondary,
                  iconData: MdiIcons.arrowBottomLeft,
                ),
              ),
              Expanded(
                child: PaisaExpenseStatsWidget(
                  title: context.loc.expense,
                  total: expenses.thisMonthExpense.toFormateCurrency(context),
                  data: expenses.expenseDoubleList,
                  graphLineColor:
                      Theme.of(context).extension<CustomColors>()!.red ??
                          context.secondary,
                  iconData: MdiIcons.arrowTopRight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
