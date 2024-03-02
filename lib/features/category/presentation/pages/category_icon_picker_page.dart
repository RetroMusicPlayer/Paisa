// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:paisa/core/constants/icon_constants.dart';

import 'package:paisa/core/extensions/build_context_extension.dart';
import 'package:paisa/core/extensions/color_extension.dart';
import 'package:paisa/core/extensions/text_style_extension.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class CategoryIconPickerPage extends StatefulWidget {
  const CategoryIconPickerPage({super.key});

  @override
  State<CategoryIconPickerPage> createState() => _CategoryIconPickerPageState();
}

class _CategoryIconPickerPageState extends State<CategoryIconPickerPage> {
  late IconData? selectedIcon = PaisaMdiIcons.abTesting;

  @override
  Widget build(BuildContext context) {
    final map = paisaIconMap.entries.toList();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop(selectedIcon);
          },
          icon: const Icon(Icons.close),
        ),
        title: Text(context.loc.chooseIcon),
        actions: [
          PaisaTextButton(
            onPressed: () {
              paisaIconPicker(
                context: context,
                defaultIcon: selectedIcon!,
              ).then((resultIcon) => selectedIcon = resultIcon);
            },
            title: context.loc.more,
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PaisaBigButton(
            onPressed: () {
              GoRouter.of(context).pop(selectedIcon);
            },
            title: context.loc.done,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: map.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final iconData = map.elementAtOrNull(index);

          return PaisaFilledCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  visualDensity: const VisualDensity(vertical: -3),
                  title: Text(
                    iconData!.key,
                    style: context.titleMedium?.copyWith(
                      color: context.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: iconData.value.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 70,
                  ),
                  itemBuilder: (context, index) {
                    final bool isSelected =
                        selectedIcon == iconData.value.elementAtOrNull(index);

                    return Container(
                      margin: const EdgeInsets.all(4),
                      decoration: isSelected
                          ? BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: context.primary,
                              ),
                              borderRadius: BorderRadius.circular(32),
                            )
                          : null,
                      child: IconButton(
                        iconSize: 30,
                        key: ValueKey(
                          iconData.value.elementAtOrNull(index).hashCode,
                        ),
                        color: isSelected
                            ? context.primary
                            : Theme.of(context).iconTheme.color,
                        onPressed: () {
                          setState(() {
                            selectedIcon =
                                iconData.value.elementAtOrNull(index);
                          });
                        },
                        icon: Icon(iconData.value.elementAtOrNull(index)),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
