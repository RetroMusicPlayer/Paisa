import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:paisa/core/extensions/build_context_extension.dart';

Widget buildTestableWidget(Widget widget, Locale locale) {
  return MaterialApp(
    locale: locale,
    supportedLocales: [locale],
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    home: widget,
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          context.loc.home,
          style: const TextStyle(
            fontSize: 36.0,
          ),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('Test Arabic localization', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(const MyWidget(), const Locale('ar')));
    await tester.pumpAndSettle();

    var findByText = find.byType(Text);

    expect(findByText.evaluate().isEmpty, false);
    expect(find.text('الرئيسية'), findsOneWidget);
  });
}
