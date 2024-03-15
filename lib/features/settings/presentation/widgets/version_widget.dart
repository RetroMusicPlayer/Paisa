// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/features/settings/presentation/widgets/setting_option.dart';

class VersionWidget extends StatefulWidget {
  const VersionWidget({super.key});

  @override
  State<VersionWidget> createState() => _VersionWidgetState();
}

class _VersionWidgetState extends State<VersionWidget> {
  ValueNotifier<PackageInfo?> packageInfoListenable = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    fetchDeviceInfo();
  }

  Future<void> fetchDeviceInfo() async {
    packageInfoListenable.value = await PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: packageInfoListenable,
      builder: (_, PackageInfo? packageInfo, Widget? child) {
        return (packageInfo == null)
            ? child!
            : SettingsOption(
                icon: MdiIcons.numeric,
                title: context.loc.version,
                subtitle: context.loc.versionNumber(packageInfo.version),
              );
      },
      child: SettingsOption(
        icon: MdiIcons.numeric,
        title: context.loc.version,
      ),
    );
  }
}
