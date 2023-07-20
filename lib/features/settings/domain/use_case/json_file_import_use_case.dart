import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/settings/domain/repository/import_export.dart';
import 'package:paisa/features/settings/domain/repository/settings_repository.dart';

@singleton
class JSONFileImportUseCase {
  JSONFileImportUseCase(
    this.settingsRepository,
    @Named('json_import') this.jsonImport,
  );

  final Import jsonImport;
  final SettingsRepository settingsRepository;

  Future<Either<Failure, bool>> call() =>
      settingsRepository.importFileToData(import: jsonImport);
}
