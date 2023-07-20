import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/features/category/data/model/category_model.dart';

final List<CategoryModel> defaultCategoriesData = [
  CategoryModel(
    icon: MdiIcons.cart.codePoint,
    name: 'Groceries',
    color: Colors.primaries[0].value,
  ),
  CategoryModel(
    icon: MdiIcons.silverware.codePoint,
    name: 'Dining',
    color: Colors.primaries[1].value,
  ),
  CategoryModel(
    icon: MdiIcons.trainCar.codePoint,
    name: 'Transportation',
    color: Colors.primaries[2].value,
  ),
  CategoryModel(
    icon: MdiIcons.medicalCottonSwab.codePoint,
    name: 'Health & Medical',
    color: Colors.primaries[3].value,
  ),
  CategoryModel(
    icon: MdiIcons.gamepadSquare.codePoint,
    name: 'Entertainment',
    color: Colors.primaries[4].value,
  ),
  CategoryModel(
    icon: MdiIcons.airplane.codePoint,
    name: 'Travel',
    color: Colors.primaries[5].value,
  ),
  CategoryModel(
    icon: MdiIcons.school.codePoint,
    name: 'Education',
    color: Colors.primaries[6].value,
  ),
  CategoryModel(
    icon: MdiIcons.hanger.codePoint,
    name: 'Clothing',
    color: Colors.primaries[7].value,
  ),
  CategoryModel(
    icon: MdiIcons.gift.codePoint,
    name: 'Gifts',
    color: Colors.primaries[8].value,
  ),
  CategoryModel(
    icon: MdiIcons.cashSync.codePoint,
    name: 'Subscription',
    color: Colors.primaries[9].value,
  ),
  CategoryModel(
    icon: MdiIcons.paw.codePoint,
    name: 'Pet Care',
    color: Colors.primaries[10].value,
  ),
  CategoryModel(
    icon: MdiIcons.accountChild.codePoint,
    name: 'Childcare',
    color: Colors.primaries[11].value,
  )
];
