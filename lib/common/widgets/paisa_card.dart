import 'package:flutter/material.dart';

class PaisaCard extends StatelessWidget {
  const PaisaCard({
    super.key,
    required this.child,
    this.elevation,
    this.color,
  });

  final Widget child;
  final double? elevation;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      color: color ?? Theme.of(context).colorScheme.surfaceVariant,
      clipBehavior: Clip.antiAlias,
      elevation: elevation ?? 2.0,
      shadowColor: color ?? Theme.of(context).colorScheme.shadow,
      child: child,
    );
  }
}
