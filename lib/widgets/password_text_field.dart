import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.passWordInput,
  });

  final TextEditingController passWordInput;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 333,
      child: TextFormField(
    
        controller: passWordInput,
        
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color.fromARGB(255, 73, 73, 73)),
            ),
          hintText: 'Пароль',
        ),
        
        validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите пароль';
                }
    
                return null;
          },
      ),
    );
  }
}