import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/main.dart';
import 'package:paisa/core/widgets/lava/lava_clock.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:paisa/core/common.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: const IntroBigScreenWidget(),
      mobile: const IntoMobileWidget(),
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

class IntoMobileWidget extends StatelessWidget {
  const IntoMobileWidget({
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
