import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';
import 'package:paisa/features/home/presentation/pages/home/home_page.dart';
import 'package:paisa/features/home/presentation/widgets/content_widget.dart';
import 'package:paisa/features/profile/presentation/pages/paisa_user_widget.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class HomeMobileWidget extends StatelessWidget {
  const HomeMobileWidget({
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
        title: const PaisaTitle(),
        actions: const [
          PaisaSearchButtonWidget(),
          PaisaUserWidget(),
          SizedBox(width: 8),
        ],
      ),
      drawer: Drawer(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return NavigationDrawer(
              selectedIndex: homeBloc.selectedIndex,
              onDestinationSelected: (index) {
                homeBloc.add(CurrentIndexEvent(index));
                Navigator.pop(context);
              },
              children: [
                const PaisaIconTitle(),
                ...destinations
                    .map((e) => NavigationDrawerDestination(
                          icon: e.icon,
                          selectedIcon: e.selectedIcon,
                          label: Text(e.pageType.name(context)),
                        ))
                    .toList(),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListTile(
                    onTap: () {
                      context.pushNamed(settingsName);
                      Navigator.pop(context);
                    },
                    leading: const Icon(Icons.settings),
                    title: Text(
                      context.loc.settings,
                      style: GoogleFonts.outfit(
                        textStyle: context.bodyLarge,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListTile(
                    onTap: () {
                      context.pushNamed(testName);
                      Navigator.pop(context);
                    },
                    leading: const Icon(Icons.settings),
                    title: Text(
                      context.loc.settings,
                      style: GoogleFonts.outfit(
                        textStyle: context.bodyLarge,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      body: const ContentWidget(),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => current is CurrentIndexState,
        builder: (context, state) {
          if (state is CurrentIndexState &&
              (state.currentPage == 4 ||
                  state.currentPage == 6 ||
                  state.currentPage == 5)) {
            return const SizedBox.shrink();
          }
          return Theme(
            data: Theme.of(context).copyWith(
              splashFactory: NoSplash.splashFactory,
            ),
            child: NavigationBar(
              elevation: 1,
              backgroundColor: context.surface,
              selectedIndex: homeBloc.selectedIndex,
              onDestinationSelected: (index) =>
                  homeBloc.add(CurrentIndexEvent(index)),
              destinations: destinations
                  .sublist(0, 4)
                  .map((e) => NavigationDestination(
                        icon: e.icon,
                        selectedIcon: e.selectedIcon,
                        label: e.pageType.name(context),
                      ))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
