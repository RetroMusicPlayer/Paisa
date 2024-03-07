import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@singleton
class SearchUseCase implements UseCase<List<TransactionEntity>, SearchParams> {
  SearchUseCase(this.expenseRepository);

  final TransactionRepository expenseRepository;

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(SearchParams params) {
    return expenseRepository.filterExpenses(
      params.query,
      params.accounts,
      params.categories,
    );
  }
}

class SearchParams {
  final String query;
  final List<int> accounts;
  final List<int> categories;

  SearchParams({
    required this.query,
    required this.accounts,
    required this.categories,
  });
}
