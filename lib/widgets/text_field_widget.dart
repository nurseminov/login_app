import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
     super.key, required this.hintText
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 333,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color.fromARGB(255, 73, 73, 73)),
            ),
          hintText: hintText,
        ),
      ),
    );
  }
}