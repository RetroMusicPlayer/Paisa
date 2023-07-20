import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

@singleton
class AddDebtUseCase implements UseCase<Future<void>, AddDebit> {
  AddDebtUseCase({required this.debtRepository});

  final DebtRepository debtRepository;

  @override
  Future<void> call({AddDebit? params}) {
    return debtRepository.addDebtOrCredit(
      params!.description,
      params.name,
      params.amount,
      params.currentDateTime,
      params.dueDateTime,
      params.debtType,
    );
  }
}

class AddDebit extends Equatable {
  const AddDebit({
    required this.description,
    required this.name,
    required this.amount,
    required this.currentDateTime,
    required this.dueDateTime,
    required this.debtType,
  });

  final double amount;
  final DateTime currentDateTime;
  final DebtType debtType;
  final String description;
  final DateTime dueDateTime;
  final String name;

  @override
  List<Object?> get props => [
        description,
        name,
        amount,
        currentDateTime,
        dueDateTime,
        debtType,
      ];
}
