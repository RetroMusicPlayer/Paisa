import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/constants/constants.dart';
import 'package:paisa/features/country_picker/data/models/country_model.dart';
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
  CountryModel? selectedCountry;
  final SettingsUseCase settingsUseCase;

  void checkForData() {
    final Map<dynamic, dynamic>? json = settingsUseCase.get(userCountryKey);
    if (json == null) {
      fetchCountry();
    } else {
      selectedCountry = CountryModel.fromJson(json);
      settingsUseCase
          .put(userCountryKey, selectedCountry!.toJson())
          .then((value) => emit(const NavigateToLading(false)));
    }
  }

  void fetchCountry() {
    List<CountryModel> countries = getCountryUseCase();
    emit(CountriesState(countries));
  }

  void filterCountry(String value) {
    List<CountryModel> countries = getCountryUseCase()
        .where(
          (element) =>
              element.name.toLowerCase().contains(value.toLowerCase()) ||
              element.code.toLowerCase().contains(value.toLowerCase()),
        )
        .toList();
    emit(CountriesState(countries));
  }

  void saveCountry() {
    if (selectedCountry == null) return;
    settingsUseCase.put(userCountryKey, selectedCountry!.toJson()).then(
        (value) => settingsUseCase
            .put(userLanguageKey, selectedCountry!.code)
            .then((value) => emit(const NavigateToLading(true))));
  }
}
