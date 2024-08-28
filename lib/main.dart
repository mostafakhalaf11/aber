import 'package:aber/views/auth_pages/log_in_page_view.dart';
import 'package:aber/views/auth_pages/otp_verification_page.dart';
import 'package:aber/views/auth_pages/sign_up_page_view.dart';
import 'package:aber/views/home_pages/home_page_view.dart';
import 'package:aber/views/intro_screens/intro_body.dart';
import 'package:aber/views/splash/splash_page.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_2.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Aber());
}

class Aber extends StatelessWidget {
  const Aber({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, fontFamily: 'Poppins'),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        IntroBody.id: (context) => const IntroBody(),
        IntroBody2.id: (context) => const IntroBody2(),
        IntroBody4.id: (context) => const IntroBody4(),
        SignUpPageView.id: (context) => const SignUpPageView(),
        LogInPageView.id: (context) => const LogInPageView(),
        HomePageView.id: (context) => const HomePageView(),
        OtpVerificationPage.id: (context) => const OtpVerificationPage(),
      },
      initialRoute: SplashPage.id,
    );
  }
}
