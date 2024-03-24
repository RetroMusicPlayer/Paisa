// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/intro/domain/entities/country_entity.dart';
import 'package:paisa/features/intro/domain/repository/country_repository.dart';

part 'save_selected_country_use_case.freezed.dart';

@lazySingleton
class SaveSelectedCountryUseCase implements UseCase<void, ParamsSaveCountry> {
  final CountryRepository repository;

  SaveSelectedCountryUseCase({required this.repository});

  @override
  Future<void> call(ParamsSaveCountry params) {
    return repository.saveSelectedCountry(params.countryEntity);
  }
}

@freezed
class ParamsSaveCountry with _$ParamsSaveCountry {
  factory ParamsSaveCountry(CountryEntity countryEntity) = _ParamsSaveCountry;
}
