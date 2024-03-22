// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/home/presentation/pages/home/home_cubit.dart';
import 'package:paisa/features/home/presentation/pages/home/home_page.dart';
import 'package:paisa/features/home/presentation/widgets/content_widget.dart';
import 'package:paisa/features/home/presentation/widgets/home_search_bar.dart';
import 'package:paisa/features/profile/presentation/pages/paisa_user_widget.dart';

class HomeTabletWidget extends StatelessWidget {
  const HomeTabletWidget({
    super.key,
    required this.floatingActionButton,
    required this.destinations,
  });

  final List<Destination> destinations;
  final Widget floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: PaisaIconTitle(),
          ),
          leadingWidth: 180,
          title: const HomeSearchBar(),
          actions: const [
            PaisaUserWidget(),
          ],
        ),
        body: Row(
          children: [
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return NavigationRail(
                  elevation: 1,
                  selectedLabelTextStyle: context.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelTextStyle: context.bodyMedium,
                  labelType: NavigationRailLabelType.all,
                  backgroundColor: context.surface,
                  selectedIndex: context.read<HomeCubit>().state.index,
                  onDestinationSelected: (index) =>
                      context.read<HomeCubit>().setCurrentIndex(index),
                  minWidth: 55,
                  useIndicator: true,
                  groupAlignment: -1,
                  trailing: Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: IconButton(
                          tooltip: context.loc.settings,
                          onPressed: () {
                            const SettingsPageData().push(context);
                          },
                          icon: Icon(MdiIcons.cog),
                        ),
                      ),
                    ),
                  ),
                  destinations: [
                    ...destinations.map((e) => NavigationRailDestination(
                          icon: e.icon,
                          selectedIcon: e.selectedIcon,
                          label: Text(e.pageType.name(context)),
                        )),
                  ],
                );
              },
            ),
            const Expanded(child: ContentWidget()),
          ],
        ),
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
