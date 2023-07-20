import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/home/presentation/controller/summary_controller.dart';
import 'package:paisa/features/home/presentation/pages/summary/widgets/expense_list_widget.dart';
import 'package:paisa/features/search/presentation/cubit/search_cubit.dart';
import 'package:paisa/main.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchCubit searchCubitCubit = getIt.get();
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: PaisaFilledCard(
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      border: InputBorder.none,
                      filled: false,
                      hintText: context.loc.search,
                    ),
                    controller: textEditingController,
                    onChanged: (value) {
                      searchCubitCubit.searchWithQuery(value);
                    },
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    final Map<String, dynamic> result =
                        await showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: true,
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width >= 700
                            ? 700
                            : double.infinity,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      builder: (context) {
                        return DraggableScrollableSheet(
                          initialChildSize: 0.4,
                          minChildSize: 0.2,
                          maxChildSize: 0.95,
                          expand: false,
                          builder: (context, scrollController) {
                            return FilterWidget(
                              scrollController,
                              selectedAccount:
                                  searchCubitCubit.selectedAccountId,
                              selectedCategory:
                                  searchCubitCubit.selectedCategoryId,
                            );
                          },
                        );
                      },
                    );
                    searchCubitCubit.selectedAccountId = result['account'];
                    searchCubitCubit.selectedCategoryId = result['category'];
                    searchCubitCubit
                        .searchWithQuery(textEditingController.text);
                  },
                  icon: Icon(
                    MdiIcons.filter,
                    color: context.onSurfaceVariant,
                  ),
                ),
                const SizedBox(width: 8)
              ],
            ),
          ),
        ),
      ),
      body: BlocBuilder(
        bloc: searchCubitCubit,
        builder: (context, state) {
          if (state is SearchResultState) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Result',
                      style: context.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ExpenseListWidget(
                    expenses: state.expenses,
                    summaryController: Provider.of<SummaryController>(context),
                  ),
                ],
              ),
            );
          } else if (state is SearchQueryEmptyState) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.search,
                    size: 72,
                  ),
                  Text(context.loc.searchMessage),
                ],
              ),
            );
          } else if (state is SearchEmptyState) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.sentiment_satisfied_rounded,
                    size: 72,
                  ),
                  Text(context.loc.emptySearchMessage),
                ],
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class FilterWidget extends StatefulWidget {
  const FilterWidget(
    this.scrollController, {
    super.key,
    required this.selectedAccount,
    required this.selectedCategory,
  });

  final ScrollController scrollController;
  final List<int> selectedAccount, selectedCategory;

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  late List<int> selectedAccount = widget.selectedAccount;
  late List<int> selectedCategory = widget.selectedCategory;

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: widget.scrollController,
      children: [
        ListTile(
          title: Text(
            'Filter',
            style: context.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            context.loc.selectAccount,
            style: context.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ValueListenableBuilder<Box<AccountModel>>(
          valueListenable: getIt.get<Box<AccountModel>>().listenable(),
          builder: (context, value, child) {
            final accounts = value.values.toEntities();
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 4.0,
                runSpacing: 8.0,
                children: List.generate(accounts.length, (index) {
                  final AccountEntity account = accounts[index];
                  final isSelected = selectedAccount.contains(account.superId);
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: FilterChip(
                      selected: isSelected,
                      onSelected: (value) {
                        setState(() {
                          if (isSelected) {
                            selectedAccount.remove(account.superId);
                          } else {
                            selectedAccount.add(account.superId!);
                          }
                        });
                      },
                      avatar: Icon(
                        color: isSelected
                            ? context.primary
                            : context.onSurfaceVariant,
                        IconData(
                          account.cardType!.icon.codePoint,
                          fontFamily: fontFamilyName,
                          fontPackage: fontFamilyPackageName,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                        side: BorderSide(
                          width: 1,
                          color: context.primary,
                        ),
                      ),
                      showCheckmark: false,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      label: Text(account.bankName ?? ''),
                      labelStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                              color: isSelected
                                  ? context.primary
                                  : Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant),
                      padding: const EdgeInsets.all(12),
                    ),
                  );
                }),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            context.loc.selectCategory,
            style: context.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ValueListenableBuilder<Box<CategoryModel>>(
          valueListenable: getIt.get<Box<CategoryModel>>().listenable(),
          builder: (context, value, child) {
            final List<CategoryEntity> categories = value.values.toEntities();

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 4.0,
                runSpacing: 8.0,
                children: List.generate(categories.length, (index) {
                  final CategoryEntity categoryEntity = categories[index];
                  final bool isSelected =
                      selectedCategory.contains(categoryEntity.superId);
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: FilterChip(
                      selected: isSelected,
                      onSelected: (value) {
                        setState(() {
                          if (isSelected) {
                            selectedCategory.remove(categoryEntity.superId);
                          } else {
                            selectedCategory.add(categoryEntity.superId!);
                          }
                        });
                      },
                      avatar: Icon(
                        color: isSelected
                            ? context.primary
                            : context.onSurfaceVariant,
                        IconData(
                          categoryEntity.icon ?? 0,
                          fontFamily: fontFamilyName,
                          fontPackage: fontFamilyPackageName,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                        side: BorderSide(
                          width: 1,
                          color: context.primary,
                        ),
                      ),
                      showCheckmark: false,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      label: Text(categoryEntity.name ?? ''),
                      labelStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                              color: isSelected
                                  ? context.primary
                                  : Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant),
                      padding: const EdgeInsets.all(12),
                    ),
                  );
                }),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PaisaTextButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    {
                      'account': [],
                      'category': [],
                    },
                  );
                },
                title: 'Clear',
              ),
              PaisaButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    {
                      'account': selectedAccount,
                      'category': selectedCategory,
                    },
                  );
                },
                title: 'Done',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
