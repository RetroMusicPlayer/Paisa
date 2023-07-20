import 'package:dartz/dartz.dart';
import 'package:paisa/core/error/failures.dart';

import 'import_export.dart';

abstract class SettingsRepository {
  Future<Either<Failure, String>> exportDataToFile({required Export export});

  Future<Either<Failure, bool>> importFileToData({required Import import});

  T get<T>(String key, {dynamic defaultValue});

  Future<void> put(String key, dynamic value);

  Future<void> delete(String key);
}
