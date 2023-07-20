import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paisa/core/common.dart';

class PaisaBaseWidget extends StatelessWidget {
  const PaisaBaseWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: context.surface,
        systemNavigationBarContrastEnforced: true,
      ),
      child: child,
    );
  }
}
