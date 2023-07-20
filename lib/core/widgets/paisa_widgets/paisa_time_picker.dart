import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paisa/core/common.dart';

Future<TimeOfDay?> paisaTimerPicker(
  BuildContext context,
) {
  return showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          timePickerTheme: TimePickerThemeData(
            helpTextStyle: GoogleFonts.outfit(
              textStyle: context.titleLarge,
            ),
            dayPeriodTextStyle: GoogleFonts.outfit(
              textStyle: context.titleMedium,
            ),
            hourMinuteTextStyle: GoogleFonts.outfit(
              textStyle: context.headlineMedium,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            hourMinuteShape: const CircleBorder(),
          ),
        ),
        child: child!,
      );
    },
  );
}
