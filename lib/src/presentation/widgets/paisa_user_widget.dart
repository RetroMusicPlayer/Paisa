import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../di/module/work.dart';
import 'package:workmanager/workmanager.dart';

import '../../../main.dart';
import '../../core/enum/box_types.dart';
import '../home/bloc/home_bloc.dart';
import '../home/widgets/welcome_widget.dart';
import '../settings/widgets/user_profile_widget.dart';
import 'color_palette.dart';

class PaisaUserWidget extends StatelessWidget {
  const PaisaUserWidget({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onDoubleTap: () {
          Workmanager().registerPeriodicTask(
            'task_name_1',
            periodicTaskName,
            frequency: const Duration(minutes: 15),
          );
        },
        onLongPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const ColorPalette(),
            ),
          );
        },
        onTap: () => showModalBottomSheet(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width >= 700
                ? 700
                : double.infinity,
          ),
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          context: context,
          builder: (_) => UserProfilePage(
            settings: getIt.get<Box<dynamic>>(
              instanceName: BoxType.settings.name,
            ),
            controller: TextEditingController(),
          ),
        ),
        child: const WelcomeWidget(),
      );
}
