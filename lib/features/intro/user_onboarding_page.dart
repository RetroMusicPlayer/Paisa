import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/intro/presentation/pages/intro_set_name_widget.dart';
import 'package:paisa/features/intro/presentation/widgets/intro_image_picker_widget.dart';

class UserOnboardingPage extends StatefulWidget {
  const UserOnboardingPage({
    super.key,
    @Named('settings') required this.settings,
  });
  final Box<dynamic> settings;

  @override
  State<UserOnboardingPage> createState() => _UserOnboardingPageState();
}

class _UserOnboardingPageState extends State<UserOnboardingPage> {
  final PageController controller = PageController();
  final _formState = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Visibility(
                visible: currentIndex != 0,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    controller.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceIn,
                    );
                  },
                  extendedPadding: const EdgeInsets.symmetric(horizontal: 24),
                  label: Text(
                    'Back',
                    style: context.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  icon: Icon(MdiIcons.arrowLeft),
                ),
              ),
              const Spacer(),
              FloatingActionButton.extended(
                onPressed: () async {
                  if (currentIndex == 0) {
                    if (_formState.currentState!.validate()) {
                      widget.settings
                          .put(userNameKey, _nameController.text)
                          .then((value) {
                        return controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceIn,
                        );
                      });
                    }
                  } else if (currentIndex == 1) {
                    final String image =
                        widget.settings.get(userImageKey, defaultValue: '');
                    if (image.isEmpty) {
                      await widget.settings.put(userImageKey, 'no-image');
                    }
                    if (context.mounted) context.go(categorySelectorPath);
                  }
                },
                extendedPadding: const EdgeInsets.symmetric(horizontal: 24),
                label: Icon(MdiIcons.arrowRight),
                icon: Text(
                  context.loc.next,
                  style: context.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        onPageChanged: (value) => setState(() {
          currentIndex = value;
        }),
        controller: controller,
        children: [
          IntroSetNameWidget(
            formState: _formState,
            nameController: _nameController,
          ),
          IntroImagePickerWidget(settings: settings),
        ],
      ),
    );
  }
}
