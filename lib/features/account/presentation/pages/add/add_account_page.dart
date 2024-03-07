import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/error/bloc_errors.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/presentation/bloc/accounts_bloc.dart';
import 'package:paisa/features/account/presentation/widgets/card_type_drop_down.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';
import 'package:responsive_builder/responsive_builder.dart';

final GlobalKey<FormState> _form = GlobalKey<FormState>();

class AddAccountPage extends StatefulWidget {
  const AddAccountPage({
    Key? key,
    this.accountId,
  }) : super(key: key);

  final String? accountId;

  @override
  AddAccountPageState createState() => AddAccountPageState();
}

class AddAccountPageState extends State<AddAccountPage> {
  final TextEditingController accountHolderController = TextEditingController();
  final TextEditingController accountInitialAmountController =
      TextEditingController();
  final TextEditingController accountNameController = TextEditingController();
  late final bool isAccountAddOrUpdate = widget.accountId == null;

  @override
  void dispose() {
    accountHolderController.dispose();
    accountInitialAmountController.dispose();
    accountNameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    int? id = int.tryParse(widget.accountId ?? '');
    if (id != null) {
      BlocProvider.of<AccountBloc>(context).add(FetchAccountFromIdEvent(id));
    }
  }

  void _showInfo() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      context: context,
      builder: (context) {
        return SafeArea(
          maintainBottomViewPadding: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const Icon(Icons.info_rounded),
                title: Text(
                  context.loc.accountInformationTitle,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(context.loc.accountInformationSubTitle),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    child: Text(context.loc.ok),
                  ),
                ),
              ),
              const SizedBox(height: 10)
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: BlocConsumer<AccountBloc, AccountState>(
        listener: (context, state) {
          if (state is AccountAddedState) {
            context.showMaterialSnackBar(
              isAccountAddOrUpdate
                  ? context.loc.addedAccount
                  : context.loc.updateAccount,
              backgroundColor: context.primaryContainer,
              color: context.onPrimaryContainer,
            );
            context.pop();
          }
          if (state is AccountDeletedState) {
            context.showMaterialSnackBar(
              context.loc.deleteAccount,
              backgroundColor: context.error,
              color: context.onError,
            );
            context.pop();
          } else if (state is AccountErrorState) {
            context.showMaterialSnackBar(
              state.accountErrors.errorString(context),
              backgroundColor: context.errorContainer,
              color: context.onErrorContainer,
            );
          } else if (state is AccountSuccessState) {
            accountNameController.text = state.account.bankName ?? '';
            accountNameController.selection = TextSelection.collapsed(
                offset: state.account.bankName?.length ?? 0);

            accountHolderController.text = state.account.name ?? '';
            accountHolderController.selection = TextSelection.collapsed(
                offset: state.account.name?.length ?? 0);

            accountInitialAmountController.text =
                state.account.amount.toString();
            accountInitialAmountController.selection = TextSelection.collapsed(
                offset: state.account.amount.toString().length);
          }
        },
        builder: (context, state) {
          return ScreenTypeLayout.builder(
            mobile: (p0) => Scaffold(
              appBar: context.materialYouAppBar(
                isAccountAddOrUpdate
                    ? context.loc.addAccount
                    : context.loc.updateAccount,
                actions: [
                  DeleteAccountWidget(accountId: widget.accountId),
                  IconButton(
                    onPressed: _showInfo,
                    icon: const Icon(Icons.info_rounded),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: CardTypeButtons(),
                    ),
                    Form(
                      key: _form,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const SizedBox(height: 16),
                            AccountCardHolderNameWidget(
                              controller: accountHolderController,
                            ),
                            const SizedBox(height: 16),
                            AccountNameWidget(
                              controller: accountNameController,
                            ),
                            const SizedBox(height: 16),
                            AccountInitialAmountWidget(
                              controller: accountInitialAmountController,
                            ),
                            const SizedBox(height: 16),
                            const AccountDefaultSwitchWidget(),
                            const AccountExcludedSwitchWidget(),
                            const AccountColorPickerWidget(),
                            const AccountCountrySelectorWidget()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: PaisaBigButton(
                    onPressed: () {
                      final isValid = _form.currentState!.validate();
                      if (!isValid) {
                        return;
                      }
                      BlocProvider.of<AccountBloc>(context)
                          .add(AddOrUpdateAccountEvent(isAccountAddOrUpdate));
                    },
                    title: isAccountAddOrUpdate
                        ? context.loc.add
                        : context.loc.update,
                  ),
                ),
              ),
            ),
            tablet: (p0) => Scaffold(
              appBar: context.materialYouAppBar(
                isAccountAddOrUpdate
                    ? context.loc.addAccount
                    : context.loc.updateAccount,
                actions: [
                  IconButton(
                    onPressed: _showInfo,
                    icon: const Icon(Icons.info_rounded),
                  ),
                  DeleteAccountWidget(accountId: widget.accountId),
                  PaisaButton(
                    onPressed: () {
                      final isValid = _form.currentState!.validate();
                      if (!isValid) {
                        return;
                      }
                      BlocProvider.of<AccountBloc>(context)
                          .add(AddOrUpdateAccountEvent(isAccountAddOrUpdate));
                    },
                    title: isAccountAddOrUpdate
                        ? context.loc.add
                        : context.loc.update,
                  ),
                  const SizedBox(width: 16),
                ],
              ),
              body: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Form(
                        key: _form,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const CardTypeButtons(),
                              const SizedBox(height: 16),
                              AccountCardHolderNameWidget(
                                controller: accountHolderController,
                              ),
                              const SizedBox(height: 16),
                              AccountNameWidget(
                                controller: accountNameController,
                              ),
                              const SizedBox(height: 16),
                              AccountInitialAmountWidget(
                                controller: accountInitialAmountController,
                              ),
                              const SizedBox(height: 16),
                              const AccountDefaultSwitchWidget(),
                              const AccountExcludedSwitchWidget(),
                              const AccountColorPickerWidget()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class AccountColorPickerWidget extends StatelessWidget {
  const AccountColorPickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return ListTile(
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onTap: () async {
            final color = await paisaColorPicker(
              context,
              defaultColor:
                  BlocProvider.of<AccountBloc>(context).selectedColor ??
                      Colors.red.value,
            );
            if (context.mounted) {
              BlocProvider.of<AccountBloc>(context)
                  .add(AccountColorSelectedEvent(color));
            }
          },
          leading: Icon(
            Icons.color_lens,
            color: context.primary,
          ),
          title: Text(context.loc.pickColor),
          subtitle: Text(context.loc.pickColorAccountDesc),
          trailing: Container(
            margin: const EdgeInsets.only(right: 12),
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(
                  BlocProvider.of<AccountBloc>(context).selectedColor ??
                      Colors.red.value),
            ),
          ),
        );
      },
    );
  }
}

class DeleteAccountWidget extends StatelessWidget {
  const DeleteAccountWidget({super.key, this.accountId});

  final String? accountId;

  void onPressed(BuildContext context) {
    paisaAlertDialog(
      context,
      title: Text(context.loc.dialogDeleteTitle),
      child: RichText(
        text: TextSpan(
          text: context.loc.deleteAccount,
          style: context.bodyMedium,
          children: [
            TextSpan(
              text: BlocProvider.of<AccountBloc>(context).accountName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      confirmationButton: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        onPressed: () {
          int? id = int.tryParse(accountId ?? '');
          if (id == null) {
            return;
          }
          BlocProvider.of<AccountBloc>(context).add(DeleteAccountEvent(id));
        },
        child: Text(context.loc.delete),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (accountId == null) {
      return const SizedBox.shrink();
    }
    return ScreenTypeLayout.builder(
      mobile: (p0) => IconButton(
        onPressed: () => onPressed(context),
        icon: Icon(
          Icons.delete_rounded,
          color: context.error,
        ),
      ),
      tablet: (p0) => PaisaTextButton(
        onPressed: () => onPressed(context),
        title: context.loc.delete,
      ),
    );
  }
}

class AccountCardHolderNameWidget extends StatelessWidget {
  const AccountCardHolderNameWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return PaisaTextFormField(
          controller: controller,
          hintText: context.loc.enterCardHolderName,
          keyboardType: TextInputType.name,
          inputFormatters: [
            FilteringTextInputFormatter.singleLineFormatter,
          ],
          onChanged: (value) =>
              BlocProvider.of<AccountBloc>(context).accountHolderName = value,
        );
      },
    );
  }
}

class AccountNameWidget extends StatelessWidget {
  const AccountNameWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return PaisaTextFormField(
          controller: controller,
          hintText: context.loc.enterAccountName,
          keyboardType: TextInputType.name,
          inputFormatters: [
            FilteringTextInputFormatter.singleLineFormatter,
          ],
          onChanged: (value) =>
              BlocProvider.of<AccountBloc>(context).accountName = value,
        );
      },
    );
  }
}

class AccountInitialAmountWidget extends StatelessWidget {
  const AccountInitialAmountWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PaisaTextFormField(
      controller: controller,
      hintText: context.loc.enterAmount,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (_) {}
          return oldValue;
        }),
      ],
      onChanged: (value) {
        double? amount = double.tryParse(value);
        BlocProvider.of<AccountBloc>(context).initialAmount = amount;
      },
    );
  }
}

