import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:paisa/features/settings/domain/use_case/setting_use_case.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class UserProfileBottomSheetWidget extends StatelessWidget {
  const UserProfileBottomSheetWidget({
    Key? key,
    required this.settingsUseCase,
    required this.profileCubit,
  }) : super(key: key);

  final SettingsUseCase settingsUseCase;
  final ProfileCubit profileCubit;

  void _updateDetails(String name) {
    profileCubit.saveName(name);
  }

  void _pickImage(BuildContext context) {
    profileCubit.pickImage();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    String name = settingsUseCase.get(userNameKey, defaultValue: '');
    controller.text = name;
    controller.selection = TextSelection.collapsed(offset: name.length);
    return BlocProvider(
      create: (context) => profileCubit,
      child: BlocListener<ProfileCubit, ProfileState>(
        listener: (context, state) {
          if (state is SavedNameState) {
            Navigator.pop(context);
          } else if (state is ProfileImagePickErrorState) {
            Navigator.pop(context);
            context.showMaterialSnackBar(state.error);
          }
        },
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    context.loc.profile,
                    style: context.titleLarge,
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 16),
                    PaisaUserImageWidget(pickImage: () => _pickImage(context)),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: PaisaTextFormField(
                          controller: controller,
                          hintText: 'Enter name',
                          keyboardType: TextInputType.name,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () => _updateDetails(controller.text),
                    child: Text(context.loc.update),
                  ),
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
