import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:paisa/core/common.dart';

class PaisaSearchButtonWidget extends StatelessWidget {
  const PaisaSearchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.search,
        color: context.onBackground,
      ),
      onPressed: () {
        GoRouter.of(context).pushNamed(searchName);
      },
    );
  }
}
