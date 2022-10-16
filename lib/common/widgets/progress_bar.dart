import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double max;
  final double current;
  final Color? color;

  const ProgressBar({
    Key? key,
    required this.max,
    required this.current,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, boxConstraints) {
        var x = boxConstraints.maxWidth;
        var percent = (current / max) * x;
        return Stack(
          children: [
            Container(
              width: x,
              height: 7,
              decoration: BoxDecoration(
                color: const Color(0xffd3d3d3),
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: percent,
              height: 7,
              decoration: BoxDecoration(
                color: color ?? Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ],
        );
      },
    );
  }
}
