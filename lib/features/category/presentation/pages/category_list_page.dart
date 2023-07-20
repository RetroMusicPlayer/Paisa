import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/presentation/bloc/category_bloc.dart';
import 'package:paisa/features/category/presentation/pages/category_list_mobile_page.dart';
import 'package:paisa/features/category/presentation/pages/category_list_tablet_page.dart';
import 'package:paisa/main.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<CategoryBloc>();
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: Scaffold(
        body: ValueListenableBuilder<Box<CategoryModel>>(
          valueListenable: getIt.get<Box<CategoryModel>>().listenable(),
          builder: (BuildContext context, value, Widget? child) {
            final List<CategoryEntity> categories = value.values.toEntities();
            if (categories.isEmpty) {
              return EmptyWidget(
                title: context.loc.emptyCategoriesMessageTitle,
                description: context.loc.emptyCategoriesMessageSubTitle,
                icon: Icons.category,
              );
            }
            return ScreenTypeLayout(
              mobile: CategoryListMobileWidget(
                categories: categories,
              ),
              tablet: CategoryListTabletWidget(
                addCategoryBloc: bloc,
                crossAxisCount: 3,
                categories: categories,
              ),
              desktop: CategoryListTabletWidget(
                addCategoryBloc: bloc,
                crossAxisCount: 5,
                categories: categories,
              ),
            );
          },
        ),
      ),
    );
  }
}
