import 'package:paisa/core/common.dart';
import 'package:paisa/features/country_picker/data/models/country_model.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

extension MapHelper on Map<dynamic, dynamic>? {
  Map<String, dynamic>? toMap() {
    return this?.map((key, value) => MapEntry(key.toString(), value));
  }

  CountryEntity toCountryEntity() {
    return CountryModel.fromJson(toMap() ?? {}).toEntity();
  }
}
