import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';
import 'package:paisa/features/home/presentation/pages/home/home_page.dart';
import 'package:paisa/features/home/presentation/widgets/content_widget.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0),
          child: PaisaIconTitle(),
        ),
        leadingWidth: 150,
        title: const PaisaSearchBar(),
        actions: const [PaisaUserWidget()],
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return NavigationRail(
                elevation: 1,
                selectedLabelTextStyle: context.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelTextStyle: context.bodyLarge,
                labelType: NavigationRailLabelType.all,
                backgroundColor: context.surface,
                selectedIndex: homeBloc.selectedIndex,
                onDestinationSelected: (index) =>
                    homeBloc.add(CurrentIndexEvent(index)),
                minWidth: 55,
                useIndicator: true,
                groupAlignment: 1,
                trailing: Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                        tooltip: context.loc.settings,
                        onPressed: () => context.pushNamed(settingsName),
                        icon: Icon(MdiIcons.cog),
                      ),
                    ),
                  ),
                ),
                destinations: destinations
                    .map((e) => NavigationRailDestination(
                          icon: e.icon,
                          selectedIcon: e.selectedIcon,
                          label: Text(e.pageType.name(context)),
                        ))
                    .toList(),
              );
            },
          ),
          const VerticalDivider(thickness: 1, width: 1),
          const Expanded(
            child: ContentWidget(),
          ),
        ],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
