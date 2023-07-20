import 'package:flutter/foundation.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:quick_actions/quick_actions.dart';

import 'di.config.dart';
import 'module/hive_module.dart';

@InjectableInit(
  asExtension: false,
  preferRelativeImports: true,
  throwOnMissingDependencies: true,
)
Future<GetIt> configInjector(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) async {
  usePathUrlStrategy();
  await HiveAdapters().initHive();
  if (TargetPlatform.android == defaultTargetPlatform) {
    await FlutterDisplayMode.setHighRefreshRate();
  }
  if (TargetPlatform.android == defaultTargetPlatform ||
      TargetPlatform.iOS == defaultTargetPlatform) {
    initAppShortcuts();
  }

  return init(
    getIt,
    environmentFilter: environmentFilter,
    environment: env,
  );
}

Future<void> initAppShortcuts() async {
  const QuickActions quickActions = QuickActions();
  await quickActions.initialize((String shortcutType) {
    goRouter.goNamed(
      addTransactionsName,
      queryParameters: {
        'type': shortcutType == 'ic_expense'
            ? '0'
            : shortcutType == 'ic_income'
                ? '1'
                : shortcutType == 'ic_transfer'
                    ? '2'
                    : '0',
      },
    );
  });
  await quickActions.setShortcutItems([
    const ShortcutItem(
      type: 'ic_income',
      localizedTitle: 'Income',
      icon: 'ic_income',
    ),
    const ShortcutItem(
      type: 'ic_expense',
      localizedTitle: 'Expense',
      icon: 'ic_expense',
    ),
    const ShortcutItem(
      type: 'ic_transfer',
      localizedTitle: 'Transfer',
      icon: 'ic_transfer',
    ),
  ]);
}
