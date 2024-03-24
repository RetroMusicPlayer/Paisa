// Package imports:
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

part 'add_transaction_use_case.freezed.dart';

@lazySingleton
class AddTransactionUseCase
    implements UseCase<Either<Failure, bool>, AddTransactionParams> {
  AddTransactionUseCase({required this.expenseRepository});

  final TransactionRepository expenseRepository;
  @override
  Future<Either<Failure, bool>> call(AddTransactionParams params) {
    return expenseRepository.addExpense(
      name: params.name,
      amount: params.amount,
      time: params.time,
      categoryId: params.categoryId,
      accountId: params.accountId,
      transactionType: params.transactionType,
      description: params.description,
    );
  }
}

@freezed
class AddTransactionParams with _$AddTransactionParams {
  const factory AddTransactionParams({
    required String name,
    required DateTime time,
    required double amount,
    required int categoryId,
    required int accountId,
    String? description,
    @Default(TransactionType.expense) TransactionType transactionType,
  }) = _AddTransactionParams;
}
