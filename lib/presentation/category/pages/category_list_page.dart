import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../app/routes.dart';
import '../../../common/constants/extensions.dart';
import '../../../di/service_locator.dart';
import '../bloc/category_bloc.dart';
import '../widgets/category_list_widget.dart';

class CategoryListPage extends StatefulWidget {
  const CategoryListPage({Key? key}) : super(key: key);

  @override
  CategoryListPageState createState() => CategoryListPageState();
}

class CategoryListPageState extends State<CategoryListPage> {
  final CategoryBloc addCategoryBloc = locator.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.materialYouAppBar(
        AppLocalizations.of(context)!.categoriesLabel,
      ),
      body: ScreenTypeLayout(
        breakpoints: const ScreenBreakpoints(
          tablet: 600,
          desktop: 700,
          watch: 300,
        ),
        mobile: CategoryListWidget(
          addCategoryBloc: addCategoryBloc,
          crossAxisCount: 2,
        ),
        tablet: CategoryListWidget(
          addCategoryBloc: addCategoryBloc,
          crossAxisCount: 3,
        ),
        desktop: CategoryListWidget(
          addCategoryBloc: addCategoryBloc,
          crossAxisCount: 5,
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () => context.goNamed(addCategoryPath),
        heroTag: 'add_category',
        key: const Key('add_category'),
        tooltip: AppLocalizations.of(context)!.addCategoryLabel,
        child: const Icon(Icons.add),
      ),
    );
  }
}
