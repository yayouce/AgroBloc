import 'package:dashboard/screens/cooperative/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:dashboard/connexion/Forgot_Password_Screen.dart';
import 'package:dashboard/screens/usine/mains.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cacao Tracking',
      theme: ThemeData(fontFamily: "Poppins"),
      home:ForgotPasswordScreen(),
    );
  }
}









// class SplashScreen extends StatelessWidget {
//    const SplashScreen({Key? key}) : super(key: key);

//   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     return AnimatedSplashScreen(
// //      duration: 2500,
// //       animationDuration: const Duration(seconds: 2),
// //       splash: Lottie.asset('images/pic/agroBloc_animate.json'),
// //       // Container(
// //         // child: Column(
// //         //   children: [
// //         //     Container(
// //         //        child: Lottie.asset('images/pic/agroBloc_animate.json'),
              
// //         //     ),
// //         //     // Container(
// //         //     //   child: Row(
// //         //     //     children: [
// //         //     //       // Container(
// //         //     //       //   child: Text(
// //         //     //       //     "Agro",
// //         //     //       //     style: TextStyle(
// //         //     //       //         fontWeight: FontWeight.bold,
// //         //     //       //         fontSize: 15,
// //         //     //       //         color: Colors.lightGreen),
// //         //     //       //   ),
// //         //     //       //   margin: const EdgeInsets.only(left: 175),
// //         //     //       // ),
// //         //     //       // Container(
// //         //     //       //   child: Text(
// //         //     //       //     " Bloc",
// //         //     //       //     style: TextStyle(
// //         //     //       //         fontWeight: FontWeight.bold,
// //         //     //       //         color: Colors.orangeAccent),
// //         //     //       //   ),
// //         //     //       // ),
// //         //     //     ],
// //         //     //   ),
// //         //     // )
// //         //   ],
// //         // ),
// //       nextScreen: ForgotPasswordScreen(),
// //       splashIconSize: 500,
// //       );

// //       //splashTransition: SplashTransition.sizeTransition,
// //       //pageTransitionType: PageTransitionType.leftToRightWithFade,

// //   }
// }
