import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/core/extensions/debt_extensions.dart';
import 'package:paisa/features/debit/presentation/cubit/debts_bloc.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';

class DebtToggleButtonsWidget extends StatelessWidget {
  const DebtToggleButtonsWidget({
    Key? key,
    required this.debtsBloc,
  }) : super(key: key);

  final DebtsBloc debtsBloc;

  void _update(DebtType type) {
    debtsBloc.add(ChangeDebtTypeEvent(type));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: debtsBloc,
      buildWhen: (previous, current) => current is DebtsTabState,
      builder: (context, state) {
        return Row(
          children: [
            PaisaPillChip(
              title: DebtType.debt.stringValue(context),
              isSelected: debtsBloc.currentDebtType == DebtType.debt,
              onPressed: () => _update(DebtType.debt),
            ),
            PaisaPillChip(
              title: DebtType.credit.stringValue(context),
              isSelected: debtsBloc.currentDebtType == DebtType.credit,
              onPressed: () => _update(DebtType.credit),
            ),
          ],
        );
      },
    );
  }
}
