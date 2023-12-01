import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class ExpenseDatePickerWidget extends StatefulWidget {
  const ExpenseDatePickerWidget({
    super.key,
  });

  @override
  State<ExpenseDatePickerWidget> createState() =>
      _ExpenseDatePickerWidgetState();
}

class _ExpenseDatePickerWidgetState extends State<ExpenseDatePickerWidget> {
  late DateTime selectedDateTime =
      BlocProvider.of<TransactionBloc>(context).selectedDate;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                leading: Icon(
                  Icons.today_rounded,
                  color: context.secondary,
                ),
                title: Text(selectedDateTime.formattedDate),
                onTap: () async {
                  final DateTime? dateTime = await paisaDatePicker(
                    context,
                    selectedDateTime: selectedDateTime,
                  );
                  if (dateTime != null) {
                    setState(() {
                      selectedDateTime = selectedDateTime.copyWith(
                        day: dateTime.day,
                        month: dateTime.month,
                        year: dateTime.year,
                      );
                      BlocProvider.of<TransactionBloc>(context).selectedDate =
                          selectedDateTime;
                    });
                  }
                },
              ),
            ),
            Expanded(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                leading: Icon(
                  MdiIcons.clockOutline,
                  color: context.secondary,
                ),
                title: Text(selectedDateTime.formattedTime),
                onTap: () async {
                  final TimeOfDay? timeOfDay = await paisaTimerPicker(context);
                  if (timeOfDay != null) {
                    setState(() {
                      selectedDateTime = selectedDateTime.copyWith(
                        hour: timeOfDay.hour,
                        minute: timeOfDay.minute,
                      );
                      BlocProvider.of<TransactionBloc>(context).selectedDate =
                          selectedDateTime;
                    });
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