class AccountDefaultSwitchWidget extends StatelessWidget {
  const AccountDefaultSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      buildWhen: (previous, current) =>
          current is AccountSuccessState ||
          current is UpdateAccountExcludeState,
      builder: (context, state) {
        bool isEnabled = false;
        if (state is AccountSuccessState) {
          isEnabled = state.account.isAccountDefault ?? false;
        } else if (state is UpdateAccountExcludeState) {
          isEnabled = state.isAccountDefault;
        }
        return SwitchListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          title: Text(context.loc.defaultAccount),
          value: isEnabled,
          onChanged: (value) {
            BlocProvider.of<AccountBloc>(context)
                .add(AccountsEvent.updateDefaultAndExculde(
              isAccountDefault: value,
              isAccountExcluded:
                  BlocProvider.of<AccountBloc>(context).isAccountExcluded,
            ));
          },
        );
      },
    );
  }
}

class AccountExcludedSwitchWidget extends StatelessWidget {
  const AccountExcludedSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      buildWhen: (previous, current) =>
          current is AccountSuccessState ||
          current is UpdateAccountExcludeState,
      builder: (context, state) {
        bool isEnabled = false;
        if (state is AccountSuccessState) {
          isEnabled = state.account.isAccountExcluded ?? false;
        } else if (state is UpdateAccountExcludeState) {
          isEnabled = state.isAccountExcluded;
        }
        return SwitchListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          title: Text(context.loc.excludeAccount),
          value: isEnabled,
          onChanged: (value) {
            BlocProvider.of<AccountBloc>(context)
                .add(AccountsEvent.updateDefaultAndExculde(
              isAccountDefault:
                  BlocProvider.of<AccountBloc>(context).isAccountDefault,
              isAccountExcluded: value,
            ));
          },
        );
      },
    );
  }
}

