import 'package:flutter/material.dart';

import '../../../data/debt/models/debt_model.dart';
import '../widgets/debt_item_widget.dart';

class DebtsListWidget extends StatelessWidget {
  const DebtsListWidget({
    super.key,
    required this.debts,
  });

  final List<DebtModel> debts;

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
