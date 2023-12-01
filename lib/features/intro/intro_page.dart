import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/widgets/lava/lava_clock.dart';
import 'package:paisa/main.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:paisa/core/widgets/paisa_widget.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const IntroBigScreenWidget(),
      tablet: (p0) => const IntroTabletWidget(),
      mobile: (p0) => const IntroMobileWidget(),
    );
  }
}

class IntroTabletWidget extends StatelessWidget {
  const IntroTabletWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: Colors.transparent,
      child: ColoredBox(
        color: context.surface,
        child: LavaAnimation(
          color: context.primaryContainer,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 0,
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        const PaisaIcon(size: 52),
                        Text(
                          context.loc.appTitle,
                          textAlign: TextAlign.center,
                          style: context.displayMedium?.copyWith(
                            color: context.onSurface.withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      context.loc.intoTitle,
                      textAlign: TextAlign.center,
                      style: context.headlineMedium?.copyWith(
                        color: context.secondary,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.check_circle,
                            color: context.primary,
                          ),
                          dense: true,
                          title: Text(
                            context.loc.intoSummary1,
                            style: context.titleMedium,
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.check_circle,
                            color: context.primary,
                          ),
                          dense: true,
                          title: Text(
                            context.loc.intoSummary2,
                            style: context.titleMedium,
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.check_circle,
                            color: context.primary,
                          ),
                          dense: true,
                          title: Text(
                            context.loc.intoSummary3,
                            style: context.titleMedium,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(
                        '*This app still in beta, expect the unexpected behavior and UI changes',
                        style: context.titleSmall?.copyWith(
                          color: context.bodySmall?.color,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28.0, vertical: 24),
                child: PaisaBigButton(
                  onPressed: () {
                    getIt
                        .get<Box<dynamic>>(instanceName: BoxType.settings.name)
                        .put(userIntroKey, true);
                  },
                  title: context.loc.introCTA,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IntroBigScreenWidget extends StatelessWidget {
  const IntroBigScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Material(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(52.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Icon(
                            Icons.wallet,
                            size: 52,
                            color: context.primary,
                          ),
                        ),
                        Text(
                          context.loc.appTitle,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: context.primary,
                              ),
                        ),
                      ],
                    ),
                    Text(
                      context.loc.intoTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: context.onSurface),
                    ),
                    const SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.check_circle,
                            color: context.primary,
                          ),
                          dense: true,
                          title: Text(
                            context.loc.intoSummary1,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.check_circle,
                            color: context.primary,
                          ),
                          dense: true,
                          title: Text(
                            context.loc.intoSummary2,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.check_circle,
                            color: context.primary,
                          ),
                          dense: true,
                          title: Text(
                            context.loc.intoSummary3,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                          ),
                        ),
                        const SizedBox(height: 24),
                        PaisaBigButton(
                          onPressed: () => getIt
                              .get<Box<dynamic>>(
                                  instanceName: BoxType.settings.name)
                              .put(userIntroKey, true),
                          title: context.loc.introCTA,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: LavaAnimation(
                    color: context.primaryContainer,
                    child: const SizedBox.shrink(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IntroMobileWidget extends StatelessWidget {
  const IntroMobileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 0,
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: LavaAnimation(
            color: context.primaryContainer,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.loc.appTitle,
                    style: context.displayMedium?.copyWith(
                      color: context.primary,
                    ),
                  ),
                  Text(
                    context.loc.intoTitle,
                    style: context.headlineSmall?.copyWith(
                      color: context.secondary,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Column(
                    children: [
                      IntroTextWidget(title: context.loc.intoSummary1),
                      IntroTextWidget(title: context.loc.intoSummary2),
                      IntroTextWidget(title: context.loc.intoSummary3),
                    ],
                  ),
                  const Spacer(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(
                      '*This app still in beta, expect the unexpected behavior and UI changes',
                      style: context.titleSmall?.copyWith(
                        color: context.bodySmall?.color,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 24),
            child: PaisaBigButton(
              onPressed: () {
                getIt
                    .get<Box<dynamic>>(instanceName: BoxType.settings.name)
                    .put(userIntroKey, true);
              },
              title: context.loc.introCTA,
            ),
          ),
        ),
      ),
    );
  }
}

class IntroTextWidget extends StatelessWidget {
  const IntroTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        Icons.check_circle,
        color: context.primary,
      ),
      dense: true,
      title: Text(
        title,
        style: context.titleMedium,
      ),
    );
  }
}
