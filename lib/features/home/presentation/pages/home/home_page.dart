import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/home/presentation/bloc/home/home_bloc.dart';
import 'package:paisa/features/home/presentation/widgets/home_desktop_widget.dart';
import 'package:paisa/features/home/presentation/widgets/home_mobile_widget.dart';
import 'package:paisa/features/home/presentation/widgets/home_tablet_widget.dart';
import 'package:paisa/features/home/presentation/widgets/variable_size_fab.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/main.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

final destinations = [
  Destination(
    pageType: PageType.home,
    icon: const Icon(Icons.home_outlined),
    selectedIcon: const Icon(Icons.home),
  ),
  Destination(
    pageType: PageType.accounts,
    icon: const Icon(Icons.credit_card_outlined),
    selectedIcon: const Icon(Icons.credit_card),
  ),
  Destination(
    pageType: PageType.debts,
    icon: Icon(MdiIcons.accountCashOutline),
    selectedIcon: Icon(MdiIcons.accountCash),
  ),
  Destination(
    pageType: PageType.overview,
    icon: Icon(MdiIcons.sortVariant),
    selectedIcon: Icon(MdiIcons.sortVariant),
  ),
  Destination(
    pageType: PageType.category,
    icon: const Icon(Icons.category_outlined),
    selectedIcon: const Icon(Icons.category),
  ),
  Destination(
    pageType: PageType.budget,
    icon: Icon(MdiIcons.timetable),
    selectedIcon: Icon(MdiIcons.timetable),
  ),
  Destination(
    pageType: PageType.recurring,
    icon: Icon(MdiIcons.cashSync),
    selectedIcon: Icon(MdiIcons.cashSync),
  ),
];

class LandingPage extends StatelessWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  Future<void> _checkInApp(BuildContext context) async {
    final AppUpdateInfo updateInfo = await InAppUpdate.checkForUpdate();
    if (updateInfo.immediateUpdateAllowed) {
      final AppUpdateResult result = await InAppUpdate.performImmediateUpdate();
      if (context.mounted) {
        if (result == AppUpdateResult.inAppUpdateFailed) {
          context.showMaterialSnackBar('Update failed');
        } else if (result == AppUpdateResult.success) {
          context.showMaterialSnackBar('Update success');
        }
      }
    }
  }

  Future<void> _checkInAppReview() async {
    final isAvailable = await InAppReview.instance.isAvailable();
    if (isAvailable) {
      InAppReview.instance.requestReview();
    }
  }

  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);

    final actionButton =
        HomeFloatingActionButtonWidget(summaryController: getIt.get());
    return PaisaAnnotatedRegionWidget(
      child: TransactionsProviderWidget(
        child: WillPopScope(
          onWillPop: () async {
            if (homeBloc.selectedIndex == 0) {
              return true;
            }
            homeBloc.add(const CurrentIndexEvent(0));
            return false;
          },
          child: ScreenTypeLayout.builder(
            mobile: (p0) => HomeMobileWidget(
              floatingActionButton: actionButton,
              destinations: destinations,
            ),
            tablet: (p0) => HomeTabletWidget(
              floatingActionButton: actionButton,
              destinations: destinations,
            ),
            desktop: (p0) => HomeDesktopWidget(
              floatingActionButton: actionButton,
              destinations: destinations,
            ),
          ),
        ),
      ),
    );
  }
}

class Destination {
  Destination({
    required this.pageType,
    required this.icon,
    required this.selectedIcon,
  });

  final Icon icon;
  final PageType pageType;
  final Icon selectedIcon;
}

class TransactionsProviderWidget extends StatelessWidget {
  const TransactionsProviderWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<AccountModel>>(
      valueListenable: getIt.get<Box<AccountModel>>().listenable(),
      builder: (_, accountBox, __) {
        return ValueListenableBuilder<Box<CategoryModel>>(
          valueListenable: getIt.get<Box<CategoryModel>>().listenable(),
          builder: (_, categoryBox, __) {
            return ValueListenableBuilder<Box<TransactionModel>>(
              valueListenable: getIt.get<Box<TransactionModel>>().listenable(),
              builder: (_, value, __) {
                final Map<int, TransactionEntity> transactionMap = {
                  for (var e in value.values) e.superId ?? -1: e.toEntity()
                };
                final Map<int, AccountEntity> accountMap = {
                  for (var e in accountBox.values) e.superId ?? -1: e.toEntity()
                };
                final Map<int, CategoryEntity> categoryMap = {
                  for (var e in categoryBox.values)
                    e.superId ?? -1: e.toEntity()
                };
                final List<TransactionEntity> transactions = value.values
                    .map((e) => TransactionEntity(
                          account: accountMap[e.accountId],
                          category: categoryMap[e.categoryId],
                          categoryId: e.categoryId,
                          accountId: e.accountId,
                          currency: e.currency,
                          description: e.description,
                          name: e.name,
                          superId: e.superId,
                          time: e.time,
                          type: e.type,
                        ))
                    .toList();
                return MultiProvider(
                  providers: [
                    Provider.value(value: accountMap),
                    Provider.value(value: accountBox.values.toEntities()),
                    Provider.value(value: categoryMap),
                    Provider.value(value: transactions),
                    Provider.value(value: transactionMap),
                  ],
                  child: child,
                );
              },
            );
          },
        );
      },
    );
  }
}
