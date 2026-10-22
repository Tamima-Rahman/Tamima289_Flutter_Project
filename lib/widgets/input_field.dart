import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller, keyboardType, labelText, hintText, prefixIcon, validator;

  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,

      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 214, 211, 221),

        labelText: labelText,
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFF666666), fontSize: 16),

        prefixIcon: prefixIcon,

        labelStyle: TextStyle(color: const Color.fromARGB(255, 33, 20, 181)),

        prefixIconColor: const Color.fromARGB(255, 33, 20, 181),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: const Color.fromARGB(255, 33, 20, 181)),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 33, 20, 181),
            width: 2,
          ),
        ),
      ),

      validator: validator,
    );
  }
}
