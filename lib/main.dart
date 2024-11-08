import 'package:aber/views/auth_pages/log_in_page_view.dart';
import 'package:aber/views/auth_pages/otp_verification_page.dart';
import 'package:aber/views/auth_pages/sign_up_page_view.dart';
import 'package:aber/views/home_pages/offline_home_page_view.dart';
import 'package:aber/views/home_pages/online_home_page_view.dart';
import 'package:aber/views/intro_screens/intro_body.dart';
import 'package:aber/views/splash/splash_page.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_2.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_4.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (BuildContext context) => const Aber(),
    ),
  );
}

class Aber extends StatelessWidget {
  const Aber({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, fontFamily: 'Poppins'),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        IntroBody.id: (context) => const IntroBody(),
        IntroBody2.id: (context) => const IntroBody2(),
        IntroBody4.id: (context) => const IntroBody4(),
        SignUpPageView.id: (context) => const SignUpPageView(),
        LogInPageView.id: (context) => const LogInPageView(),
        OfflineHomePageView.id: (context) => const OfflineHomePageView(),
        OnlineHomePageView.id: (context) => const OnlineHomePageView(),
        OtpVerificationPage.id: (context) => const OtpVerificationPage(),
      },
      initialRoute: SplashPage.id,
    );
  }
}
