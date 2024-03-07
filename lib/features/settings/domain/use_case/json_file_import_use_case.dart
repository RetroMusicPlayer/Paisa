import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/settings/domain/repository/import_export.dart';
import 'package:paisa/features/settings/domain/repository/settings_repository.dart';

@singleton
class JSONFileImportUseCase implements UseCase<bool, NoParams> {
  JSONFileImportUseCase(
    this.settingsRepository,
    @Named('json_import') this.jsonImport,
  );

  final Import jsonImport;
  final SettingsRepository settingsRepository;

  @override
  Future<Either<Failure, bool>> call(NoParams params) =>
      settingsRepository.importFileToData(import: jsonImport);
}
