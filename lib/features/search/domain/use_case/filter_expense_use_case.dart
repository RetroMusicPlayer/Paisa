// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction_entity.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@lazySingleton
class SearchUseCase implements UseCase<List<TransactionEntity>, SearchParams> {
  SearchUseCase(this.expenseRepository);

  final TransactionRepository expenseRepository;

  @override
  Future<List<TransactionEntity>> call(SearchParams params) {
    return Future<List<TransactionEntity>>.value(
      expenseRepository.filterExpenses(
        params.query,
        params.accounts,
        params.categories,
      ),
    );
  }
}

class SearchParams {
  SearchParams({
    required this.query,
    required this.accounts,
    required this.categories,
  });

  final List<int> accounts;
  final List<int> categories;
  final String query;
}
