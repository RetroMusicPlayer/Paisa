import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/presentation/bloc/accounts_bloc.dart';

class AccountColorPickerWidget extends StatelessWidget {
  const AccountColorPickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountsBloc, AccountsState>(
      buildWhen: (previous, current) =>
          current is AccountColorSelectedState ||
          current is AccountSuccessState,
      builder: (context, state) {
        int color = Colors.red.value;
        if (state is AccountColorSelectedState) {
          color = state.categoryColor;
        }
        if (state is AccountSuccessState) {
          color = state.account.color ?? Colors.red.value;
        }
        return ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onTap: () async {
            final color = await paisaColorPicker(
              context,
              defaultColor:
                  BlocProvider.of<AccountsBloc>(context).selectedColor ??
                      Colors.red.value,
            );
            if (context.mounted) {
              BlocProvider.of<AccountsBloc>(context)
                  .add(AccountColorSelectedEvent(color));
            }
          },
          leading: Icon(
            Icons.color_lens,
            color: context.primary,
          ),
          title: Text(
            context.loc.pickColor,
          ),
          subtitle: Text(
            context.loc.pickColorDesc,
          ),
          trailing: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(color),
            ),
          ),
        );
      },
    );
  }
}
