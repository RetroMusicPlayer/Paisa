import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/data/data_manager.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/core/error/exceptions.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/domain/entities/debit_entity.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

@Singleton(as: DebitRepository)
class DebtRepositoryImpl extends DebitRepository {
  DebtRepositoryImpl(this.dataManager);

  final DataManager<DebitModel> dataManager;

  @override
  Future<Either<Failure, int>> add(
    String description,
    String name,
    double amount,
    DateTime currentDateTime,
    DateTime dueDateTime,
    DebitType debtType,
  ) async {
    try {
      final int id = await dataManager.add(
        DebitModel(
          description: description,
          amount: amount,
          dateTime: currentDateTime,
          expiryDateTime: dueDateTime,
          debtType: debtType,
          name: name,
        ),
      );
      return right(id);
    } on ItemNotAbleToAddException {
      return left(const Failure.itemNotAbleToAdd());
    }
  }

  @override
  Future<Either<Failure, void>> update({
    required String description,
    required String name,
    required double amount,
    required DateTime currentDateTime,
    required DateTime dueDateTime,
    required DebitType debtType,
    required int key,
  }) async {
    try {
      return right(await dataManager.update(DebitModel(
        description: description,
        name: name,
        amount: amount,
        dateTime: currentDateTime,
        expiryDateTime: dueDateTime,
        debtType: debtType,
        superId: key,
      )));
    } on UnableToUpdateException {
      return left(const Failure.unAbleToUpdate());
    }
  }

  @override
  Future<Either<Failure, DebitEntity>> fetchById(int? id) async {
    try {
      final DebitModel? result = await dataManager.findById(id);
      if (result == null) {
        return left(const Failure.itemNotFound());
      } else {
        return right(result.toEntity());
      }
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }

  @override
  Future<Either<Failure, void>> deleteById(int id) async {
    try {
      return right(await dataManager.deleteById(id));
    } on NotAbleToDeleteException {
      return left(const Failure.notAbleToDelete());
    }
  }

  @override
  Future<Either<Failure, List<DebitEntity>>> all() async {
    try {
      final List<DebitModel> result = await dataManager.all();
      if (result.isEmpty) {
        return left(const Failure.itemNotFound());
      } else {
        return right(result.toEntities());
      }
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }
}
