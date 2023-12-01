import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes_name.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:paisa/features/transaction/presentation/widgets/selectable_item_widget.dart';
import 'package:paisa/main.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SelectedAccount extends StatelessWidget {
  const SelectedAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<AccountModel>>(
      valueListenable: getIt.get<Box<AccountModel>>().listenable(),
      builder: (context, value, child) {
        final accounts = value.values.toEntities();
        if (accounts.isEmpty) {
          return ListTile(
            onTap: () => context.pushNamed(RoutesName.addAccount.name),
            title: Text(context.loc.addAccountEmptyTitle),
            subtitle: Text(context.loc.addAccountEmptySubTitle),
            trailing: const Icon(Icons.keyboard_arrow_right),
          );
        }

        return ScreenTypeLayout.builder(
          tablet: (p0) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  context.loc.selectAccount,
                  style: context.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              AccountSelectedItem(
                accounts: accounts,
              )
            ],
          ),
          mobile: (p0) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  context.loc.selectAccount,
                  style: context.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              AccountSelectedItem(
                accounts: accounts,
              )
            ],
          ),
        );
      },
    );
  }
}

class AccountSelectedItem extends StatelessWidget {
  const AccountSelectedItem({
    Key? key,
    required this.accounts,
  }) : super(key: key);

  final List<AccountEntity> accounts;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      buildWhen: (previous, current) => current is ChangeAccountState,
      builder: (context, state) {
        return SizedBox(
          height: 160,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            scrollDirection: Axis.horizontal,
            shrinkWrap: false,
            itemCount: accounts.length + 1,
            itemBuilder: (_, index) {
              if (index == 0) {
                return ItemWidget(
                  color: context.secondary,
                  selected: false,
                  title: context.loc.addNew,
                  icon: MdiIcons.plus.codePoint,
                  onPressed: () =>
                      context.pushNamed(RoutesName.addAccount.name),
                );
              } else {
                final AccountEntity account = accounts[index - 1];
                return ItemWidget(
                  color: context.secondary,
                  selected: account.superId ==
                      BlocProvider.of<TransactionBloc>(context)
                          .selectedAccountId,
                  title: account.name ?? '',
                  icon: account.cardType!.icon.codePoint,
                  onPressed: () => BlocProvider.of<TransactionBloc>(context)
                      .add(TransactionEvent.changeAccount(account)),
                  subtitle: account.bankName,
                );
              }
            },
          ),
        );
      },
    );
  }
}
