import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:paisa/core/extensions/build_context_extension.dart';
import 'package:paisa/core/extensions/text_style_extension.dart';
import 'package:paisa/core/extensions/color_extension.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

import 'package:paisa/features/category/presentation/bloc/category_bloc.dart';
import 'package:paisa/features/category/presentation/widgets/category_icon_picker_widget.dart';
import 'package:paisa/features/category/presentation/widgets/color_picker_widget.dart';
import 'package:paisa/features/category/presentation/widgets/set_budget_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class AddCategoryPage extends StatefulWidget {
  const AddCategoryPage({
    Key? key,
    this.categoryId,
  }) : super(key: key);

  final String? categoryId;

  @override
  State<AddCategoryPage> createState() => _AddCategoryPageState();
}

class _AddCategoryPageState extends State<AddCategoryPage> {
  final TextEditingController budgetController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController descController = TextEditingController();
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
    BlocProvider.of<CategoryBloc>(context)
        .add(FetchCategoryFromIdEvent(widget.categoryId));
  }

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
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
              state.error,
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
              offset: state.category.name?.length ?? 0,
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

                      BlocProvider.of<CategoryBloc>(context)
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

                        BlocProvider.of<CategoryBloc>(context)
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
  final String? categoryId;

  const DeleteCategoryWidget({super.key, this.categoryId});
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
              text: BlocProvider.of<CategoryBloc>(context).categoryTitle,
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
          BlocProvider.of<CategoryBloc>(context)
              .add(CategoryDeleteEvent(categoryId!));

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
          onTap: () async {
            final defaultColor =
                BlocProvider.of<CategoryBloc>(context).selectedColor ??
                    Colors.red.value;
            final color =
                await paisaColorPicker(context, defaultColor: defaultColor);
            if (context.mounted) {
              BlocProvider.of<CategoryBloc>(context)
                  .add(CategoryColorSelectedEvent(color));
            }
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
              color: Color(
                  BlocProvider.of<CategoryBloc>(context).selectedColor ??
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
          title: Text(context.loc.transferCategory),
          value: BlocProvider.of<CategoryBloc>(context).isDefault ?? false,
          onChanged: (value) {
            setState(() {
              BlocProvider.of<CategoryBloc>(context).isDefault = value;
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
      onChanged: (value) =>
          BlocProvider.of<CategoryBloc>(context).categoryTitle = value,
      validator: (value) {
        if (value!.isNotEmpty) {
          return null;
        } else {
          return context.loc.validName;
        }
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
      onChanged: (value) =>
          BlocProvider.of<CategoryBloc>(context).categoryDesc = value,
    );
  }
}
