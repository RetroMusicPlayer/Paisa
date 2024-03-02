// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/intro/presentation/widgets/intro_image_picker_widget.dart';

class IntroSetNameWidget extends StatelessWidget {
  const IntroSetNameWidget({
    super.key,
    required this.formState,
    required this.nameController,
  });

  final GlobalKey<FormState> formState;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          IntroTopWidget(
            title: context.loc.image,
            titleWidget: RichText(
              text: TextSpan(
                style: context.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.onSurface,
                  letterSpacing: 0.8,
                ),
                text: context.loc.welcome,
                children: [
                  TextSpan(
                    text: ' ${context.loc.appTitle}',
                    style: TextStyle(
                      color: context.primary,
                    ),
                  )
                ],
              ),
            ),
            icon: Icons.wallet,
            description: context.loc.welcomeDesc,
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: Form(
              key: formState,
              child: PaisaTextFormField(
                key: const Key('user_name_textfield'),
                controller: nameController,
                hintText: context.loc.enterNameHint,
                label: context.loc.nameHint,
                keyboardType: TextInputType.name,
                validator: (val) {
                  return val!.isNotEmpty ? null : context.loc.enterNameHint;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
