import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class AppTextFormFieldWidget extends StatelessWidget {
  const AppTextFormFieldWidget({
    super.key,
    required this.hintText,
    this.obscureText,
    this.textInputType,
    this.maxLines,
    required this.controller,
    this.validator,
  });

  final String hintText;
  final bool? obscureText;
  final TextInputType? textInputType;
  final int? maxLines;
  final TextEditingController controller;
  final Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: textInputType ?? TextInputType.text,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
      ),
      controller: controller,
      validator: (value) {
        return validator!(value);
      },
    );
  }
}
