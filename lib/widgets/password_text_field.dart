import 'package:authorization_neobis/main.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 48,
       width: 333,
       child: TextField(
    
         controller: pwdController,
         
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
       ),
     );
  }
}