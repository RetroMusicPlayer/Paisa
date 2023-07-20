import 'package:injectable/injectable.dart';
import 'package:paisa/features/country_picker/data/data_source/local_country_data.dart';
import 'package:paisa/features/country_picker/data/models/country_model.dart';
import 'package:paisa/features/country_picker/domain/repository/country_repository.dart';

@Singleton(as: CountryRepository)
class CountryRepositoryImpl implements CountryRepository {
  @override
  List<CountryModel> fetchCountries() {
    return List<CountryModel>.from(
        localCountriesData.map((x) => CountryModel.fromJson(x)));
  }
}
