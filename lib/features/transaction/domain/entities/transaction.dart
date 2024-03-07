import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
part 'transaction.freezed.dart';

@freezed
class TransactionEntity with _$TransactionEntity {
  factory TransactionEntity({
    int? accountId,
    int? categoryId,
    AccountEntity? account,
    CategoryEntity? category,
    double? currency,
    String? description,
    String? name,
    int? superId,
    DateTime? time,
    TransactionType? type,
  }) = _TransactionEntity;
}
