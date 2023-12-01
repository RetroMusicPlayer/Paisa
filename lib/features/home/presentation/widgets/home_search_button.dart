import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:paisa/config/routes_name.dart';

import 'package:paisa/core/common.dart';

class PaisaSearchButton extends StatelessWidget {
  const PaisaSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.search,
        color: context.onBackground,
      ),
      onPressed: () {
        context.pushNamed(RoutesName.search.name);
      },
    );
  }
}
