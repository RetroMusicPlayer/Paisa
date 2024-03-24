// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/intro/domain/entities/country_entity.dart';
import 'package:paisa/features/intro/domain/repository/country_repository.dart';

@lazySingleton
class GetSelectedCountryUseCase implements UseCase<CountryEntity?, NoParams> {
  final CountryRepository repository;

  GetSelectedCountryUseCase({required this.repository});
  @override
  Future<CountryEntity?> call(NoParams params) async {
    return repository.fetchSelectedCountry();
  }
}
