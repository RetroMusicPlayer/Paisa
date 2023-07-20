import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PaisaMenuWidget extends StatelessWidget {
  const PaisaMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: Icon(MdiIcons.menu),
    );
  }
}
