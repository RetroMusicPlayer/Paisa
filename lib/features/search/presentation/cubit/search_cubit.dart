import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/search/domain/use_case/filter_expense_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';

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
    searchUseCase(
      SearchParams(
        query: query,
        accounts: selectedAccountId,
        categories: selectedCategoryId,
      ),
    ).then((transactionsFold) {
      final List<TransactionEntity> expenses = transactionsFold.asRight();
      if (expenses.isEmpty) {
        return emit(SearchEmptyState());
      } else {
        emit(SearchResultState(expenses));
      }
    });
  }
}
