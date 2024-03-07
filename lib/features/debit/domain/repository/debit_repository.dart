import 'package:dartz/dartz.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/debit/domain/entities/debit_entity.dart';

abstract class DebitRepository {
  Future<Either<Failure, int>> add(
    String description,
    String name,
    double amount,
    DateTime currentDateTime,
    DateTime dueDateTime,
    DebitType debtType,
  );

  Future<Either<Failure, void>> update({
    required String description,
    required String name,
    required double amount,
    required DateTime currentDateTime,
    required DateTime dueDateTime,
    required DebitType debtType,
    required int key,
  });

  Future<Either<Failure, DebitEntity>> fetchById(int? id);

  Future<Either<Failure, void>> deleteById(int id);

  Future<Either<Failure, List<DebitEntity>>> all();
}
