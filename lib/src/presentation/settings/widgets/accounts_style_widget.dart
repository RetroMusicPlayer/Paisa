import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../core/common.dart';
import '../bloc/settings_controller.dart';

class AccountsStyleWidget extends StatefulWidget {
  const AccountsStyleWidget({super.key});

  @override
  State<AccountsStyleWidget> createState() => _AccountsStyleWidgetState();
}

class _AccountsStyleWidgetState extends State<AccountsStyleWidget> {
  final SettingsController settings = getIt.get<SettingsController>();
  late bool isSelected =
      settings.get(userAccountsStyleKey, defaultValue: false);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Accounts style'),
      subtitle: const Text(
          'Select your preferred account display style: vertical or horizontal'),
      onChanged: (bool value) async {
        setState(() {
          isSelected = value;
        });
        settings.put(userAccountsStyleKey, value);
      },
      value: isSelected,
    );
  }
}
