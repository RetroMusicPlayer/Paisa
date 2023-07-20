import 'package:flutter/material.dart';

import 'package:paisa/core/common.dart';

class IntroSetNameWidget extends StatelessWidget {
  const IntroSetNameWidget({
    Key? key,
    required this.formState,
    required this.nameController,
  }) : super(key: key);

  final GlobalKey<FormState> formState;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                Icons.wallet,
                size: 72,
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: TextSpan(
                style: context.headlineSmall?.copyWith(
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
            const SizedBox(height: 6),
            Text(
              context.loc.welcomeDesc,
              style: context.titleMedium?.copyWith(
                color:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.75),
                letterSpacing: 0.6,
              ),
            ),
            const SizedBox(height: 16),
            Form(
              key: formState,
              child: TextFormField(
                key: const Key('user_name_textfield'),
                controller: nameController,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  hintText: context.loc.enterNameHint,
                  label: Text(context.loc.nameHint),
                ),
                keyboardType: TextInputType.name,
                validator: (val) {
                  if (val!.isNotEmpty) {
                    return null;
                  } else {
                    return context.loc.enterNameHint;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
