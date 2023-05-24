import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../../main.dart';
import '../../../core/common.dart';
import '../../../core/enum/box_types.dart';

class HideCardGlowWidget extends StatefulWidget {
  const HideCardGlowWidget({super.key});

  @override
  State<HideCardGlowWidget> createState() => _HideCardGlowWidgetState();
}

class _HideCardGlowWidgetState extends State<HideCardGlowWidget> {
  final settings = getIt.get<Box<dynamic>>(
    instanceName: BoxType.settings.name,
  );
  late bool isSelected = settings.get(hideCardGlowKey, defaultValue: false);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(context.loc.hideCardGlow),
      subtitle: Text(context.loc.hideCardGlowMessage),
      onChanged: (bool value) async {
        setState(() {
          isSelected = value;
        });
        settings.put(hideCardGlowKey, value);
      },
      value: isSelected,
    );
  }
}
