import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes_name.dart';

import 'package:paisa/core/common.dart';

class AppLanguageChanger extends StatelessWidget {
  const AppLanguageChanger({
    super.key,
    required this.settings,
  });
  final Box<dynamic> settings;

  @override
  Widget build(BuildContext context) {
    final code = settings.get(appLanguageKey, defaultValue: 'en');
    return ListTile(
      leading: Icon(
        MdiIcons.translate,
        color: context.onSurfaceVariant,
      ),
      onTap: () {
        context.goNamed(RoutesName.appLanguageChanger.name);
      },
      title: Text(context.loc.appLanguage),
      subtitle: Text(Languages.languages
          .firstWhere((element) => element.code == code)
          .value),
    );
  }
}

class LanguageEntity {
  const LanguageEntity({
    required this.code,
    required this.value,
  });

  final String code;
  final String value;
}

class Languages {
  const Languages._();

  static const languages = [
    LanguageEntity(code: 'en', value: 'English'),
    LanguageEntity(code: 'es', value: 'Spanish'),
    LanguageEntity(code: 'pl', value: 'Polish'),
    LanguageEntity(code: 'be', value: 'Belarusian'),
    LanguageEntity(code: 'de', value: 'German'),
    LanguageEntity(code: 'fr', value: 'French'),
    LanguageEntity(code: 'it', value: 'Italian'),
    LanguageEntity(code: 'kn', value: 'Kannada (IN)'),
    LanguageEntity(code: 'pt', value: 'Portuguese'),
    LanguageEntity(code: 'ru', value: 'Russian'),
    LanguageEntity(code: 'ta', value: 'Tamil (IN)'),
    LanguageEntity(code: 'vi', value: 'Vietnamese'),
    LanguageEntity(code: 'zh', value: 'Chinese'),
    LanguageEntity(code: 'zh_TW', value: 'Traditional Chinese'),
  ];
}
