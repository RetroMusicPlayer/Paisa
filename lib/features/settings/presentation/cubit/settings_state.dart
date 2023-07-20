part of 'settings_cubit.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

class SettingsInitial extends SettingsState {}

class ImportFileSuccessState extends SettingsState {}

class ImportFileLoading extends SettingsState {}

class DataExportState extends SettingsState {}

class ImportFileError extends SettingsState {
  const ImportFileError(this.error);

  final String error;

  @override
  List<Object> get props => [error];
}

class FixExpenseLoading extends SettingsState {}

class FixExpenseDone extends SettingsState {}

class FixExpenseError extends SettingsState {}
