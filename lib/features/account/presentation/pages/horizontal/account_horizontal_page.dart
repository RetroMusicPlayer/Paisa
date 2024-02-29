// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/presentation/bloc/accounts_bloc.dart';
import 'package:paisa/features/account/presentation/pages/horizontal/accounts_mobile_page.dart';
import 'package:paisa/features/account/presentation/pages/horizontal/accounts_tablet_page.dart';

class AccountMobileHorizontalPage extends StatelessWidget {
  const AccountMobileHorizontalPage({
    super.key,
    required this.accounts,
  });

  final List<AccountEntity> accounts;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AccountBloc>(context)
        .add(AccountSelectedEvent(accounts.first));

    return ScreenTypeLayout.builder(
      mobile: (p0) => AccountsHorizontalMobilePage(accounts: accounts),
      tablet: (p0) => AccountsHorizontalTabletPage(accounts: accounts),
    );
  }
}
