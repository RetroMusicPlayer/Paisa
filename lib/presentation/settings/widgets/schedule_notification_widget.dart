import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../di/service_locator.dart';
import '../bloc/settings_controller.dart';
import 'setting_option.dart';

class ScheduleNotificationWidget extends StatefulWidget {
  const ScheduleNotificationWidget({Key? key}) : super(key: key);

  @override
  ScheduleNotificationWidgetState createState() =>
      ScheduleNotificationWidgetState();
}

class ScheduleNotificationWidgetState
    extends State<ScheduleNotificationWidget> {
  final SettingsController settingsController = locator.get();
  late bool showNotifications = false;

  @override
  void initState() {
    super.initState();
    showNotifications = settingsController.showNotifications;
  }

  @override
  Widget build(BuildContext context) {
    return SettingsOption(
      title: AppLocalizations.of(context)!.reminderLabel,
      subtitle: AppLocalizations.of(context)!.reminderDescriptionLabel,
      trailing: Switch(
        activeColor: Theme.of(context).colorScheme.primary,
        value: showNotifications,
        onChanged: (value) {
          showNotifications = value;
          setState(() {});
          settingsController.updateNotification(value);
        },
      ),
    );
  }
}
