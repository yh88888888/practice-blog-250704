import 'package:flutter/material.dart';
import '../../_core/constants/size.dart';

class CustomAuthTextFormField extends StatelessWidget {
  final String text;
  final bool obscureText;

  const CustomAuthTextFormField({required this.text, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: smallGap),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],);
  }
}
