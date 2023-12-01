import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/box_types.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/presentation/pages/horizontal/account_horizontal_page.dart';
import 'package:paisa/features/account/presentation/pages/vertical/account_vertical_page.dart';
import 'package:paisa/main.dart';

class AccountsPage extends StatelessWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<dynamic>>(
      valueListenable: getIt
          .get<Box<dynamic>>(instanceName: BoxType.settings.name)
          .listenable(keys: [userAccountsStyleKey]),
      builder: (_, settings, __) {
        return ValueListenableBuilder<Box<AccountModel>>(
          valueListenable: getIt.get<Box<AccountModel>>().listenable(),
          builder: (_, value, __) {
            final List<AccountEntity> accounts = value.toEntities();
            if (accounts.isEmpty) {
              return EmptyWidget(
                icon: Icons.credit_card,
                title: context.loc.emptyAccountMessageTitle,
                description: context.loc.emptyAccountMessageSubTitle,
              );
            }
            if (settings.get(userAccountsStyleKey, defaultValue: false)) {
              return AccountMobileHorizontalPage(accounts: accounts);
            } else {
              return AccountMobileVerticalPage(accounts: accounts);
            }
          },
        );
      },
    );
  }
}
