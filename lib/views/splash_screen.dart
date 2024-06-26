import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodrecipe/views/home_screen.dart';
import 'package:foodrecipe/views/main_screen.dart';
import 'package:foodrecipe/views/sign_in_page.dart';
import 'package:foodrecipe/views/sign_up_page.dart';

import '../global.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer(){
    Timer(const Duration(seconds: 3) ,()async{
      if (fAuth.currentUser != null) {
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => const MainScreen()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => const SignIn()));
      }
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return
      Material(
        color: Colors.white,
       child: Center(
         child: Padding(
           padding: const EdgeInsets.all(15.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(
                    height: 250,
                   child: Image.asset("images/splashscreen.jpg")),
               const SizedBox(height: 10,),
               const Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Text(
                   "DISCOVER THE ART \n OF CULINARY DELIGHTS WITH OUR FOOD RECIPE APP",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold
                   ),
                 ),
               )
             ],
           ),
         ),
       ),
      );
  }
}
