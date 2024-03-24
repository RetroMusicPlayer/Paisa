// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

part 'add_debit_use.case.freezed.dart';

@lazySingleton
class AddDebitUseCase implements UseCase<void, ParamsAddDebit> {
  AddDebitUseCase({required this.debtRepository});

  final DebitRepository debtRepository;

  @override
  Future<void> call(ParamsAddDebit params) {
    return debtRepository.addDebtOrCredit(
      params.description,
      params.name,
      params.amount,
      params.currentDateTime,
      params.dueDateTime,
      params.debtType,
    );
  }
}

@freezed
class ParamsAddDebit with _$ParamsAddDebit {
  const factory ParamsAddDebit({
    required double amount,
    required DateTime currentDateTime,
    required DebitType debtType,
    required String description,
    required DateTime dueDateTime,
    required String name,
  }) = _ParamsAddDebit;
}
