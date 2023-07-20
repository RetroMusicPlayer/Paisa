import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/use_case/category_use_case.dart';
import 'package:paisa/features/settings/domain/use_case/setting_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/features/transaction/domain/use_case/expense_use_case.dart';
import 'package:share_plus/share_plus.dart';

import 'package:paisa/core/common.dart';

part 'settings_state.dart';

const expenseFixKey = "expense_fix_key";

@injectable
class SettingCubit extends Cubit<SettingsState> {
  SettingCubit(
    this.expensesUseCase,
    this.defaultCategoriesUseCase,
    this.updateExpensesUseCase,
    this.jsonFileImportUseCase,
    this.jsonFileExportUseCase,
    this.settingsUseCase,
    this.csvFileExportUseCase,
  ) : super(SettingsInitial());

  final GetDefaultCategoriesUseCase defaultCategoriesUseCase;
  final GetExpensesUseCase expensesUseCase;

  final UpdateExpensesUseCase updateExpensesUseCase;
  final JSONFileImportUseCase jsonFileImportUseCase;
  final JSONFileExportUseCase jsonFileExportUseCase;
  final CSVFileExportUseCase csvFileExportUseCase;
  final SettingsUseCase settingsUseCase;

  void fixExpenses() async {
    if (settingsUseCase.get(expenseFixKey, defaultValue: true)) {
      emit(FixExpenseLoading());
      final List<CategoryEntity> categories = defaultCategoriesUseCase();
      if (categories.isEmpty) {
        return emit(FixExpenseError());
      }
      final List<Transaction> expenses = expensesUseCase()
          .where((element) => element.categoryId == -1)
          .toList();

      for (var element in expenses) {
        element.categoryId = categories.first.superId!;
        await updateExpensesUseCase(element);
      }
      await settingsUseCase.put(expenseFixKey, false);
      emit(FixExpenseDone());
    }
  }

  void shareFile() {
    jsonFileExportUseCase().then((fileExport) => fileExport.fold(
          (failure) => emit(ImportFileError(mapFailureToMessage(failure))),
          (path) => Share.shareXFiles(
            [XFile(path)],
            subject: 'Share',
          ),
        ));
  }

  void shareCSVFile() {
    csvFileExportUseCase().then((fileExport) => fileExport.fold(
          (failure) => emit(ImportFileError(mapFailureToMessage(failure))),
          (path) => Share.shareXFiles(
            [XFile(path)],
            subject: 'Share',
          ),
        ));
  }

  void importDataFromJson() {
    emit(ImportFileLoading());
    jsonFileImportUseCase().then((fileImport) => fileImport.fold(
          (failure) => emit(ImportFileError(mapFailureToMessage(failure))),
          (r) => emit(ImportFileSuccessState()),
        ));
  }

  int? get defaultAccountId => settingsUseCase.get(defaultAccountIdKey);

  dynamic setDefaultAccountId(int accountId) =>
      settingsUseCase.put(defaultAccountIdKey, accountId);
}
