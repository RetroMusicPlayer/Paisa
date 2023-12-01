import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/future_resolve.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/settings/presentation/widgets/dynamic_color_switch_widget.dart';
import 'package:paisa/features/settings/presentation/widgets/setting_option.dart';
import 'package:provider/provider.dart';

class SettingsColorPickerWidget extends StatelessWidget {
  const SettingsColorPickerWidget({
    Key? key,
  }) : super(key: key);

  int _extractColorValue(BuildContext context, dynamic value) {
    final isDynamic = value.get(dynamicThemeKey, defaultValue: false);
    if (isDynamic) {
      return context.primary.value;
    }
    return value.get(appColorKey, defaultValue: 0xFF795548);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<dynamic>>(
      valueListenable: Provider.of<Box<dynamic>>(context).listenable(
        keys: [
          appColorKey,
          dynamicThemeKey,
        ],
      ),
      builder: (context, value, _) {
        final isDynamic = value.get(dynamicThemeKey, defaultValue: false);
        final color = _extractColorValue(context, value);
        return SettingsOption(
          icon: MdiIcons.palette,
          title: context.loc.accentColor,
          subtitle: isDynamic ? context.loc.dynamicColor : context.loc.custom,
          trailing: CircleAvatar(
            backgroundColor: Color(color),
            maxRadius: 16,
          ),
          onTap: () => showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            context: context,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width >= 700
                  ? 700
                  : double.infinity,
            ),
            builder: (context) => const ColorPickerDialogWidget(),
          ),
        );
      },
    );
  }
}

class ColorPickerDialogWidget extends StatelessWidget {
  const ColorPickerDialogWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return FutureResolve<AndroidDeviceInfo>(
        future: DeviceInfoPlugin().androidInfo,
        builder: (info) {
          final sdk = info.version.sdkInt;
          bool isAndroid12 = sdk >= 29;
          return ValueListenableBuilder<Box<dynamic>>(
            valueListenable: Provider.of<Box<dynamic>>(context).listenable(),
            builder: (context, value, _) {
              final bool isDynamic = value.get(
                dynamicThemeKey,
                defaultValue: false,
              );
              int selectedColor = value.get(
                appColorKey,
                defaultValue: 0xFF795548,
              );

              return SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListTile(
                      title: Text(
                        context.loc.pickColor,
                        style: context.titleLarge,
                      ),
                    ),
                    Visibility(
                      visible: isAndroid12,
                      child: const DynamicColorSwitchWidget(),
                    ),
                    const Divider(),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      child: isDynamic
                          ? const SizedBox.shrink()
                          : ColorPickerGridWidget(
                              onSelected: (color) {
                                selectedColor = color;
                              },
                              selectedColor: selectedColor,
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
                        onPressed: () => value
                            .put(appColorKey, selectedColor)
                            .then((value) => Navigator.pop(context)),
                        child: Text(context.loc.done),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      );
    } else {
      int selectedColor = Provider.of<Box<dynamic>>(context).get(
        appColorKey,
        defaultValue: 0xFF795548,
      );
      return SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                context.loc.pickColor,
                style: context.titleLarge,
              ),
            ),
            ColorPickerGridWidget(
              onSelected: (color) {
                selectedColor = color;
              },
              selectedColor: selectedColor,
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
                onPressed: () {
                  Provider.of<Box<dynamic>>(context, listen: false)
                      .put(appColorKey, selectedColor)
                      .then((value) => Navigator.pop(context));
                },
                child: Text(context.loc.done),
              ),
            ),
          ],
        ),
      );
    }
  }
}
