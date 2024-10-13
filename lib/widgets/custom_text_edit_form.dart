import 'package:flutter/material.dart';



class CustomTextFormField extends StatelessWidget {
  final String hintText;
  const CustomTextFormField({super.key, required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 2), // Outer border
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: TextFormField(
        decoration:   InputDecoration(
          border: InputBorder.none, // Remove inner border
          hintText: hintText,
          contentPadding: const EdgeInsets.all(16), // Padding inside the TextFormField
        ),
      ),
    );
  }
}