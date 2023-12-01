import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:paisa/config/routes_name.dart';

import 'package:paisa/core/common.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width / 3,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        color: context.surface,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(34),
        onTap: () {
          context.pushNamed(RoutesName.search.name);
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.search_rounded),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  context.loc.search,
                  style: context.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
