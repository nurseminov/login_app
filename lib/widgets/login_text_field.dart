import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    required this.userNameInput,
  });

  final TextEditingController userNameInput;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48,
        width: 333,
        child: TextFormField(
      
          controller: userNameInput,
      
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.black),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Color.fromARGB(255, 73, 73, 73)),
              ),
            hintText: 'Логин',
          ),
    
            validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите логин';
                  }
                  return null;
            },
        ),
      );
  }
}