import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:paisa/core/common.dart';

Future<DateTime?> paisaDatePicker(
  BuildContext context, {
  required DateTime selectedDateTime,
}) {
  return showDatePicker(
    context: context,
    initialDate: selectedDateTime,
    firstDate: DateTime(1950),
    lastDate: DateTime.now(),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          datePickerTheme: DatePickerThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            headerHelpStyle: GoogleFonts.outfit(
              textStyle: context.titleMedium,
            ),
            headerHeadlineStyle: GoogleFonts.outfit(
              textStyle: context.headlineMedium,
            ),
          ),
        ),
        child: child!,
      );
    },
  );
}
