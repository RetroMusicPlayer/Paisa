import 'package:paisa/features/debit/data/models/debit_model.dart';

class Debit extends DebitModel {
  Debit({
    required super.description,
    required super.name,
    required super.amount,
    required super.dateTime,
    required super.expiryDateTime,
    required super.debtType,
    super.superId,
  });
}
