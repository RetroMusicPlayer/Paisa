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
  PackageInfo? packageInfo;

  @override
  void initState() {
    super.initState();
    fetchDeviceInfo();
  }

  Future<void> fetchDeviceInfo() async {
    packageInfo = await PackageInfo.fromPlatform();
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (packageInfo == null) {
      return SettingsOption(
        icon: MdiIcons.numeric,
        title: context.loc.version,
      );
    }
    final version = packageInfo?.version ?? '';

    return SettingsOption(
      icon: MdiIcons.numeric,
      title: context.loc.version,
      subtitle: context.loc.versionNumber(version),
    );
  }
}
