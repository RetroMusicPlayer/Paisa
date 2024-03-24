// Package imports:
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/settings/domain/repository/import_export.dart';
import 'package:paisa/features/settings/domain/repository/settings_repository.dart';

@lazySingleton
class JSONFileExportUseCase
    implements UseCase<Future<Either<Failure, String>>, NoParams> {
  JSONFileExportUseCase(
    this.settingsRepository,
    @Named('json_export') this.jsonExport,
  );

  final Export jsonExport;
  final SettingsRepository settingsRepository;
// double future again?
  @override
  Future<Future<Either<Failure, String>>> call(NoParams params) async {
    final export = jsonExport;
    return settingsRepository.exportDataToFile(export: export);
  }
}
