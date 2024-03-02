// Package imports:
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/features/search/domain/use_case/filter_expense_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';

part 'search_state.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchUseCase) : super(SearchInitial());

  final SearchUseCase searchUseCase;
  List<int> selectedAccountId = [], selectedCategoryId = [];

  void searchWithQuery(String query) {
    if (query.isEmpty) {
      return emit(SearchQueryEmptyState());
    }
    final List<TransactionEntity> expenses = searchUseCase(
      SearchParams(
        query: query,
        accounts: selectedAccountId,
        categories: selectedCategoryId,
      ),
    );
    if (expenses.isEmpty) {
      return emit(SearchEmptyState());
    }
    emit(SearchResultState(expenses));
  }
}
