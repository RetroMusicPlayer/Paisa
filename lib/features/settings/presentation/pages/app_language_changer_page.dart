import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/widgets/paisa_widgets/paisa_annotate_region_widget.dart';
import 'package:paisa/features/settings/presentation/widgets/app_language_changer.dart';
import 'package:provider/provider.dart';

import 'package:paisa/core/common.dart';

class AppLanguageChangerPage extends StatefulWidget {
  const AppLanguageChangerPage({
    super.key,
    required this.currentLanguage,
  });

  final String currentLanguage;

  @override
  State<AppLanguageChangerPage> createState() => _AppLanguageChangerPageState();
}

class _AppLanguageChangerPageState extends State<AppLanguageChangerPage> {
  final List<LanguageEntity> languages = Languages.languages.sorted(
    (a, b) => a.value.compareTo(b.value),
  );

  late String selectedLanguage = widget.currentLanguage;

  Future<void> _save() async {
    await Provider.of<Box<dynamic>>(
      context,
      listen: false,
    ).put(appLanguageKey, selectedLanguage);
    if (!mounted) {
      return;
    }
    Navigator.pop(context);
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
              onTap: () {
                setState(() {
                  selectedLanguage = entity.code;
                });
              },
              title: Text(
                entity.value,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: selectedLanguage == entity.code
                        ? Theme.of(context).colorScheme.primary
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
                  onPressed: _save,
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
