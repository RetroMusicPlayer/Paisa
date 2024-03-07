import 'package:flutter/material.dart';
import 'package:paisa/features/debit/domain/entities/debit_entity.dart';
import 'package:paisa/features/debit/presentation/widgets/debt_item_widget.dart';

class DebtsListWidget extends StatelessWidget {
  const DebtsListWidget({
    super.key,
    required this.debts,
  });

  final List<DebitEntity> debts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(top: 8, bottom: 124),
      shrinkWrap: true,
      itemCount: debts.length,
      itemBuilder: (context, index) => DebtItemWidget(
        debt: debts[index],
      ),
    );
  }
}
