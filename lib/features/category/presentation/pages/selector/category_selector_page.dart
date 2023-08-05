import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/core/constants/constants.dart';
import 'package:paisa/core/enum/box_types.dart';
import 'package:paisa/core/extensions/build_context_extension.dart';
import 'package:paisa/core/extensions/category_extension.dart';
import 'package:paisa/core/extensions/text_style_extension.dart';
import 'package:paisa/core/extensions/color_extension.dart';
import 'package:paisa/features/category/data/data_sources/default_category.dart';
import 'package:paisa/features/category/data/data_sources/local/category_data_source.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/main.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CategorySelectorPage extends StatefulWidget {
  const CategorySelectorPage({super.key});

  @override
  State<CategorySelectorPage> createState() => _CategorySelectorPageState();
}

class _CategorySelectorPageState extends State<CategorySelectorPage> {
  final LocalCategoryManager dataSource = getIt.get();
  final List<CategoryModel> defaultModels = defaultCategoriesData;
  final settings = getIt.get<Box<dynamic>>(instanceName: BoxType.settings.name);

  @override
  void initState() {
    super.initState();
    getIt.get<Box<CategoryModel>>().values.filterDefault.forEach((element) {
      defaultModels.removeWhere((element2) {
        return element2.name == element.name;
      });
    });
  }

  Future<void> saveAndNavigate() async {
    await settings.put(userCategorySelectorKey, false);
    if (mounted) {
      context.go(accountSelectorPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<CategoryModel>>(
      valueListenable: getIt.get<Box<CategoryModel>>().listenable(),
      builder: (context, value, child) {
        final List<CategoryModel> categoryModels =
            value.values.filterDefault.toList();
        return PaisaAnnotatedRegionWidget(
          color: context.background,
          child: Scaffold(
            appBar: context.materialYouAppBar(
              context.loc.categories,
              actions: [
                PaisaButton(
                  onPressed: saveAndNavigate,
                  title: context.loc.done,
                ),
                const SizedBox(width: 16)
              ],
            ),
            body: ListView(
              children: [
                ListTile(
                  title: Text(
                    context.loc.addedCategories,
                    style: context.titleMedium,
                  ),
                ),
                ScreenTypeLayout(
                  mobile: PaisaFilledCard(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const Divider(),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: categoryModels.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final CategoryModel model = categoryModels[index];
                        return CategoryItemWidget(
                          model: model,
                          onPress: () async {
                            await model.delete();
                            setState(() {
                              defaultModels.add(model);
                            });
                          },
                        );
                      },
                    ),
                  ),
                  tablet: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: categoryModels.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final CategoryModel model = categoryModels[index];
                      return CategoryItemWidget(
                        model: model,
                        onPress: () async {
                          await model.delete();
                          defaultModels.add(model);
                        },
                      );
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    context.loc.defaultCategories,
                    style: context.titleMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Wrap(
                    spacing: 12.0,
                    runSpacing: 12.0,
                    children: defaultModels
                        .map((model) => FilterChip(
                              label: Text(model.name ?? ''),
                              onSelected: (value) {
                                dataSource.add(model);
                                setState(() {
                                  defaultModels.remove(model);
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                                side: BorderSide(
                                  width: 1,
                                  color: context.primary,
                                ),
                              ),
                              showCheckmark: false,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              labelStyle: context.titleMedium,
                              padding: const EdgeInsets.all(12),
                              avatar: Icon(
                                IconData(
                                  model.icon ?? 0,
                                  fontFamily: fontFamilyName,
                                  fontPackage: fontFamilyPackageName,
                                ),
                                color: context.primary,
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.model,
    required this.onPress,
  });

  final CategoryModel model;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ListTile(
        onTap: onPress,
        leading: Icon(
          IconData(
            model.icon ?? 0,
            fontFamily: fontFamilyName,
            fontPackage: fontFamilyPackageName,
          ),
          color: Color(model.color ?? Colors.brown.shade200.value),
        ),
        title: Text(model.name ?? ''),
        trailing: Icon(MdiIcons.delete),
      ),
      tablet: PaisaCard(
        child: InkWell(
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(
                    IconData(
                      model.icon ?? 0,
                      fontFamily: fontFamilyName,
                      fontPackage: fontFamilyPackageName,
                    ),
                    color: Color(model.color ?? Colors.brown.shade200.value),
                  ),
                ),
                Expanded(
                  child: Text(
                    model.name ?? '',
                    style: context.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
