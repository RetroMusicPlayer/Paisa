// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:paisa/core/extensions/build_context_extension.dart';
import 'package:paisa/core/extensions/color_extension.dart';
import 'package:paisa/core/extensions/text_style_extension.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/category/presentation/bloc/category_bloc.dart';
import 'package:paisa/features/category/presentation/widgets/category_icon_picker_widget.dart';
import 'package:paisa/features/category/presentation/widgets/color_picker_widget.dart';
import 'package:paisa/features/category/presentation/widgets/set_budget_widget.dart';
import 'package:paisa/main.dart';

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class CategoryPage extends StatefulWidget {
  const CategoryPage({
    super.key,
    this.categoryId,
  });

  final int? categoryId;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final budgetController = TextEditingController();
  final CategoryBloc categoryBloc = getIt<CategoryBloc>();
  final categoryController = TextEditingController();
  final descController = TextEditingController();
  late final bool isAddCategory = widget.categoryId == null;

  @override
  void dispose() {
    budgetController.dispose();
    categoryController.dispose();
    descController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    categoryBloc.add(FetchCategoryFromIdEvent(widget.categoryId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => categoryBloc,
      child: BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) {
          if (state is CategoryAddedState) {
            context.showMaterialSnackBar(
              isAddCategory
                  ? context.loc.successAddCategory
                  : context.loc.updatedCategory,
              backgroundColor: context.primaryContainer,
              color: context.onPrimaryContainer,
            );
            context.pop();
          } else if (state is CategoryErrorState) {
            context.showMaterialSnackBar(
              state.errorString,
              backgroundColor: context.errorContainer,
              color: context.onErrorContainer,
            );
          } else if (state is CategoryDeletedState) {
            context.showMaterialSnackBar(
              context.loc.deletedCategory,
              backgroundColor: context.error,
              color: context.onError,
            );
            context.pop();
          } else if (state is CategorySuccessState) {
            budgetController.text = state.category.budget.toString();
            budgetController.selection = TextSelection.collapsed(
              offset: state.category.budget.toString().length,
            );

            categoryController.text = state.category.name ?? '';
            categoryController.selection = TextSelection.collapsed(
              offset: state.category.name.length ?? 0,
            );

            descController.text = state.category.description ?? '';
            descController.selection = TextSelection.collapsed(
              offset: state.category.description?.length ?? 0,
            );
          }
        },
        builder: (context, state) {
          return ScreenTypeLayout.builder(
            mobile: (p0) => Scaffold(
              appBar: context.materialYouAppBar(
                isAddCategory
                    ? context.loc.addCategory
                    : context.loc.updateCategory,
                actions: [
                  DeleteCategoryWidget(categoryId: widget.categoryId),
                ],
              ),
              body: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const SizedBox(height: 16),
                            CategoryNameWidget(controller: categoryController),
                            const SizedBox(height: 16),
                            CategoryDescriptionWidget(
                              controller: descController,
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                      const CategoryIconPickerWidget(),
                      const CategoryColorWidget(),
                      SetBudgetWidget(controller: budgetController),
                      const TransferCategoryWidget(),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: PaisaBigButton(
                    onPressed: () {
                      final isValid = _formKey.currentState!.validate();
                      if (!isValid) {
                        return;
                      }

                      context
                          .read<CategoryBloc>()
                          .add(AddOrUpdateCategoryEvent(isAddCategory));
                    },
                    title: isAddCategory ? context.loc.add : context.loc.update,
                  ),
                ),
              ),
            ),
            tablet: (p0) => Scaffold(
              appBar: context.materialYouAppBar(
                  isAddCategory
                      ? context.loc.addCategory
                      : context.loc.updateCategory,
                  actions: [
                    DeleteCategoryWidget(categoryId: widget.categoryId),
                    PaisaButton(
                      onPressed: () {
                        final isValid = _formKey.currentState!.validate();
                        if (!isValid) {
                          return;
                        }

                        context
                            .read<CategoryBloc>()
                            .add(AddOrUpdateCategoryEvent(isAddCategory));
                      },
                      title:
                          isAddCategory ? context.loc.add : context.loc.update,
                    ),
                    const SizedBox(width: 16),
                  ]),
              body: Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const CategoryIconPickerWidget(),
                          const ColorPickerWidget(),
                          SetBudgetWidget(controller: budgetController),
                        ],
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CategoryNameWidget(controller: categoryController),
                          const SizedBox(height: 16),
                          CategoryDescriptionWidget(controller: descController),
                          const SizedBox(height: 16),
                          const TransferCategoryWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DeleteCategoryWidget extends StatelessWidget {
  const DeleteCategoryWidget({super.key, this.categoryId});

  final int? categoryId;

  void onPressed(BuildContext context) {
    paisaAlertDialog(
      context,
      title: Text(context.loc.dialogDeleteTitle),
      child: RichText(
        text: TextSpan(
          text: context.loc.deleteAccount,
          style: context.bodyMedium,
          children: [
            TextSpan(
              text: context.read<CategoryBloc>().categoryTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      confirmationButton: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        onPressed: () {
          context.read<CategoryBloc>().add(CategoryDeleteEvent(categoryId!));
          Navigator.pop(context);
        },
        child: Text(context.loc.delete),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (categoryId == null) {
      return const SizedBox.shrink();
    }
    return ScreenTypeLayout.builder(
      mobile: (p0) => IconButton(
        onPressed: () => onPressed(context),
        icon: Icon(
          Icons.delete_rounded,
          color: context.error,
        ),
      ),
      tablet: (p0) => PaisaTextButton(
        onPressed: () => onPressed(context),
        title: context.loc.delete,
      ),
    );
  }
}

class CategoryColorWidget extends StatelessWidget {
  const CategoryColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onTap: () {
            paisaColorPicker(context,
                    defaultColor: context.read<CategoryBloc>().selectedColor ??
                        Colors.red.value)
                .then((color) {
              context
                  .read<CategoryBloc>()
                  .add(CategoryColorSelectedEvent(color));
            });
          },
          leading: Icon(
            Icons.color_lens,
            color: context.primary,
          ),
          title: Text(context.loc.pickColor),
          subtitle: Text(context.loc.pickColorDesc),
          trailing: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(context.read<CategoryBloc>().selectedColor ??
                  Colors.red.value),
            ),
          ),
        );
      },
    );
  }
}

class TransferCategoryWidget extends StatefulWidget {
  const TransferCategoryWidget({super.key});

  @override
  State<TransferCategoryWidget> createState() => _TransferCategoryWidgetState();
}

class _TransferCategoryWidgetState extends State<TransferCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return SwitchListTile(
          secondary: Icon(
            MdiIcons.swapHorizontal,
            color: context.primary,
          ),
          subtitle: Text(context.loc.transferCategorySubtitle),
          title: Text(context.loc.transferCategory),
          value: context.read<CategoryBloc>().isDefault ?? false,
          onChanged: (value) {
            setState(() {
              context.read<CategoryBloc>().isDefault = value;
            });
          },
        );
      },
    );
  }
}

class CategoryNameWidget extends StatelessWidget {
  const CategoryNameWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PaisaTextFormField(
      controller: controller,
      hintText: context.loc.enterCategory,
      keyboardType: TextInputType.name,
      onChanged: (value) => context.read<CategoryBloc>().categoryTitle = value,
      validator: (value) {
        return value!.isNotEmpty ? null : context.loc.validName;
      },
    );
  }
}

class CategoryDescriptionWidget extends StatelessWidget {
  const CategoryDescriptionWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PaisaTextFormField(
      controller: controller,
      hintText: context.loc.enterDescription,
      keyboardType: TextInputType.name,
      onChanged: (value) => context.read<CategoryBloc>().categoryDesc = value,
    );
  }
}
