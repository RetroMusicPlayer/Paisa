import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    this.inputFormatters,
    this.counterText,
  });

  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextEditingController controller;
  final String? counterText;
  final bool? enabled;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType keyboardType;
  final String? label;
  final int? maxLength;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      maxLines: maxLines,
      enabled: enabled,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        counterText: "",
        hintText: hintText,
        label: label != null ? Text(label!) : null,
      ),
      validator: validator,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
    );
  }
}

class PaisaTextField extends StatelessWidget {
  const PaisaTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    this.onChanged,
    this.enabled = true,
    this.maxLength,
    this.maxLines,
    this.label,
    this.inputFormatters,
  });

  final Function(String)? onChanged;
  final TextEditingController controller;
  final bool? enabled;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType keyboardType;
  final String? label;
  final int? maxLength;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      maxLines: maxLines,
      enabled: enabled,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        label: label != null ? Text(label!) : null,
      ),
      onChanged: onChanged,
      inputFormatters: inputFormatters,
    );
  }
}
