import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/domain/entities/account.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';

class ExpenseItemWidget extends StatelessWidget {
  const ExpenseItemWidget({
    Key? key,
    required this.expense,
    required this.account,
    required this.category,
  }) : super(key: key);

  final AccountEntity account;
  final CategoryEntity category;
  final Transaction expense;

  String getSubtitle(BuildContext context) {
    if (expense.type == TransactionType.transfer) {
      return expense.time.shortDayString;
    } else {
      return context.loc.transactionSubTittleText(
        account.bankName ?? '',
        expense.time.shortDayString,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: () {
        context.goNamed(
          editTransactionsName,
          pathParameters: <String, String>{'eid': expense.superId.toString()},
        );
      },
      child: ListTile(
        title: Text(
          expense.name,
          style: GoogleFonts.manrope(
            textStyle: context.bodyMedium,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          getSubtitle(context),
          style: GoogleFonts.manrope(
            textStyle: context.bodySmall,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: CircleAvatar(
          backgroundColor:
              Color(category.color ?? context.surface.value).withOpacity(0.2),
          child: Icon(
            IconData(
              category.icon ?? 0,
              fontFamily: fontFamilyName,
              fontPackage: fontFamilyPackageName,
            ),
            color: Color(category.color ?? context.surface.value),
          ),
        ),
        trailing: Text(
          expense.currency.toFormateCurrency(context),
          style: GoogleFonts.manrope(
            textStyle: context.bodyMedium?.copyWith(
              color: expense.type?.color(context),
            ),
          ),
        ),
      ),
    );
  }
}

class ExpenseTransferItemWidget extends StatelessWidget {
  const ExpenseTransferItemWidget({
    Key? key,
    required this.expense,
    required this.fromAccount,
    required this.toAccount,
  }) : super(key: key);

  final Transaction expense;
  final AccountEntity fromAccount, toAccount;

  String getSubtitle() {
    return expense.time.shortDayString;
  }

  String get title {
    return 'Transfer from ${fromAccount.bankName} to ${toAccount.bankName}';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () => context.goNamed(
          editTransactionsName,
          pathParameters: <String, String>{'eid': expense.superId.toString()},
        ),
        child: ListTile(
          title: Text(title),
          subtitle: Text(getSubtitle()),
          leading: CircleAvatar(
            backgroundColor: context.primary.withOpacity(0.2),
            child: Icon(
              MdiIcons.bankTransfer,
              color: context.primary,
            ),
          ),
          trailing: Text(
            '${expense.type?.sign}${expense.currency.toFormateCurrency(context)}',
            style: GoogleFonts.manrope(
              textStyle: context.bodyLarge?.copyWith(
                color: expense.type?.color(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
