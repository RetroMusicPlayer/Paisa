import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/settings/domain/use_case/setting_use_case.dart';
import 'package:paisa/main.dart';

class AccountsStyleWidget extends StatefulWidget {
  const AccountsStyleWidget({super.key});

  @override
  State<AccountsStyleWidget> createState() => _AccountsStyleWidgetState();
}

class _AccountsStyleWidgetState extends State<AccountsStyleWidget> {
  final SettingsUseCase settingsUseCase = getIt.get();
  late bool isSelected =
      settingsUseCase.get(userAccountsStyleKey, defaultValue: false);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      secondary: Icon(MdiIcons.creditCard),
      title: Text(context.loc.accountStyle),
      subtitle: Text(context.loc.accountStyleDescription),
      onChanged: (bool value) async {
        setState(() {
          isSelected = value;
        });
        settingsUseCase.put(userAccountsStyleKey, value);
      },
      value: isSelected,
    );
  }
}
