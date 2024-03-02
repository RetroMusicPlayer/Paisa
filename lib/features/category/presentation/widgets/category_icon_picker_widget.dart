// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/constants/constants.dart';
import 'package:paisa/core/constants/icon_constants.dart';
import 'package:paisa/core/extensions/build_context_extension.dart';
import 'package:paisa/core/extensions/color_extension.dart';
import 'package:paisa/features/category/presentation/bloc/category_bloc.dart';

class CategoryIconPickerWidget extends StatelessWidget {
  const CategoryIconPickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      buildWhen: (previous, current) =>
          current is CategoryIconSelectedState ||
          current is CategorySuccessState,
      bloc: BlocProvider.of<CategoryBloc>(context),
      builder: (context, state) {
        IconData iconData = PaisaMdiIcons.home;
        if (state is CategoryIconSelectedState) {
          iconData = IconData(
            state.categoryIcon,
            fontFamily: fontFamilyName,
            fontPackage: fontFamilyPackageName,
          );
        }
        if (state is CategorySuccessState) {
          iconData = IconData(
            state.category.icon ?? 0,
            fontFamily: fontFamilyName,
            fontPackage: fontFamilyPackageName,
          );
        }

        return ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          title: Text(context.loc.selectIconTitle),
          subtitle: Text(context.loc.selectIconSubTitle),
          leading: Icon(
            iconData,
            color: context.primary,
          ),
          onTap: () async {
            final IconData? result =
                await const CategoryIconPickerPageData().push(context);
            if (result == null) return;
            if (context.mounted) {
              BlocProvider.of<CategoryBloc>(context)
                  .add(CategoryIconSelectedEvent(result.codePoint));
            }
          },
        );
      },
    );
  }
}
