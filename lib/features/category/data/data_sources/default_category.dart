// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Project imports:
import 'package:paisa/features/category/data/model/category_model.dart';

List<CategoryModel> defaultCategoriesData() => [
      CategoryModel(
        icon: MdiIcons.cart.codePoint,
        name: 'Groceries',
        color: Colors.primaries.elementAtOrNull(0)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.silverware.codePoint,
        name: 'Dining',
        color: Colors.primaries.elementAtOrNull(1)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.trainCar.codePoint,
        name: 'Transportation',
        color: Colors.primaries.elementAtOrNull(2)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.medicalCottonSwab.codePoint,
        name: 'Health & Medical',
        color: Colors.primaries.elementAtOrNull(3)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.gamepadSquare.codePoint,
        name: 'Entertainment',
        color: Colors.primaries.elementAtOrNull(4)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.airplane.codePoint,
        name: 'Travel',
        color: Colors.primaries.elementAtOrNull(5)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.school.codePoint,
        name: 'Education',
        color: Colors.primaries.elementAtOrNull(6)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.hanger.codePoint,
        name: 'Clothing',
        color: Colors.primaries.elementAtOrNull(7)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.gift.codePoint,
        name: 'Gifts',
        color: Colors.primaries.elementAtOrNull(8)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.cashSync.codePoint,
        name: 'Subscription',
        color: Colors.primaries.elementAtOrNull(9)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.paw.codePoint,
        name: 'Pet Care',
        color: Colors.primaries.elementAtOrNull(10)!.value,
      ),
      CategoryModel(
        icon: MdiIcons.accountChild.codePoint,
        name: 'Childcare',
        color: Colors.primaries.elementAtOrNull(11)!.value,
      ),
    ];
