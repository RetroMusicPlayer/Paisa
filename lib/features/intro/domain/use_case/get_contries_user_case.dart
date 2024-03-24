// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/intro/domain/entities/country_entity.dart';
import 'package:paisa/features/intro/domain/repository/country_repository.dart';

@injectable
class GetCountriesUseCase implements UseCase<List<CountryEntity>, NoParams> {
  GetCountriesUseCase({required this.repository});

  final CountryRepository repository;

  @override
  Future<List<CountryEntity>> call(NoParams params) async {
    final countries = await repository.fetchCountries();
    countries.sort((a, b) => a.name.compareTo(b.name));
    return countries;
  }
}
