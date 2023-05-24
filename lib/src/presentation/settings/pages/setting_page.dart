import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/src/presentation/settings/widgets/small_size_fab_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../main.dart';
import '../../../app/routes.dart';
import '../../../core/common.dart';
import '../../../core/enum/box_types.dart';
import '../../../core/enum/theme_mode.dart';
import '../../../data/settings/authenticate.dart';
import '../../widgets/choose_theme_mode_widget.dart';
import '../widgets/biometrics_auth_widget.dart';
import '../widgets/currency_change_widget.dart';
import '../widgets/hide_card_glow_widget.dart';
import '../widgets/setting_option.dart';
import '../widgets/settings_color_picker_widget.dart';
import '../widgets/settings_group_card.dart';
import '../widgets/version_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = getIt.get<Box<dynamic>>(
      instanceName: BoxType.settings.name,
    );
    final currentTheme = ThemeMode.values[getIt
        .get<Box<dynamic>>(instanceName: BoxType.settings.name)
        .get(themeModeKey, defaultValue: 0)];
    return Scaffold(
      appBar: context.materialYouAppBar(
        context.loc.settings,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          SettingsGroup(
            title: context.loc.colors,
            options: [
              SettingsColorPickerWidget(settings: settings),
              const Divider(),
              SettingsOption(
                title: context.loc.chooseTheme,
                subtitle: currentTheme.themeName,
                onTap: () {
                  showModalBottomSheet(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width >= 700
                          ? 700
                          : double.infinity,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    context: context,
                    builder: (_) => ChooseThemeModeWidget(
                      currentTheme: currentTheme,
                    ),
                  );
                },
              )
            ],
          ),
          SettingsGroup(
            title: context.loc.others,
            options: [
              const CurrencyChangeWidget(),
              const Divider(),
              BiometricAuthWidget(
                authenticate: getIt.get<Authenticate>(),
              ),
              SettingsOption(
                title: context.loc.backupAndRestoreTitle,
                subtitle: context.loc.backupAndRestoreSubTitle,
                onTap: () {
                  GoRouter.of(context).goNamed(exportAndImportName);
                },
              ),
              const Divider(),
              const SmallSizeFabWidget(),
              const Divider(),
              const HideCardGlowWidget(),
            ],
          ),
          SettingsGroup(
            title: context.loc.socialLinks,
            options: [
              SettingsOption(
                title: context.loc.appRate,
                subtitle: context.loc.appRateDesc,
                onTap: () => launchUrl(
                  Uri.parse(playStoreUrl),
                  mode: LaunchMode.externalApplication,
                ),
              ),
              const Divider(),
              SettingsOption(
                title: context.loc.github,
                subtitle: context.loc.githubText,
                onTap: () => launchUrl(
                  Uri.parse(gitHubUrl),
                  mode: LaunchMode.externalApplication,
                ),
              ),
              const Divider(),
              SettingsOption(
                title: context.loc.telegram,
                subtitle: context.loc.telegramGroup,
                onTap: () => launchUrl(
                  Uri.parse(telegramGroupUrl),
                  mode: LaunchMode.externalApplication,
                ),
              ),
              const Divider(),
              SettingsOption(
                title: context.loc.privacyPolicy,
                onTap: () => launchUrl(
                  Uri.parse(termsAndConditionsUrl),
                  mode: LaunchMode.externalApplication,
                ),
              ),
              const Divider(),
              const VersionWidget(),
            ],
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                context.loc.madeWithLoveInIndia,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
