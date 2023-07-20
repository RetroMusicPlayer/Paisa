import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:paisa/main.dart';

import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';

class IntroImagePickerWidget extends StatelessWidget {
  const IntroImagePickerWidget({
    Key? key,
    @Named('settings') required this.settings,
  }) : super(key: key);

  final Box<dynamic> settings;

  void _pickImage() {
    final ImagePicker picker = ImagePicker();
    picker.pickImage(source: ImageSource.gallery).then((pickedFile) {
      if (pickedFile != null) {
        settings.put(userImageKey, pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ProfileCubit>(),
      child: SafeArea(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  context.primary,
                  BlendMode.srcIn,
                ),
                child: const Icon(
                  Icons.person_add_rounded,
                  size: 72,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                context.loc.image,
                style: context.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.onSurface,
                ),
              ),
              Text(
                context.loc.imageDesc,
                style: context.titleMedium?.copyWith(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.75),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: PaisaUserImageWidget(
                  pickImage: _pickImage,
                  maxRadius: 72,
                  useDefault: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
