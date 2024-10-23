import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final bool showDropdownIcon;
  final VoidCallback? onPressed;
  final IconData? customIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines,
    this.showDropdownIcon = false,
    this.onPressed,
    this.customIcon,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(16),

        // Border Styling
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26, width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0), // Change color when focused
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0), // Error color
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0), // Error color when focused
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: showDropdownIcon
            ? IconButton(
          icon: const Icon(Icons.arrow_drop_down),
          onPressed: onPressed,
        )
            : null,
      ),
    );
  }
}

