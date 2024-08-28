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
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, IntroBody.id);
        },
        child: SingleChildScrollView(
          // Wrap in SingleChildScrollView
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // Change ListView to Column for better flexibility
            children: [
              SizedBox(
                height: size.height * 0.13,
              ),
              const Flexible(
                flex: 1,
                child: AspectRatio(
                  aspectRatio: 1.12, // Adjust aspect ratio for logo if needed
                  child: Image(
                    image: AssetImage('assets/images/applogo.png'),
                  ),
                ),
              ),
              const Image(
                image: AssetImage('assets/images/landing_ground.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
