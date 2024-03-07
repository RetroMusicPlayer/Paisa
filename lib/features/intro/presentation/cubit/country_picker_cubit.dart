import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/constants/constants.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';
import 'package:paisa/features/country_picker/domain/use_case/get_contries_user_case.dart';
import 'package:paisa/features/settings/domain/use_case/setting_use_case.dart';

part 'country_picker_state.dart';

@injectable
class CountryPickerCubit extends Cubit<CountryPickerState> {
  CountryPickerCubit(
    this.getCountryUseCase,
    this.settingsUseCase,
  ) : super(CountryInitial());

  final GetCountriesUseCase getCountryUseCase;
  CountryEntity? selectedCountry;
  final SettingsUseCase settingsUseCase;

  void checkForData() {
    final json = settingsUseCase.get(userCountryKey);
    if (json == null) {
      fetchCountry();
    } else {
      selectedCountry = CountryEntity.fromJson(json);
      settingsUseCase
          .put(userCountryKey, json)
          .then((value) => emit(const NavigateToLading(false)));
    }
  }

  void fetchCountry() {
    getCountryUseCase(NoParams()).then((value) {
      value.fold((l) => null, (r) {
        emit(CountriesState(r));
      });
    });
  }

  void filterCountry(String value) {
    getCountryUseCase(NoParams()).then((countriesFold) {
      countriesFold.fold((l) => null, (r) {
        final List<CountryEntity> countries = r
            .where(
              (element) =>
                  element.name.toLowerCase().contains(value.toLowerCase()) ||
                  element.code.toLowerCase().contains(value.toLowerCase()),
            )
            .toList();
        emit(CountriesState(countries));
      });
    });
  }

  void saveCountry() {
    if (selectedCountry == null) return;
    settingsUseCase.put(userCountryKey, selectedCountry!.toJson()).then(
        (value) => settingsUseCase
            .put(userLanguageKey, selectedCountry!.code)
            .then((value) => emit(const NavigateToLading(true))));
  }
}
