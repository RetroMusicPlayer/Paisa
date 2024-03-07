import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit/domain/entities/debit_entity.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

@singleton
class GetDebitUseCase implements UseCase<DebitEntity, GetDebitParams> {
  GetDebitUseCase({required this.debtRepository});

  final DebitRepository debtRepository;

  @override
  Future<Either<Failure, DebitEntity>> call(GetDebitParams params) {
    return debtRepository.fetchById(params.debitId);
  }
}

class GetDebitParams extends Equatable {
  const GetDebitParams(this.debitId);

  final int debitId;

  @override
  List<Object?> get props => [debitId];
}
