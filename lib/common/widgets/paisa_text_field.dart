import 'package:flutter/material.dart';

class PaisaTextFormField extends StatelessWidget {
  const PaisaTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.maxLength,
    this.maxLines,
    this.label,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final String hintText;
  final TextInputType keyboardType;
  final bool? enabled;
  final int? maxLength;
  final int? maxLines;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      maxLines: maxLines,
      enabled: enabled,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        label: label != null ? Text(label!) : null,
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
