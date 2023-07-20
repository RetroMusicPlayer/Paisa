import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

@singleton
class UpdateDebtUseCase implements UseCase<void, UpdateDebitParams> {
  UpdateDebtUseCase({required this.debtRepository});

  final DebtRepository debtRepository;
  @override
  Future<void> call({UpdateDebitParams? params}) {
    return debtRepository.updateDebt(
      description: params!.description,
      name: params.name,
      amount: params.amount,
      currentDateTime: params.currentDateTime,
      dueDateTime: params.dueDateTime,
      debtType: params.debtType,
      key: params.key,
    );
  }
}

class UpdateDebitParams extends Equatable {
  final String description;
  final String name;
  final double amount;
  final DateTime currentDateTime;
  final DateTime dueDateTime;
  final DebtType debtType;
  final int key;

  const UpdateDebitParams(
    this.key, {
    required this.description,
    required this.name,
    required this.amount,
    required this.currentDateTime,
    required this.dueDateTime,
    required this.debtType,
  });

  @override
  List<Object?> get props => [
        key,
        description,
        name,
        amount,
        currentDateTime,
        dueDateTime,
        debtType,
      ];
}
