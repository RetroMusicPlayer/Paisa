import 'package:flutter/material.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/presentation/widgets/debt_item_widget.dart';

class DebtsListWidget extends StatelessWidget {
  const DebtsListWidget({
    super.key,
    required this.debts,
  });

  final List<DebitModel> debts;

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
