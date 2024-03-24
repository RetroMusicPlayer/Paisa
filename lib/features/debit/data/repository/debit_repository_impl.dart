// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/features/debit/data/data_sources/debit_local_data_source_impl.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/domain/entities/debit.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

@LazySingleton(as: DebitRepository)
class DebtRepositoryImpl extends DebitRepository {
  DebtRepositoryImpl({required this.dataSource});

  final DebtDataSource dataSource;

  @override
  Future<void> addDebtOrCredit(
    String description,
    String name,
    double amount,
    DateTime currentDateTime,
    DateTime dueDateTime,
    DebitType debtType,
  ) {
    return dataSource.addDebtOrCredit(
      DebitModel(
        description: description,
        amount: amount,
        dateTime: currentDateTime,
        expiryDateTime: dueDateTime,
        debtType: debtType,
        name: name,
      ),
    );
  }

  @override
  Future<void> deleteDebtOrCreditFromId(int debtId) {
    return dataSource.deleteDebtOrCreditFromId(debtId);
  }

  @override
  Future<DebitEntity?> fetchDebtOrCreditFromId(int debtId) async =>
      dataSource.fetchDebtOrCreditFromId(debtId)?.toEntity();

  @override
  Future<void> updateDebt({
    required String description,
    required String name,
    required double amount,
    required DateTime currentDateTime,
    required DateTime dueDateTime,
    required DebitType debtType,
    required int key,
  }) {
    return dataSource.update(DebitModel(
      description: description,
      name: name,
      amount: amount,
      dateTime: currentDateTime,
      expiryDateTime: dueDateTime,
      debtType: debtType,
      superId: key,
    ));
  }
}
