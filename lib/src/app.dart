import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/src/presentation/test/bloc/test_bloc.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'app/routes.dart';
import 'core/common.dart';
import 'core/extensions/country_extension.dart';
import 'core/theme/paisa_theme.dart';
import 'data/currencies/models/country_model.dart';
import 'domain/currencies/entities/country.dart';
import 'presentation/accounts/bloc/accounts_bloc.dart';
import 'presentation/home/bloc/home_bloc.dart';
import 'presentation/overview/cubit/budget_cubit.dart';
import 'presentation/settings/cubit/settings_cubit.dart';
import 'presentation/summary/controller/summary_controller.dart';

class PaisaApp extends StatefulWidget {
  const PaisaApp({Key? key, required this.settingsListenable})
      : super(key: key);
  final ValueListenable<Box<dynamic>> settingsListenable;
  @override
  State<PaisaApp> createState() => _PaisaAppState();
}

class _PaisaAppState extends State<PaisaApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<SettingCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<AccountsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<HomeBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<BudgetCubit>(),
        ),
        Provider(
          create: (context) => getIt.get<SummaryController>(),
        ),
        BlocProvider(
          create: (context) => TestBloc(),
        )
      ],
      child: ValueListenableBuilder<Box>(
        valueListenable: widget.settingsListenable,
        builder: (context, value, _) {
          final bool isDynamic = value.get(
            dynamicThemeKey,
            defaultValue: false,
          );
          final ThemeMode themeMode = ThemeMode.values[value.get(
            themeModeKey,
            defaultValue: 0,
          )];
          final int color = value.get(
            appColorKey,
            defaultValue: 0xFF795548,
          );
          final Color primaryColor = Color(color);

          return ProxyProvider0<Country>(
            update: (BuildContext context, _) {
              final Map? jsonString = value.get(userCountryKey);
              final Country model =
                  CountryModel.fromJson(jsonString ?? {}).toEntity();
              return model;
            },
            child: DynamicColorBuilder(
              builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
                ColorScheme lightColorScheme;
                ColorScheme darkColorScheme;
                if (lightDynamic != null && darkDynamic != null && isDynamic) {
                  lightColorScheme = lightDynamic.harmonized();
                  darkColorScheme = darkDynamic.harmonized();
                } else {
                  lightColorScheme = ColorScheme.fromSeed(
                    seedColor: primaryColor,
                  );
                  darkColorScheme = ColorScheme.fromSeed(
                    seedColor: primaryColor,
                    brightness: Brightness.dark,
                  );
                }

                return MaterialApp.router(
                  routeInformationProvider: goRouter.routeInformationProvider,
                  routeInformationParser: goRouter.routeInformationParser,
                  routerDelegate: goRouter.routerDelegate,
                  debugShowCheckedModeBanner: false,
                  themeMode: themeMode,
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  onGenerateTitle: (BuildContext context) =>
                      context.loc.appTitle,
                  theme: ThemeData.from(
                    colorScheme: lightColorScheme,
                  ).copyWith(
                    colorScheme: lightColorScheme,
                    dialogTheme: dialogTheme,
                    timePickerTheme: timePickerTheme,
                    appBarTheme: appBarThemeLight(lightColorScheme),
                    useMaterial3: true,
                    textTheme: GoogleFonts.outfitTextTheme(
                        ThemeData.light().textTheme),
                    scaffoldBackgroundColor: lightColorScheme.background,
                    dialogBackgroundColor: lightColorScheme.background,
                    navigationBarTheme:
                        navigationBarThemeData(lightColorScheme),
                    navigationDrawerTheme: navigationDrawerThemeData(
                      lightColorScheme,
                      ThemeData.light().textTheme,
                    ),
                    applyElevationOverlayColor: true,
                    inputDecorationTheme: inputDecorationTheme,
                    elevatedButtonTheme: elevatedButtonTheme(
                      context,
                      lightColorScheme,
                    ),
                    extensions: [lightCustomColor],
                    dividerTheme: DividerThemeData(
                      color: ThemeData.light().dividerColor,
                    ),
                  ),
                  darkTheme: ThemeData.from(
                    colorScheme: darkColorScheme,
                  ).copyWith(
                    colorScheme: darkColorScheme,
                    dialogTheme: dialogTheme,
                    timePickerTheme: timePickerTheme,
                    appBarTheme: appBarThemeDark(darkColorScheme),
                    useMaterial3: true,
                    textTheme: GoogleFonts.outfitTextTheme(
                      ThemeData.dark().textTheme,
                    ),
                    scaffoldBackgroundColor: darkColorScheme.background,
                    dialogBackgroundColor: darkColorScheme.background,
                    navigationBarTheme: navigationBarThemeData(darkColorScheme),
                    navigationDrawerTheme: navigationDrawerThemeData(
                      darkColorScheme,
                      ThemeData.dark().textTheme,
                    ),
                    applyElevationOverlayColor: true,
                    inputDecorationTheme: inputDecorationTheme,
                    elevatedButtonTheme: elevatedButtonTheme(
                      context,
                      darkColorScheme,
                    ),
                    extensions: [darkCustomColor],
                    dividerTheme: DividerThemeData(
                      color: ThemeData.dark().dividerColor,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
