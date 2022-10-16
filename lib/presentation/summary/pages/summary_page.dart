import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../app/routes.dart';
import '../../../common/constants/extensions.dart';
import '../../goal/widget/color_palette.dart';
import '../../home/widgets/welcome_widget.dart';
import '../../search/pages/search_page.dart';
import '../../settings/widgets/user_profile_widget.dart';
import '../widgets/expense_history_widget.dart';
import '../widgets/expense_total_widget.dart';
import '../widgets/welcome_name_widget.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchPage(),
              );
            },
          ),
          backgroundColor: Colors.transparent,
          actions: [
            GestureDetector(
              onLongPress: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ColorPalette()));
              }),
              onTap: () => showModalBottomSheet(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width >= 700
                      ? 700
                      : double.infinity,
                ),
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                context: context,
                builder: (_) => const UserProfilePage(),
              ),
              child: const WelcomeWidget(),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 128),
            children: const [
              WelcomeNameWidget(),
              ExpenseTotalWidget(),
              ExpenseHistory(),
            ],
          ),
        ),
        floatingActionButton: floatingActionButton(),
      ),
      tablet: Scaffold(
        appBar: context.materialYouAppBar(
          '',
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: SearchPage(),
                );
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    WelcomeNameWidget(),
                    ExpenseTotalWidget(),
                  ],
                ),
              ),
              const Expanded(
                child: SingleChildScrollView(child: ExpenseHistory()),
              ),
            ],
          ),
        ),
        floatingActionButton: floatingActionButton(),
      ),
      desktop: Scaffold(
        appBar: context.materialYouAppBar(
          '',
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: SearchPage(),
                );
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: const [
                    ExpenseTotalWidget(),
                  ],
                ),
              ),
              const Expanded(
                child: SingleChildScrollView(child: ExpenseHistory()),
              ),
            ],
          ),
        ),
        floatingActionButton: floatingActionButton(),
      ),
    );
  }

  FloatingActionButton floatingActionButton() {
    return FloatingActionButton.large(
      onPressed: _addExpense,
      tooltip: AppLocalizations.of(context)!.addExpenseLabel,
      heroTag: 'add_expense',
      key: const Key('add_expense'),
      child: const Icon(Icons.add),
    );
  }

  void _addExpense() async => context.push('/landing/$addExpensePath');
}
