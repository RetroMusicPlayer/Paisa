import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';
import 'package:paisa/features/home/presentation/pages/home/home_page.dart';
import 'package:paisa/features/home/presentation/widgets/content_widget.dart';
import 'package:paisa/features/home/presentation/widgets/home_search_bar.dart';
import 'package:paisa/features/profile/presentation/pages/paisa_user_widget.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

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
    final HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return NavigationRail(
              groupAlignment: 0,
              leading: floatingActionButton,
              elevation: 1,
              selectedLabelTextStyle: context.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.primary,
              ),
              unselectedLabelTextStyle: context.bodyLarge?.copyWith(
                color: context.onSurface.withOpacity(0.75),
              ),
              unselectedIconTheme: IconThemeData(
                color: context.onSurface.withOpacity(0.75),
              ),
              labelType: NavigationRailLabelType.all,
              backgroundColor: context.surface,
              selectedIndex: homeBloc.selectedIndex,
              onDestinationSelected: (index) {
                if (index == 7) {
                  context.pushNamed(RoutesName.settings.name);
                } else {
                  homeBloc.add(CurrentIndexEvent(index));
                }
              },
              minWidth: 55,
              useIndicator: true,
              destinations: [
                ...destinations
                    .map((e) => NavigationRailDestination(
                          icon: e.icon,
                          selectedIcon: e.selectedIcon,
                          label: Text(e.pageType.name(context)),
                        ))
                    .toList(),
                NavigationRailDestination(
                  icon: Icon(MdiIcons.cog),
                  label: Text(
                    context.loc.settings,
                  ),
                )
              ],
            );
          },
        ),
        VerticalDivider(
          thickness: 1,
          width: 1,
          color: context.background,
        ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              leading: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: PaisaIconTitle(),
              ),
              leadingWidth: 180,
              title: const HomeSearchBar(),
              actions: const [PaisaUserWidget()],
            ),
            body: const ContentWidget(),
          ),
        ),
      ],
    );
  }
}
