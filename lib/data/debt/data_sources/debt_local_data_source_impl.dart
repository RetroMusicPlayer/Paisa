import 'package:hive/hive.dart';

import '../../../common/enum/box_types.dart';
import '../models/debt.dart';
import 'debt_local_data_source.dart';

class DebtLocalDataSourceImpl extends DebtLocalDataSource {
  late final debtBox = Hive.box<Debt>(BoxType.debts.stringValue);
  @override
  Future<void> addDebtOrCredit(Debt debt) async {
    final int id = await debtBox.add(debt);
    debt.superId = id;
    await debt.save();
  }

  @override
  Future<Debt?> fetchDebtOrCreditFromId(int debtId) async =>
      debtBox.get(debtId);
}
