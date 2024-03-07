import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/settings/domain/repository/import_export.dart';
import 'package:paisa/features/settings/domain/repository/settings_repository.dart';

@singleton
class JSONFileExportUseCase implements UseCase<String, NoParams> {
  JSONFileExportUseCase(
    this.settingsRepository,
    @Named('json_export') this.jsonExport,
  );

  final Export jsonExport;
  final SettingsRepository settingsRepository;

  @override
  Future<Either<Failure, String>> call(NoParams params) =>
      settingsRepository.exportDataToFile(export: jsonExport);
}
