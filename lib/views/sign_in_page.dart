import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodrecipe/views/sign_up_page.dart';

import '../widgets/textbox.dart';
import 'home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25,),
              Center(
                child: SizedBox(
                  height: 250,
                  child: Image.asset('images/sign-in.jpg'),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Welcome Back,",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Sign In to continue to Food Rec!",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 10,),
              MyTextBox(controller: emailTextEditingController, hintText: 'Email', icon: Icons.drive_file_rename_outline),
              const SizedBox(height: 25,),
              MyTextBox(controller: passwordTextEditingController, hintText: 'Password', icon: Icons.drive_file_rename_outline),
              const SizedBox(height: 25,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent
                  ),
                  child: const Text("SIGN IN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      const TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Montserrat',
                              color: Colors.black
                          )),
                      TextSpan(
                          text: "Sign Up",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => const SignUp())),
                          style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Colors.orangeAccent)),
                    ])),
              ),
            ],
          ),
        )
      ),
    );
  }
}
