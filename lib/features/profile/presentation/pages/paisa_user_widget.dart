import 'package:flutter/material.dart';
import 'package:paisa/core/widgets/color_palette.dart';
import 'package:paisa/features/home/presentation/widgets/welcome_widget.dart';
import 'package:paisa/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:paisa/features/profile/presentation/widgets/user_profile_bottomshee_widget.dart';
import 'package:paisa/features/settings/domain/use_case/setting_use_case.dart';
import 'package:paisa/main.dart';

class PaisaUserWidget extends StatelessWidget {
  const PaisaUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          maxWidth:
              MediaQuery.of(context).size.width >= 700 ? 700 : double.infinity,
        ),
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        context: context,
        builder: (_) => UserProfileBottomSheetWidget(
          settingsUseCase: getIt.get<SettingsUseCase>(),
          profileCubit: getIt.get<ProfileCubit>(),
        ),
      ),
      child: const UserImageWidget(),
    );
  }
}
