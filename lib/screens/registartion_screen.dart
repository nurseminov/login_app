import 'package:authorization_neobis/main.dart';
import 'package:authorization_neobis/screens/login_screen.dart';
import 'package:authorization_neobis/widgets/login_text_field.dart';
import 'package:authorization_neobis/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
                const Text('Регистрация',  ),
              const SizedBox(height: 25,),
              const Text('Логин',),
              const SizedBox(height: 5,),

              const LoginTextField(),

              const SizedBox(height: 10,),
              const Text('  Пароль                                                                       ',),
              const SizedBox(height: 5,),

              const PasswordTextField(),

              const SizedBox(height: 10,),
              const Text('Повторите пароль                                                               ',),
              const SizedBox(height: 5,),

              const PasswordTextField(),

             
              const SizedBox(height: 20,),
                 SizedBox(
                  width: 332,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 105, 255, 1),
                    ), 
                    onPressed: (){
                      Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const LoginScreen()),
                              );
                      }, 
                      child:  const Text('Далее',),
                  ),
                ),

                const SizedBox(height: 15,),
                
                SizedBox(
                width: 350,
                height: 40,
                child: 
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const LoginScreen()),
                              );
                    }, 
                    child: 
                      const Text('У вас уже есть учетная запись, Войти                                                              ',),
                    ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
save() async {
  await MyApp.init();
  localStorage?.setString('Логин', emailController.text.toString());
  localStorage?.setString('Пароль', pwdController.text.toString());

}