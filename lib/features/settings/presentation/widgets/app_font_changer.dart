import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';

class AppFontChanger extends StatelessWidget {
  const AppFontChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(MdiIcons.formatFont),
      title: Text(context.loc.fontStyle),
      subtitle: Text(context.loc.fontStyleDescription),
      onTap: () {
        context.goNamed(RoutesName.appFontChanger.name);
      },
    );
  }
}
