import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/settings/domain/repository/import_export.dart';
import 'package:paisa/features/settings/domain/repository/settings_repository.dart';

@singleton
class JSONFileExportUseCase {
  JSONFileExportUseCase(
    this.settingsRepository,
    @Named('json_export') this.jsonExport,
  );

  final Export jsonExport;
  final SettingsRepository settingsRepository;

  Future<Either<Failure, String>> call() =>
      settingsRepository.exportDataToFile(export: jsonExport);
}
