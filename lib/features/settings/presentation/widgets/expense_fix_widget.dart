import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';
import '../cubit/settings_cubit.dart';

class FixExpenseWidget extends StatelessWidget {
  const FixExpenseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        MdiIcons.autoFix,
        color: context.onSurfaceVariant,
      ),
      onTap: () => BlocProvider.of<SettingCubit>(context).fixExpenses(),
      title: const Text('Fix transfer expenses'),
      subtitle: const Text(
          'Add one or more transfer category & click this. Restart once completed'),
      trailing: BlocConsumer<SettingCubit, SettingsState>(
        listener: (context, state) {
          if (state is FixExpenseError) {
            context.showMaterialSnackBar('Add transfer category');
          } else if (state is FixExpenseDone) {
            context.showMaterialSnackBar('Add transfer category');
          }
        },
        builder: (context, state) {
          if (state is FixExpenseLoading) {
            return const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
