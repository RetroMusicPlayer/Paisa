import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../app/routes.dart';
import '../../../common/constants/extensions.dart';
import '../../../common/widgets/empty_widget.dart';
import '../../../data/accounts/model/account.dart';
import '../../../di/service_locator.dart';
import '../bloc/accounts_bloc.dart';
import '../widgets/account_transaction_widget.dart';
import '../widgets/accounts_page_view_widget.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({Key? key}) : super(key: key);

  @override
  AccountsPageState createState() => AccountsPageState();
}

class AccountsPageState extends State<AccountsPage> {
  final AccountsBloc accountsBloc = locator.get();

  void _addCard() => context.goNamed(addAccountPath);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => accountsBloc,
      child: ScreenTypeLayout(
        key: const Key('accounts'),
        mobile: Scaffold(
          key: const Key('accounts_mobile'),
          appBar: context.materialYouAppBar(
            AppLocalizations.of(context)!.accountsLabel,
          ),
          body: ValueListenableBuilder<Box<Account>>(
            valueListenable: locator.get<Box<Account>>().listenable(),
            builder: (_, value, __) {
              final List<Account> accounts = value.values.toList();
              if (accounts.isEmpty) {
                return EmptyWidget(
                  icon: Icons.credit_card,
                  title: AppLocalizations.of(context)!.errorNoCardsLabel,
                  description: AppLocalizations.of(context)!
                      .errorNoCardsDescriptionLabel,
                );
              }
              accountsBloc.add(AccountSelectedEvent(accounts[0]));
              return ListView(
                shrinkWrap: true,
                key: const Key('accounts_list_view'),
                padding: const EdgeInsets.only(bottom: 124),
                children: [
                  AccountPageViewWidget(accounts: accounts),
                  BlocBuilder(
                    bloc: accountsBloc,
                    buildWhen: (previous, current) =>
                        current is AccountSelectedState,
                    builder: (context, state) {
                      if (state is AccountSelectedState) {
                        return AccountTransactionWidget(account: state.account);
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                ],
              );
            },
          ),
          floatingActionButton: FloatingActionButton.large(
            onPressed: _addCard,
            heroTag: 'add_account',
            key: const Key('add_account'),
            tooltip: AppLocalizations.of(context)!.addAccountLabel,
            child: const Icon(Icons.add),
          ),
        ),
        tablet: Scaffold(
          appBar: context.materialYouAppBar(
            AppLocalizations.of(context)!.accountsLabel,
          ),
          body: ValueListenableBuilder<Box<Account>>(
            valueListenable: locator.get<Box<Account>>().listenable(),
            builder: (context, value, _) {
              final accounts = value.values.toList();
              if (accounts.isEmpty) {
                return EmptyWidget(
                  icon: Icons.credit_card,
                  title: AppLocalizations.of(context)!.errorNoCardsLabel,
                  description: AppLocalizations.of(context)!
                      .errorNoCardsDescriptionLabel,
                );
              }
              accountsBloc.add(AccountSelectedEvent(accounts[0]));
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: AccountPageViewWidget(
                      accounts: accounts,
                    ),
                  ),
                  Expanded(
                    child: BlocBuilder(
                      bloc: accountsBloc,
                      buildWhen: (previous, current) =>
                          current is AccountSelectedState,
                      builder: (context, state) {
                        if (state is AccountSelectedState) {
                          return AccountTransactionWidget(
                              account: state.account);
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ),
                ],
              );
            },
          ),
          floatingActionButton: FloatingActionButton.large(
            onPressed: _addCard,
            heroTag: 'add_account',
            key: const Key('add_account'),
            tooltip: AppLocalizations.of(context)!.addAccountLabel,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
