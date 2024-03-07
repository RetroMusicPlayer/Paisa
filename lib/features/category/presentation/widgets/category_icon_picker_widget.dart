import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/constants/constants.dart';
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
        int codePoint = MdiIcons.home.codePoint;
        if (state is CategoryIconSelectedState) {
          codePoint = state.icon;
        }
        if (state is CategorySuccessState) {
          codePoint = state.category.icon ?? 0;
        }
        return ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          title: Text(context.loc.selectIconTitle),
          subtitle: Text(context.loc.selectIconSubTitle),
          leading: Icon(
            IconData(
              codePoint,
              fontFamily: fontFamilyName,
              fontPackage: fontFamilyPackageName,
            ),
            color: context.primary,
          ),
          onTap: () async {
            final IconData? result =
                await context.pushNamed<IconData>(RoutesName.iconPicker.name);
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
