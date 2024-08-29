import 'package:aber/constants.dart';
import 'package:aber/views/intro_screens/intro_body.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatefulWidget {
  static String id = 'SplashPage';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _LandingState();
}

class _LandingState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        PageTransition(
          duration: const Duration(milliseconds: 500),
          type: PageTransitionType.rightToLeft, // Choose your desired animation
          child: const IntroBody(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: size.height * 0.15,
          ),
          const Flexible(
            flex: 1,
            child: Image(
              image: AssetImage('assets/images/applogo.png'),
              fit: BoxFit.contain,
            ),
          ),
          const Flexible(
            flex: 2,
            child: Image(
              image: AssetImage('assets/images/landing_ground.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
