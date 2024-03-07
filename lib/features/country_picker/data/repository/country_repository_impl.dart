import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/country_picker/data/data_source/local_country_data.dart';
import 'package:paisa/features/country_picker/data/models/country_model.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';
import 'package:paisa/features/country_picker/domain/repository/country_repository.dart';

@Singleton(as: CountryRepository)
class CountryRepositoryImpl implements CountryRepository {
  @override
  Future<Either<Failure, List<CountryEntity>>> fetchCountries() async {
    try {
      final List<CountryModel> models = List<CountryModel>.from(
              localCountriesData.map((x) => CountryModel.fromJson(x)))
          .sorted((a, b) => a.name.compareTo(b.name));

      return Right(models.toEntities());
    } catch (err) {
      return const Left(Failure.itemNotFound());
    }
  }
}
