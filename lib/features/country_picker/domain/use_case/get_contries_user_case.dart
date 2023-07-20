import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/country_picker/data/models/country_model.dart';
import 'package:paisa/features/country_picker/domain/repository/country_repository.dart';

@injectable
class GetCountriesUseCase implements UseCase<List<CountryModel>, void> {
  GetCountriesUseCase({required this.repository});

  final CountryRepository repository;

  @override
  List<CountryModel> call({void params}) {
    return repository
        .fetchCountries()
        .sorted((a, b) => a.name.compareTo(b.name));
  }
}
