import 'package:authorization_neobis/models/login_password.dart';
import 'package:authorization_neobis/screens/home_page.dart';
import 'package:authorization_neobis/screens/registartion_screen.dart';
import 'package:authorization_neobis/widgets/login_text_field.dart';
import 'package:authorization_neobis/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

    @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController userNameInput = TextEditingController();
  final TextEditingController passWordInput = TextEditingController();


  bool isLoginValid(String username, String password) {
    for (var userPassword in userdata) {
      if (userPassword.user == username && userPassword.passWord == password) {
        return true;
      }
    }
    return false; 
  }
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      Form(
        key: _formKey,

        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Войти',
                ),
                const SizedBox(height: 25,),
                const Text('Логин',
                ),
                const SizedBox(height: 5,),
                
                  LoginTextField(userNameInput: userNameInput),
        
                const SizedBox(height: 10,),
                const Text('Пароль',
                ),
                const SizedBox(height: 5,),
        
                PasswordTextField(passWordInput: passWordInput),
        
                const SizedBox(
                  height: 35,
                  ),
                  SizedBox(
                    width: 332,
                    height: 48,
                    child: ElevatedButton( 
                      onPressed: (){
                         if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Идет обработка')),
                    );
                  }
                  if (isLoginValid(userNameInput.text, passWordInput.text)) {
                       Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MyHomePage(),
                          ),
                        );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Неправильный логин или пароль'),
                      ),
                    );
                  }
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
      ),
    );
  }
}