class AccountCountrySelectorWidget extends StatefulWidget {
  const AccountCountrySelectorWidget({super.key});

  @override
  State<AccountCountrySelectorWidget> createState() =>
      _AccountCountrySelectorWidgetState();
}

class _AccountCountrySelectorWidgetState
    extends State<AccountCountrySelectorWidget> {
  String? symbol;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AccountBloc>(context)
        .add(const AccountsEvent.fetchCountries());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        final List<CountryEntity> countries = [];
        if (state is CountriesState) {
          countries.addAll(state.countries);
        }
        CountryEntity? country =
            BlocProvider.of<AccountBloc>(context).currencySymbol;
        if (state is AccountSuccessState) {
          country =
              BlocProvider.of<AccountBloc>(context).currentAccount?.country;
        }
        if (country != null) {
          symbol = '${country.name} - ${country.code}';
        }
        return ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: EdgeInsets.zero,
          onTap: () async {
            final CountryEntity? result =
                await showModalBottomSheet<CountryEntity>(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              context: context,
              isScrollControlled: true,
              builder: (context) => DraggableScrollableSheet(
                expand: false,
                initialChildSize: 1,
                minChildSize: 1,
                maxChildSize: 1,
                builder: (context, scrollController) {
                  return Scaffold(
                    appBar: AppBar(
                      titleSpacing: 0,
                      leading: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                      title: Text(context.loc.selectCurrency),
                    ),
                    body: ListView.builder(
                      shrinkWrap: true,
                      controller: scrollController,
                      itemCount: countries.length,
                      itemBuilder: (context, index) {
                        final CountryEntity country = countries[index];
                        return ListTile(
                          onTap: () {
                            Navigator.pop(context, country);
                          },
                          title: Text(country.name),
                          subtitle: Text(country.code),
                          leading: Text(
                            country.symbol ?? '\$',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            );

            if (result != null) {
              symbol = '${result.name} - ${result.code}';
              setState(() {});
              if (context.mounted) {
                BlocProvider.of<AccountBloc>(context).currencySymbol = result;
              }
            }
          },
          leading: const Icon(Icons.currency_rupee_outlined),
          title: Text(context.loc.selectCurrency),
          subtitle: symbol == null ? null : Text(symbol ?? ''),
        );
      },
    );
  }
}
