import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../common/widgets/paisa_card.dart';

class LocaleGridView extends StatelessWidget {
  const LocaleGridView({
    Key? key,
    required this.locales,
    required this.onPressed,
    required this.crossAxisCount,
  }) : super(key: key);

  final List<MapEntry<String, Locale>> locales;
  final Function(Locale) onPressed;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
      ),
      shrinkWrap: true,
      itemCount: locales.length,
      itemBuilder: (_, index) {
        final map = locales[index];
        final format = NumberFormat.compactSimpleCurrency(
          locale: locales[index].value.toString(),
        );

        return PaisaCard(
          child: InkWell(
            onTap: () => onPressed(locales[index].value),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    format.currencySymbol,
                    style: GoogleFonts.manrope(
                      textStyle: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        map.key,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '${format.currencyName}',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
