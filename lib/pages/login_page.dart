import 'package:ecomerce_admin_app/auth/auth_service.dart';
import 'package:ecomerce_admin_app/pages/launcher_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;
  String errMsg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,

                decoration: const InputDecoration(
                    hintText: 'Email Address',
                    filled: true,
                    prefixIcon: Icon(Icons.email),

                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'This field must not be empty';

                  }
                  return null;
                },

              ),

            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
              child: TextFormField(
                controller: passwordController,
                obscureText: isObscure,
                decoration:  InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    prefixIcon: const Icon(Icons.lock),
                    suffix: InkWell(
                      onTap: (){
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                    )
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'This field must not be empty';

                  }
                  return null;
                },
              ),
            ),
            OutlinedButton(
              onPressed: _loginAdmin,
              child: const Text('Login as admin'),
            ),
            const SizedBox(height: 20,),
            Text(errMsg,style: const TextStyle(fontSize: 16,color: Colors.red),)
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _loginAdmin() async{
    if(formKey.currentState!.validate()){
      final email = emailController.text;
      final password = passwordController.text;
      EasyLoading.show(status:'please wait......');

      try{
       final isAdmin = await AuthService.loginAdmin(email, password);
       EasyLoading.dismiss();
       if(isAdmin){
         Navigator.pushReplacementNamed(context, LauncherPage.routeName);

       }else{
         AuthService.logout();
         setState(() {
           errMsg = 'You are not an admin.Use a valid email address';
         });
       }



      } on FirebaseAuthException catch(error){
        EasyLoading.dismiss();
        setState(() {
          errMsg = error.message!;

        });
      }
    }

  }
}
