import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../core/common.dart';
import '../../widgets/paisa_icon_picker.dart';
import '../bloc/category_bloc.dart';

class SelectIconWidget extends StatelessWidget {
  const SelectIconWidget({super.key});

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
          codePoint = state.categoryIcon;
        }
        if (state is CategorySuccessState) {
          codePoint = state.category.icon;
        }
        return ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          title: Text(context.loc.selectIconLabel),
          subtitle: Text(context.loc.selectIconDescLabel),
          leading: Icon(
            IconData(
              codePoint,
              fontFamily: 'Material Design Icons',
              fontPackage: 'material_design_icons_flutter',
            ),
            color: Theme.of(context).colorScheme.primary,
          ),
          onTap: () async {
            await showIconPicker(
              context: context,
              defaultIcon: IconData(
                codePoint,
                fontFamily: 'Material Design Icons',
                fontPackage: 'material_design_icons_flutter',
              ),
              onSelectedIcon: (iconData) =>
                  BlocProvider.of<CategoryBloc>(context)
                      .add(CategoryIconSelectedEvent(iconData.codePoint)),
            );
          },
        );
      },
    );
  }
}
