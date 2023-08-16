import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/textbox.dart';

import 'home_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fullNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25,),
              Center(
                child: SizedBox(
                  height: 250,
                  child: Image.asset('images/sign-up.jpg'),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Welcome to Food Rec",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Let's get you all set up!",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 10,),
              MyTextBox(controller: fullNameTextEditingController, hintText: 'Full Name', icon: Icons.drive_file_rename_outline),
              const SizedBox(height: 25,),
              MyTextBox(controller: emailTextEditingController, hintText: 'Email', icon: Icons.drive_file_rename_outline),
              const SizedBox(height: 25,),
              MyTextBox(controller: passwordTextEditingController, hintText: 'Password', icon: Icons.drive_file_rename_outline),
              const SizedBox(height: 25,),
              MyTextBox(controller: confirmPasswordTextEditingController, hintText: 'Confirm Password', icon: Icons.drive_file_rename_outline),
              const SizedBox(height: 25,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent
                  ),
                  child: const Text("SIGN UP",
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
                          text: "Already have an account? ",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Montserrat',
                            color: Colors.black
                           )),
                      TextSpan(
                          text: "Login",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => const Home())),
                          style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                              color: Colors.orangeAccent)),
                    ])),
              ),
            ],
          )
        ),
      )
    );
  }
}
