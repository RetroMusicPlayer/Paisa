import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/recurring/data/model/recurring.dart';
import 'package:paisa/main.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class RecurringPage extends StatelessWidget {
  const RecurringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        body: ValueListenableBuilder<Box<RecurringModel>>(
          valueListenable: getIt.get<Box<RecurringModel>>().listenable(),
          builder: (_, value, child) {
            final List<RecurringModel> recurringModels = value.values.toList();
            if (recurringModels.isEmpty) {
              return EmptyWidget(
                title: context.loc.recurringEmptyMessageTitle,
                description: context.loc.recurringEmptyMessageSubTitle,
                icon: MdiIcons.cashSync,
                actionTitle: context.loc.recurringAction,
                onActionPressed: () {
                  context.pushNamed(RoutesName.addRecurring.name);
                },
              );
            }
            return RecurringListWidget(recurringModels: recurringModels);
          },
        ),
      ),
    );
  }
}

class RecurringListWidget extends StatelessWidget {
  const RecurringListWidget({super.key, required this.recurringModels});

  final List<RecurringModel> recurringModels;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: recurringModels.length,
      itemBuilder: (context, index) {
        final RecurringModel expense = recurringModels[index];
        return ListTile(
          title: Text(expense.name),
          subtitle: Text(
              '${expense.recurringType.name(context)} - ${expense.recurringDate.shortDayString}'),
          trailing: IconButton(
            onPressed: () async {
              await expense.delete();
            },
            icon: const Icon(Icons.delete),
          ),
        );
      },
    );
  }
}
