import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/main.dart';

class SmallSizeFabWidget extends StatefulWidget {
  const SmallSizeFabWidget({super.key});

  @override
  State<SmallSizeFabWidget> createState() => _SmallSizeFabWidgetState();
}

class _SmallSizeFabWidgetState extends State<SmallSizeFabWidget> {
  late bool isSelected = settings.get(smallSizeFabKey, defaultValue: false);
  final settings = getIt.get<Box<dynamic>>(instanceName: BoxType.settings.name);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      secondary: Icon(MdiIcons.resize),
      title: Text(
        context.loc.smallSizeFab,
      ),
      subtitle: Text(context.loc.smallSizeFabMessage),
      onChanged: (bool value) async {
        setState(() {
          isSelected = value;
        });
        settings.put(smallSizeFabKey, value);
      },
      value: isSelected,
    );
  }
}
