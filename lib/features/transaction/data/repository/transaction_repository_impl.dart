import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/data/data_manager.dart';
import 'package:paisa/core/error/exceptions.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/transaction/data/data_sources/local/transaction_data_manager.dart';
import 'package:paisa/features/transaction/data/model/search_query.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/repository/transaction_repository.dart';

@Singleton(as: TransactionRepository)
class ExpenseRepositoryImpl implements TransactionRepository {
  ExpenseRepositoryImpl(
    this.dataManager,
    this.transactionDataManager,
    this.categoryDataManager,
    this.accountDataManager,
  );

  final LocalTransactionManager transactionDataManager;
  final DataManager<TransactionModel> dataManager;
  final DataManager<CategoryModel> categoryDataManager;
  final DataManager<AccountModel> accountDataManager;
  @override
  Future<Either<Failure, int>> add(
    String? name,
    double? amount,
    DateTime? time,
    int? category,
    int? account,
    TransactionType? transactionType,
    String? description,
  ) async {
    try {
      final int id = await dataManager.add(
        TransactionModel(
          name: name,
          currency: amount,
          time: time,
          categoryId: category,
          accountId: account,
          type: transactionType,
          description: description,
        ),
      );
      return right(id);
    } on ItemNotAbleToAddException {
      return left(const Failure.itemNotAbleToAdd());
    }
  }

  @override
  Future<Either<Failure, void>> clear() async {
    try {
      return right(await dataManager.clear());
    } on CannotClearException {
      return left(const Failure.cannotClear());
    }
  }

  @override
  Future<Either<Failure, void>> deleteByAccountId(int accountId) async {
    try {
      return right(transactionDataManager.deleteByAccountId(accountId));
    } on UnableToUpdateException {
      return left(const Failure.notAbleToDelete());
    }
  }

  @override
  Future<Either<Failure, void>> deleteByCategoryId(int categoryId) async {
    try {
      return right(transactionDataManager.deleteByCategoryId(categoryId));
    } on UnableToUpdateException {
      return left(const Failure.notAbleToDelete());
    }
  }

  @override
  Future<Either<Failure, void>> delete(int expenseId) async {
    try {
      return right(await dataManager.deleteById(expenseId));
    } on NotAbleToDeleteException {
      return left(const Failure.notAbleToDelete());
    }
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> fetchByAccountId(
      int accountId) async {
    try {
      final List<TransactionModel> result =
          transactionDataManager.findByAccountId(accountId);
      if (result.isEmpty) {
        return left(const Failure.empty());
      } else {
        return right(result.toEntities());
      }
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> fetchByCategoryId(
      int accountId) async {
    try {
      final List<TransactionModel> result =
          transactionDataManager.findByCategoryId(accountId);
      if (result.isEmpty) {
        return left(const Failure.itemNotFound());
      } else {
        return right(result.toEntities());
      }
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }

  @override
  Future<Either<Failure, TransactionEntity>> fetchById(int expenseId) async {
    try {
      final TransactionModel? result = await dataManager.findById(expenseId);
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
  Future<Either<Failure, List<TransactionEntity>>> filterExpenses(
      String query, List<int> accounts, List<int> categories) async {
    try {
      final List<TransactionModel> result =
          transactionDataManager.filterExpenses(SearchQuery(
        query: query,
        accounts: accounts,
        categories: categories,
      ));
      return right(result.toEntities());
    } on ItemNotFoundException {
      return left(const Failure.itemNotFound());
    }
  }

  @override
  Future<Either<Failure, void>> update(
    int key,
    String? name,
    double? currency,
    DateTime? time,
    int? categoryId,
    int? accountId,
    TransactionType? transactionType,
    String? description,
  ) async {
    try {
      return right(await dataManager.update(
        TransactionModel(
          name: name,
          currency: currency,
          time: time,
          categoryId: categoryId,
          accountId: accountId,
          type: transactionType,
          description: description,
          superId: key,
        ),
      ));
    } on UnableToUpdateException {
      return left(const Failure.unAbleToUpdate());
    }
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> all() async {
    try {
      final List<TransactionModel> models = await dataManager.all();
      final List<AccountModel> accountModels = await accountDataManager.all();
      final Map<int, AccountModel> accountMap = {
        for (var e in accountModels) e.superId!: e
      };
      final List<CategoryModel> categoryModel = await categoryDataManager.all();
      final Map<int, CategoryModel> categoryMap = {
        for (var e in categoryModel) e.superId!: e
      };

      final List<TransactionEntity> transactions = models
          .map((e) => TransactionEntity(
                account: accountMap[e.accountId]?.toEntity(),
                category: categoryMap[e.categoryId]?.toEntity(),
                categoryId: e.categoryId,
                accountId: e.accountId,
                currency: e.currency,
                description: e.description,
                name: e.name,
                superId: e.superId,
                time: e.time,
                type: e.type,
              ))
          .toList();
      return right(transactions);
    } on UnableToUpdateException {
      return left(const Failure.itemNotFound());
    }
  }
}
