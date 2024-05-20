import 'package:authorization_neobis/models/login_password.dart';
import 'package:authorization_neobis/screens/login_screen.dart';
import 'package:authorization_neobis/widgets/login_text_field.dart';
import 'package:authorization_neobis/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  
    @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController userNameInput = TextEditingController();
  final TextEditingController passWordInput = TextEditingController();
  final TextEditingController passWordConfirmInput = TextEditingController();

  bool userExists(String name) {
    for (var userPassword in userdata) {
      if (userPassword.user == name) {
        return true; 
      }
    }
    return false;
  }

  bool save(String name, String passWord) {

    UserPassword newUserPassword = UserPassword(
      user: name,
      passWord: passWord,
    );

    userdata.add(newUserPassword);
    return true;
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
                  const Text('Регистрация',  ),
                const SizedBox(height: 25,),
                const Text('Логин',),
                const SizedBox(height: 5,),
        
                LoginTextField(userNameInput: userNameInput),
        
                const SizedBox(height: 10,),
                const Text('  Пароль                                                                       ',),
                const SizedBox(height: 5,),
        
                PasswordTextField(passWordInput: passWordInput),
        
                const SizedBox(height: 10,),
                const Text('Повторите пароль                                                               ',),
                const SizedBox(height: 5,),
        
                SizedBox(
                  height: 48,
                  width: 333,
                  child: TextFormField(
                
                    controller: passWordConfirmInput,
                    
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
                          if (passWordInput.text != passWordConfirmInput.text) {
                            return 'Введите тот же пароль';
                          }
                          return null;
                        },
                      ),
                  ),
                
        
               
                const SizedBox(height: 20,),
                   SizedBox(
                    width: 332,
                    height: 48,
                    child: ElevatedButton( 
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Идет обработка')),
                          );
                          if (save(userNameInput.text, passWordInput.text)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Успешно сохранен')),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Что-то пошло не так')),
                            );
                          }
                          Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                        }
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
      ),
    );
  }
}