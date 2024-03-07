import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

class ExpenseItemWidget extends StatelessWidget {
  const ExpenseItemWidget({
    Key? key,
    required this.transaction,
    required this.account,
    required this.category,
  }) : super(key: key);

  final AccountEntity account;
  final CategoryEntity category;
  final TransactionEntity transaction;

  String getSubtitle(BuildContext context) {
    if (transaction.type == TransactionType.transfer) {
      return transaction.time!.dateString;
    } else {
      return context.loc.transactionSubTittleText(
        account.bankName ?? '',
        transaction.time!.dateString,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: () {
        context.goNamed(
          RoutesName.accountEditTransaction.name,
          pathParameters: <String, String>{
            'eid': transaction.superId.toString(),
            'aid': account.superId.toString(),
          },
        );
      },
      child: ListTile(
        title: Text(
          transaction.name ?? '',
          style: context.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          getSubtitle(context),
          style: context.bodySmall?.copyWith(
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
          transaction.currency!.toFormateCurrency(context),
          style: context.bodyMedium?.copyWith(
            color: transaction.type?.color(context),
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

  final TransactionEntity expense;
  final AccountEntity fromAccount, toAccount;

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
          RoutesName.editTransaction.name,
          pathParameters: <String, String>{'eid': expense.superId.toString()},
        ),
        child: ListTile(
          title: Text(title),
          subtitle: Text(expense.time!.dateString),
          leading: CircleAvatar(
            backgroundColor: context.primary.withOpacity(0.2),
            child: Icon(
              MdiIcons.bankTransfer,
              color: context.primary,
            ),
          ),
          trailing: Text(
            '${expense.type?.sign}${expense.currency!.toFormateCurrency(context)}',
            style: context.bodyLarge?.copyWith(
              color: expense.type?.color(context),
            ),
          ),
        ),
      ),
    );
  }
}
