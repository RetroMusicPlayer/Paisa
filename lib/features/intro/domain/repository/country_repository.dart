// Project imports:
import 'package:paisa/features/intro/domain/entities/country_entity.dart';

abstract class CountryRepository {
  Future<List<CountryEntity>> fetchCountries();
  Future<CountryEntity?> fetchSelectedCountry();
  Future<void> saveSelectedCountry(CountryEntity entity);
}
