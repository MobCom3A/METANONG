import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:metanong/screens/auth/signin.dart';
import 'package:metanong/utils/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/main_icon3.png',
        color: const Color.fromARGB(255, 76, 32, 3),
      ),
      title: const Text(
        "MeTanong",
        style: TextStyle(
          fontSize: 25,
          color: Color.fromARGB(255, 76, 32, 3),
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      //backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: const Text(
        "Loading...",
        style: TextStyle(
          color: Color.fromARGB(255, 76, 32, 3),
        ),
      ),
      navigator: const SignInPage(),
      durationInSeconds: 3,
    );
  }
}
