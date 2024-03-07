import 'package:dartz/dartz.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

abstract class CountryRepository {
  Future<Either<Failure, List<CountryEntity>>> fetchCountries();
}
