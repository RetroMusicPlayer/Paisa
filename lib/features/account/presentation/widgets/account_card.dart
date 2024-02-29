// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:glassmorphism/glassmorphism.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';

class AccountCard extends StatefulWidget {
  const AccountCard({
    super.key,
    required this.totalBalance,
    required this.cardHolder,
    required this.bankName,
    required this.cardType,
    required this.income,
    required this.expense,
    this.onDelete,
    this.onTap,
  });

  final String bankName;
  final String cardHolder;
  final CardType cardType;
  final String income, expense;
  final VoidCallback? onDelete;
  final VoidCallback? onTap;
  final String totalBalance;

  @override
  State<AccountCard> createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => MobileAccountCard(
        bankName: widget.bankName,
        cardHolder: widget.cardHolder,
        totalBalance: widget.totalBalance,
        cardType: widget.cardType,
        onDelete: widget.onDelete,
        onTap: widget.onTap,
        expense: widget.expense,
        income: widget.income,
      ),
      tablet: (p0) => TabletAccountCard(
        bankName: widget.bankName,
        cardHolder: widget.cardHolder,
        cardNumber: widget.totalBalance,
        cardType: widget.cardType,
        onDelete: widget.onDelete,
        onTap: widget.onTap,
        expense: widget.expense,
        income: widget.income,
      ),
      desktop: (p0) => DesktopAccountCard(
        bankName: widget.bankName,
        cardHolder: widget.cardHolder,
        cardNumber: widget.totalBalance,
        cardType: widget.cardType,
        onDelete: widget.onDelete,
        onTap: widget.onTap,
        expense: widget.expense,
        income: widget.income,
      ),
    );
  }
}

class MobileAccountCard extends StatelessWidget {
  const MobileAccountCard({
    super.key,
    required this.totalBalance,
    required this.cardHolder,
    required this.bankName,
    required this.cardType,
    this.onDelete,
    this.onTap,
    required this.income,
    required this.expense,
  });

  final String bankName;
  final String cardHolder;
  final CardType cardType;
  final String income, expense;
  final VoidCallback? onDelete;
  final VoidCallback? onTap;
  final String totalBalance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GlassmorphicContainer(
          height: 260,
          width: MediaQuery.sizeOf(context).width,
          borderRadius: 24,
          blur: 25,
          alignment: Alignment.bottomCenter,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              context.titleMedium!.color!.withOpacity(0.1),
              context.titleMedium!.color!.withOpacity(0.05),
            ],
            stops: const [0.1, 1],
          ),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              context.titleMedium!.color!.withOpacity(0.5),
              context.titleMedium!.color!.withOpacity(0.5),
            ],
          ),
          border: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                minVerticalPadding: 10,
                title: Text(bankName),
                subtitle: Text(cardHolder),
                leading: Icon(cardType.icon),
                trailing: onDelete != null
                    ? GestureDetector(
                        onTap: onDelete,
                        child: Icon(
                          Icons.delete,
                          color: context.onSurface,
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
              ListTile(
                minVerticalPadding: 10,
                title: Text(
                  context.loc.totalBalance,
                  style: context.bodyMedium,
                ),
                subtitle: Text(
                  totalBalance,
                  style: context.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: AccountSummaryTail(
                      title: context.loc.income,
                      subtitle: income,
                    ),
                  ),
                  Expanded(
                    child: AccountSummaryTail(
                      title: context.loc.expense,
                      subtitle: expense,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountSummaryTail extends StatelessWidget {
  const AccountSummaryTail({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        title,
        style: context.bodyMedium?.copyWith(
          color: Theme.of(context)
              .colorScheme
              .onSecondaryContainer
              .withOpacity(0.75),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: context.titleMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class TabletAccountCard extends StatelessWidget {
  const TabletAccountCard({
    super.key,
    required this.cardNumber,
    required this.cardHolder,
    required this.bankName,
    required this.cardType,
    this.onDelete,
    this.onTap,
    required this.income,
    required this.expense,
  });

  final String bankName;
  final String cardHolder;
  final String cardNumber;
  final CardType cardType;
  final String income, expense;
  final VoidCallback? onDelete;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GlassmorphicContainer(
          height: 260,
          width: MediaQuery.sizeOf(context).width / 2,
          borderRadius: 24,
          blur: 20,
          alignment: Alignment.bottomCenter,
          border: 2,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              context.titleMedium!.color!.withOpacity(0.1),
              context.titleMedium!.color!.withOpacity(0.05),
            ],
            stops: const [0.1, 1],
          ),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              context.titleMedium!.color!.withOpacity(0.5),
              context.titleMedium!.color!.withOpacity(0.5),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                title: Text(bankName.toUpperCase()),
                subtitle: Text(cardHolder.toUpperCase()),
                leading: Icon(cardType.icon),
                trailing: onDelete != null
                    ? GestureDetector(
                        onTap: onDelete,
                        child: Icon(
                          Icons.delete,
                          color: context.onSurface,
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.loc.totalBalance,
                          style: context.titleSmall,
                        ),
                        Text(
                          cardNumber,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  bottom: 16.0,
                  right: 16.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.loc.income,
                            style: context.bodySmall?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer
                                  .withOpacity(0.75),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            income,
                            style: context.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.loc.expense,
                            style: context.bodySmall?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer
                                  .withOpacity(0.75),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            expense,
                            style: context.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DesktopAccountCard extends StatelessWidget {
  const DesktopAccountCard({
    super.key,
    required this.cardNumber,
    required this.cardHolder,
    required this.bankName,
    required this.cardType,
    this.onDelete,
    this.onTap,
    required this.income,
    required this.expense,
  });

  final String bankName;
  final String cardHolder;
  final String cardNumber;
  final CardType cardType;
  final String income, expense;
  final VoidCallback? onDelete;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GlassmorphicContainer(
          height: 240,
          width: MediaQuery.sizeOf(context).width / 2,
          borderRadius: 24,
          blur: 10,
          alignment: Alignment.bottomCenter,
          border: 2,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              context.titleMedium!.color!.withOpacity(0.1),
              context.titleMedium!.color!.withOpacity(0.05),
            ],
            stops: const [0.1, 1],
          ),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              context.titleMedium!.color!.withOpacity(0.5),
              context.titleMedium!.color!.withOpacity(0.5),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                horizontalTitleGap: 0,
                title: Text(bankName.toUpperCase()),
                subtitle: Text(cardHolder.toUpperCase()),
                leading: Icon(cardType.icon),
                trailing: onDelete != null
                    ? GestureDetector(
                        onTap: onDelete,
                        child: Icon(
                          Icons.delete,
                          color: context.onSurface,
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(context.loc.totalBalance),
                        Text(
                          cardNumber,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  bottom: 16.0,
                  right: 16.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.loc.income,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer
                                      .withOpacity(0.75),
                                ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            income,
                            style: context.titleSmall,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.loc.expense,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer
                                      .withOpacity(0.75),
                                ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            expense,
                            style: context.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
