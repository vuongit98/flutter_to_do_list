import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.maxLines,
      this.minLines,
      this.errorText,
      this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.isHidden,
      this.controller,
      this.inputType});

  final int? maxLines;
  final int? minLines;
  final String? errorText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isHidden;
  final TextEditingController? controller;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType ?? TextInputType.text,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      obscureText: isHidden ?? false,
      decoration: InputDecoration(
        hintText: hintText ?? '',
        labelText: hintText ?? '',
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
