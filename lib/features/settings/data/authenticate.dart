import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@Singleton()
class Authenticate {
  final LocalAuthentication localAuth = LocalAuthentication();

  Future<bool> canCheckBiometrics() async {
    bool canCheckBiometrics = false;
    try {
      canCheckBiometrics = await localAuth.canCheckBiometrics;
    } on PlatformException catch (_) {
      canCheckBiometrics = false;
    }
    return canCheckBiometrics;
  }

  Future<List<BiometricType>> getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics = [];
    try {
      availableBiometrics = await localAuth.getAvailableBiometrics();
    } on PlatformException catch (_) {
      availableBiometrics = <BiometricType>[];
    }
    return availableBiometrics;
  }

  Future<bool> authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      authenticated = await localAuth.authenticate(
        localizedReason:
            'Scan your fingerprint (or face or whatever) to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
    } on PlatformException catch (_) {
      return false;
    }
    return authenticated;
  }

  Future<void> cancelAuthentication() async =>
      await localAuth.stopAuthentication();

  Future<bool> isDeviceSupported() => localAuth.isDeviceSupported();
}
