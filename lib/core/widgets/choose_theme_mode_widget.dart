import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/main.dart';

class ChooseThemeModeWidget extends StatefulWidget {
  const ChooseThemeModeWidget({
    Key? key,
    required this.currentTheme,
  }) : super(key: key);

  final ThemeMode currentTheme;

  @override
  ChooseThemeModeWidgetState createState() => ChooseThemeModeWidgetState();
}

class ChooseThemeModeWidgetState extends State<ChooseThemeModeWidget> {
  late ThemeMode currentIndex = widget.currentTheme;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              context.loc.chooseTheme,
              style: context.titleLarge,
            ),
          ),
          ...ThemeMode.values
              .map(
                (e) => RadioListTile(
                  value: e,
                  activeColor: context.primary,
                  groupValue: currentIndex,
                  onChanged: (ThemeMode? value) {
                    currentIndex = value!;
                    setState(() {});
                  },
                  title: Text(
                    e.themeName,
                    style: TextStyle(
                      color: context.onSurface,
                    ),
                  ),
                ),
              )
              .toList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    context.loc.cancel,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () => getIt
                      .get<Box<dynamic>>(instanceName: BoxType.settings.name)
                      .put(themeModeKey, currentIndex.index)
                      .then((value) => Navigator.pop(context)),
                  child: Text(context.loc.ok),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
