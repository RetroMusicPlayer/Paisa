// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:collection/collection.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widgets/paisa_annotate_region_widget.dart';

class AppLanguageChangerPage extends StatefulWidget {
  const AppLanguageChangerPage({
    super.key,
    this.currentLanguage,
  });

  final String? currentLanguage;

  @override
  State<AppLanguageChangerPage> createState() => _AppLanguageChangerPageState();
}

class _AppLanguageChangerPageState extends State<AppLanguageChangerPage> {
  final List<LanguageEntity> languages = Languages.languages.sorted(
    (a, b) => a.value.compareTo(b.value),
  );

  late String? selectedLanguage = widget.currentLanguage;

  Future<void> _save(BuildContext context) async {
    await settings.put(appLanguageKey, selectedLanguage);
    if (!mounted) {
      return;
    }
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        appBar: context.materialYouAppBar(context.loc.chooseAppLanguage),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: languages.length,
          itemBuilder: (_, index) {
            final LanguageEntity entity = languages[index];
            return ListTile(
              selectedTileColor: context.primaryContainer,
              selectedColor: context.onPrimaryContainer,
              selected: selectedLanguage == entity.code,
              onTap: () {
                setState(() {
                  selectedLanguage = entity.code;
                });
              },
              title: Text(
                entity.value,
                style: context.titleMedium?.copyWith(
                    color: selectedLanguage == entity.code
                        ? context.primary
                        : null),
              ),
            );
          },
        ),
        bottomNavigationBar: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(context.loc.cancel),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () => _save(context),
                  child: Text(context.loc.done),
                ),
              ),
            ],
          ),
        ),
      ),
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
    LanguageEntity(code: 'ar', value: 'العربية'),
    LanguageEntity(code: 'es', value: 'Spanish'),
    LanguageEntity(code: 'pl', value: 'Polish'),
    LanguageEntity(code: 'ne', value: 'Nepali'),
    LanguageEntity(code: 'cs', value: 'Czech'),
    LanguageEntity(code: 'uk', value: 'Ukrainian'),
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
