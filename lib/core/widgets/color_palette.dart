import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 50,
            color: context.primary,
            child: Center(
              child: Text(
                'Text onPrimary ',
                style: TextStyle(
                  color: context.onPrimary,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.primaryContainer,
            child: Center(
              child: Text(
                'Text onPrimaryContainer ',
                style: TextStyle(
                  color: context.onPrimaryContainer,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.secondary,
            child: Center(
              child: Text(
                'Text onSecondary ',
                style: TextStyle(
                  color: context.onSecondary,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.secondaryContainer,
            child: Center(
              child: Text(
                'Text onSecondaryContainer ',
                style: TextStyle(
                  color: context.onSecondaryContainer,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.tertiary,
            child: Center(
              child: Text(
                'Text onTertiary ',
                style: TextStyle(
                  color: context.onTertiary,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.tertiaryContainer,
            child: Center(
              child: Text(
                'Text onTertiaryContainer ',
                style: TextStyle(
                  color: context.onTertiaryContainer,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.surface,
            child: Center(
              child: Text(
                'Text onSurface ',
                style: TextStyle(
                  color: context.onSurface,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.surfaceVariant,
            child: Center(
              child: Text(
                'Text onSurfaceVariant ',
                style: TextStyle(
                  color: context.onSurfaceVariant,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.surfaceTint,
            child: Center(
              child: Text(
                'Text onSurfaceVariant ',
                style: TextStyle(
                  color: context.onSurfaceVariant,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.inverseSurface,
            child: Center(
              child: Text(
                'Text onInverseSurface ',
                style: TextStyle(
                  color: context.onInverseSurface,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.background,
            child: Center(
              child: Text(
                'Text onBackground ',
                style: TextStyle(
                  color: context.onBackground,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.error,
            child: Center(
              child: Text(
                'Text onError ',
                style: TextStyle(
                  color: context.onError,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: context.errorContainer,
            child: Center(
              child: Text(
                'Text onErrorContainer ',
                style: TextStyle(
                  color: context.onErrorContainer,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
