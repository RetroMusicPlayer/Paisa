import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/box_types.dart';
import 'package:paisa/features/recurring/domain/repository/recurring_repository.dart';
import 'package:paisa/app.dart';
import 'package:paisa/di/di.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjector(getIt);
  getIt.get<RecurringRepository>().checkForRecurring();
  final listenale =
      getIt.get<Box<dynamic>>(instanceName: BoxType.settings.name).listenable(
    keys: [appColorKey, dynamicThemeKey, themeModeKey, userCountryKey],
  );
  runApp(PaisaApp(settingsListenable: listenale));
}
