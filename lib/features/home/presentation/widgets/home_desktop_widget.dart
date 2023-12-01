import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:paisa/config/routes_name.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';
import 'package:paisa/features/home/presentation/pages/home/home_page.dart';
import 'package:paisa/features/home/presentation/widgets/content_widget.dart';
import 'package:paisa/features/home/presentation/widgets/home_search_bar.dart';
import 'package:paisa/features/profile/presentation/pages/paisa_user_widget.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class HomeDesktopWidget extends StatelessWidget {
  const HomeDesktopWidget({
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
        toolbarHeight: 72,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: PaisaIconTitle(),
        ),
        leadingWidth: 300,
        title: const HomeSearchBar(),
        actions: const [PaisaUserWidget()],
      ),
      floatingActionButton: floatingActionButton,
      body: Row(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return NavigationDrawer(
                elevation: 0,
                selectedIndex: homeBloc.selectedIndex,
                onDestinationSelected: (index) {
                  homeBloc.add(CurrentIndexEvent(index));
                },
                children: [
                  ...destinations
                      .map((e) => NavigationDrawerDestination(
                            icon: e.icon,
                            selectedIcon: e.selectedIcon,
                            label: Text(e.pageType.name(context)),
                          ))
                      .toList(),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      context.pushNamed(
                        RoutesName.settings.name,
                      );
                    },
                    leading: Icon(
                      Icons.settings,
                      color: context.primary,
                    ),
                    title: Text(
                      context.loc.settings,
                      style: context.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: context.onBackground,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          const VerticalDivider(thickness: 1, width: 1),
          const Expanded(
            child: SafeArea(
              child: ContentWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
