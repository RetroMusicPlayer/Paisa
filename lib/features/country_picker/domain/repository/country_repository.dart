import 'package:paisa/features/country_picker/data/models/country_model.dart';

abstract class CountryRepository {
  List<CountryModel> fetchCountries();
}
