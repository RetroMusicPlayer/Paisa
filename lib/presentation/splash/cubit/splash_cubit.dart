import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../common/enum/box_types.dart';
import '../../../data/local_auth/local_auth_api.dart';
import '../../../data/settings/settings_service.dart';
import '../../../di/service_locator.dart';
import '../../../main.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  late final settings = Hive.box(BoxType.settings.stringValue);
  final SettingsService service = locator.get();
  final LocalAuthApi localAuthApi = locator.get();

  void checkLogin() {
    final languageCode = settings.get(userLanguageKey, defaultValue: 'INR');
    if (languageCode == 'INR') {
      emit(CountryLocalesState(locales));
    } else {
      currentLocale = Locale(languageCode);
      _checkBiometric();
    }
  }

  void _checkBiometric() {
    service.biometric().then((value) {
      if (value) {
        _checkAuthentication();
      } else {
        _navigateToRespectivePage();
      }
    });
  }

  void _checkAuthentication() {
    localAuthApi.authenticate().then((value) {
      if (value) {
        _navigateToRespectivePage();
      } else {
        emit(BiometricErrorState());
      }
    });
  }

  void _navigateToRespectivePage() =>
      Future.delayed(const Duration(milliseconds: 400))
          .then((value) => emit(NavigateToHome()));

  void setSeledetdLocale(Locale locale) {
    settings
        .put(userLanguageKey, locale.languageCode)
        .then((value) => checkLogin());
  }
}

const Map<String, Locale> locales = {
  "US Doller": Locale('en'),
  "Indian Rupee": Locale('hi'),
  "Malaysia Ringgit": Locale('ms'),
  "Ukrainian Hryvnia": Locale('uk'),
  "Polish Złoty": Locale('pl'),
  "Austria Euro": Locale('de'),
  "Bangladesh Taka": Locale('bn'),
  "Indonesian Rupiah": Locale('id'),
  "Philippine Peso": Locale('ph'),
};
