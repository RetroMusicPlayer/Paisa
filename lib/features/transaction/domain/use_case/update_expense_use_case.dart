import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@singleton
class UpdateTransactionUseCase
    implements UseCase<void, UpdateTransactionParams> {
  UpdateTransactionUseCase({required this.expenseRepository});

  final TransactionRepository expenseRepository;

  @override
  Future<Either<Failure, void>> call(UpdateTransactionParams params) {
    return expenseRepository.update(
      params.superId,
      params.name,
      params.currency,
      params.time,
      params.categoryId,
      params.accountId,
      params.type ?? TransactionType.expense,
      params.description,
    );
  }
}

class UpdateTransactionParams {
  UpdateTransactionParams(
    this.superId, {
    this.accountId,
    this.categoryId,
    this.currency,
    this.description,
    this.name,
    this.time,
    this.type,
  });

  final int? accountId;
  final int? categoryId;
  final double? currency;
  final String? description;
  final String? name;
  final int superId;
  final DateTime? time;
  final TransactionType? type;
}
