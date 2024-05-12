import 'package:authorization_neobis/screens/registartion_screen.dart';
import 'package:authorization_neobis/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      Center(
        child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Войти',
              ),
              const SizedBox(height: 25,),
              const Text('Логин                    ',
              ),
              const SizedBox(height: 5,),
              const TextFieldWidget(hintText: 'Логин',),
              const SizedBox(height: 10,),
              const Text('  Пароль                                                                  ',
              ),
              const SizedBox(height: 5,),
              const TextFieldWidget(hintText: ' ● ● ● ● ● ● ',),
              const SizedBox(
                height: 35,
                ),
                SizedBox(
                  width: 332,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 105, 255, 1),
                    ), 
                    onPressed: (){

                      }, 
                      child:  const Text('Войти',
                    ),
                  ),
                ),

                const SizedBox(height: 10,),
                const Text('   Еще нет учетной записи?                                                         ',
                ),
                SizedBox(
                width: 350,
                height: 40,
                child: 
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const RegistrationScreen()),
                              );
                    }, 
                    child: 
                      const Text('Зарегистрируйся сейчас!                                                             ',
                      ),
                    ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}