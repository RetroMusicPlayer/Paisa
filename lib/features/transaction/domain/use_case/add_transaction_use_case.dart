import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@singleton
class AddTransactionUseCase implements UseCase<int, AddTransactionParams> {
  AddTransactionUseCase({required this.expenseRepository});

  final TransactionRepository expenseRepository;

  @override
  Future<Either<Failure, int>> call(AddTransactionParams params) {
    return expenseRepository.add(
      params.name,
      params.amount,
      params.time,
      params.categoryId,
      params.accountId,
      params.transactionType,
      params.description,
    );
  }
}

class AddTransactionParams {
  final String? name;
  final double? amount;
  final DateTime? time;
  final int? categoryId;
  final int? accountId;
  final TransactionType? transactionType;
  final String? description;

  AddTransactionParams({
    required this.name,
    required this.amount,
    required this.time,
    required this.categoryId,
    required this.accountId,
    required this.transactionType,
    required this.description,
  });
}
