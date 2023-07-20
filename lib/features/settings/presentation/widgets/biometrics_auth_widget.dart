import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/future_resolve.dart';
import 'package:paisa/features/settings/data/authenticate.dart';
import 'package:paisa/features/settings/domain/use_case/setting_use_case.dart';
import 'package:paisa/main.dart';

class BiometricAuthWidget extends StatefulWidget {
  const BiometricAuthWidget({
    super.key,
    required this.authenticate,
  });

  final Authenticate authenticate;

  @override
  State<BiometricAuthWidget> createState() => _BiometricAuthWidgetState();
}

class _BiometricAuthWidgetState extends State<BiometricAuthWidget> {
  final SettingsUseCase settingsUseCase = getIt.get();
  late bool isSelected = settingsUseCase.get(userAuthKey, defaultValue: false);

  void _showSnackBar(bool result) => settingsUseCase
      .put(userAuthKey, result)
      .then((value) => ScaffoldMessenger.maybeOf(context)?.showSnackBar(
            SnackBar(
              content: Text(
                result ? 'Authenticated' : 'Not authenticated',
                style: TextStyle(
                  color: context.onPrimaryContainer,
                ),
              ),
              behavior: SnackBarBehavior.floating,
              backgroundColor: context.primaryContainer,
            ),
          ));

  @override
  Widget build(BuildContext context) {
    return FutureResolve<List<bool>>(
      future: Future.wait([
        widget.authenticate.isDeviceSupported(),
        widget.authenticate.canCheckBiometrics()
      ]),
      builder: (supported) {
        return Visibility(
          visible: supported.every((element) => element),
          child: Column(
            children: [
              SwitchListTile(
                secondary: Icon(MdiIcons.fingerprint),
                title: Text(context.loc.localApp),
                subtitle: Text(context.loc.lockAppDescription),
                onChanged: (bool value) async {
                  bool isAuthenticated = false;
                  if (value) {
                    isAuthenticated =
                        await widget.authenticate.authenticateWithBiometrics();
                  }
                  setState(() {
                    isSelected = value && isAuthenticated;
                  });
                  _showSnackBar(isSelected);
                },
                value: isSelected,
              ),
              const Divider(),
            ],
          ),
        );
      },
    );
  }
}
