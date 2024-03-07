import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

@singleton
class AddDebitUseCase implements UseCase<void, ParamsAddDebit> {
  AddDebitUseCase({required this.debtRepository});

  final DebitRepository debtRepository;

  @override
  Future<Either<Failure, void>> call(ParamsAddDebit params) {
    return debtRepository.add(
      params.description,
      params.name,
      params.amount,
      params.currentDateTime,
      params.dueDateTime,
      params.debtType,
    );
  }
}

class ParamsAddDebit extends Equatable {
  const ParamsAddDebit({
    required this.description,
    required this.name,
    required this.amount,
    required this.currentDateTime,
    required this.dueDateTime,
    required this.debtType,
  });

  final double amount;
  final DateTime currentDateTime;
  final DebitType debtType;
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
