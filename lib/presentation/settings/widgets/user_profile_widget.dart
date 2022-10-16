import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../app/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../common/enum/box_types.dart';
import '../../../data/settings/settings_service.dart';
import '../../home/bloc/home_bloc.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final nameController = TextEditingController();
  late final expenseBloc = BlocProvider.of<HomeBloc>(context);

  void _updateDetails() {
    expenseBloc.add(UpdateUserDetailsEvent(name: nameController.text));
    Navigator.pop(context);
  }

  void _pickImage() => expenseBloc.add(PickImageEvent());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SafeArea(
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: BlocListener(
            bloc: expenseBloc,
            listener: (context, state) {
              if (state is UserDetailsUpdatedState) {
                Navigator.pop(context);
              }
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    AppLocalizations.of(context)!.profileLabel,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  trailing: IconButton(
                    onPressed: () => GoRouter.of(context).goNamed(settingsPath),
                    icon: const Icon(Icons.settings_rounded),
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 16),
                    UserImageWidget(pickImage: _pickImage),
                    Expanded(
                      child: UserTextField(nameController: nameController),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    onPressed: _updateDetails,
                    child: Text(
                      AppLocalizations.of(context)!.updateLabel,
                    ),
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

class UserTextField extends StatelessWidget {
  final TextEditingController nameController;

  const UserTextField({
    Key? key,
    required this.nameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box>(
      valueListenable: Hive.box(BoxType.settings.stringValue)
          .listenable(keys: [userNameKey]),
      builder: (context, value, _) {
        nameController.text = value.get(userNameKey, defaultValue: 'Name');
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: TextFormField(
            autocorrect: true,
            controller: nameController,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!.userNameLabel,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              filled: true,
            ),
            validator: (value) {
              if (value!.length >= 3) {
                return null;
              } else {
                return AppLocalizations.of(context)!.validNameLabel;
              }
            },
          ),
        );
      },
    );
  }
}

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({
    Key? key,
    required this.pickImage,
    this.maxRadius,
  }) : super(key: key);

  final VoidCallback pickImage;
  final double? maxRadius;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box>(
      valueListenable: Hive.box(BoxType.settings.stringValue).listenable(
        keys: [userImageKey],
      ),
      builder: (context, value, _) {
        String image = value.get(userImageKey, defaultValue: '');
        if (image == 'no-image') {
          image = '';
        }
        return GestureDetector(
          onTap: pickImage,
          child: Builder(
            builder: (context) {
              if (image.isEmpty) {
                return CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  maxRadius: maxRadius,
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                );
              } else {
                return CircleAvatar(
                  foregroundImage: FileImage(File(image)),
                  maxRadius: maxRadius,
                );
              }
            },
          ),
        );
      },
    );
  }
}
