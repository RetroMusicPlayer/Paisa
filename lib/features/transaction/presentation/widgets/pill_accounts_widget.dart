import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/main.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class PillsAccountWidget extends StatefulWidget {
  const PillsAccountWidget({
    super.key,
    required this.accountSelected,
  });

  final Function(AccountEntity) accountSelected;

  @override
  State<PillsAccountWidget> createState() => _PillsAccountWidgetState();
}

class _PillsAccountWidgetState extends State<PillsAccountWidget> {
  late int selectedAccount = -1;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<AccountModel>>(
      valueListenable: getIt.get<Box<AccountModel>>().listenable(),
      builder: (context, value, child) {
        final accounts = value.values.toEntities();

        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 16 / 5,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: accounts.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final AccountEntity account = accounts[index];
            return PaisaFilterChip(
              color: Color(account.color ?? Colors.brown.shade200.value),
              onPressed: () {
                setState(() {
                  if (selectedAccount == account.superId) {
                    selectedAccount = -1;
                  } else {
                    selectedAccount = account.superId ?? -1;
                  }
                  widget.accountSelected(account);
                });
              },
              isSelected: account.superId == selectedAccount,
              icon: account.cardType!.icon,
              title: account.bankName ?? '',
            );
          },
        );
      },
    );
  }
}

class PaisaFilterChip extends StatelessWidget {
  const PaisaFilterChip({
    super.key,
    required this.title,
    required this.onPressed,
    required this.isSelected,
    required this.icon,
    required this.color,
  });

  final IconData icon;
  final bool isSelected;
  final VoidCallback onPressed;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return PaisaFilledCard(
      color: color.withOpacity(0.09),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: isSelected
              ? BoxDecoration(
                  border: Border.all(
                    color: color,
                  ),
                  borderRadius: BorderRadius.circular(50),
                )
              : BoxDecoration(
                  border: Border.all(
                    color: color.withOpacity(0.09),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(icon, color: color),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.titleSmall?.copyWith(color: color),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
