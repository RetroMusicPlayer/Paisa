import 'package:injectable/injectable.dart';
import 'package:paisa/features/settings/domain/repository/settings_repository.dart';

@singleton
class SettingsUseCase {
  SettingsUseCase(this.settingsRepository);

  final SettingsRepository settingsRepository;

  T get<T>(String key, {dynamic defaultValue}) =>
      settingsRepository.get<T>(key, defaultValue: defaultValue);

  Future<void> delete(String key) => settingsRepository.delete(key);

  Future<void> put(String key, dynamic value) =>
      settingsRepository.put(key, value);
}
