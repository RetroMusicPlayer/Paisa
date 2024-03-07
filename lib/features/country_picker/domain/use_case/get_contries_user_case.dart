import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';
import 'package:paisa/features/country_picker/domain/repository/country_repository.dart';

@injectable
class GetCountriesUseCase implements UseCase<List<CountryEntity>, NoParams> {
  GetCountriesUseCase({required this.repository});

  final CountryRepository repository;

  @override
  Future<Either<Failure, List<CountryEntity>>> call(NoParams params) async {
    return repository.fetchCountries();
  }
}
