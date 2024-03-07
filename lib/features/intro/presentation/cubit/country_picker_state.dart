part of 'country_picker_cubit.dart';

abstract class CountryPickerState extends Equatable {
  const CountryPickerState();

  @override
  List<Object> get props => [];
}

class CountryInitial extends CountryPickerState {}

class NavigateToLading extends CountryPickerState {
  const NavigateToLading(this.noNeedToSelect);

  final bool noNeedToSelect;

  @override
  List<Object> get props => [noNeedToSelect, identityHashCode(this)];
}

class CountriesState extends CountryPickerState {
  const CountriesState(this.countries);

  final List<CountryEntity> countries;

  @override
  List<Object> get props => [countries];
}
