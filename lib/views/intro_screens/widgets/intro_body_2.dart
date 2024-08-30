import 'package:flutter/material.dart';

class IntroBody2 extends StatefulWidget {
  static String id = 'IntroBody2';
  const IntroBody2({super.key});

  @override
  State<IntroBody2> createState() => _IntroBody2State();
}

class _IntroBody2State extends State<IntroBody2> {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * .15,
          ),
          const Image(
            image: AssetImage('assets/images/location.png'),
          ),
          SizedBox(
            height: size.height * .04,
          ),
          const Center(
            child: Text(
              "Tracking Realtime",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: size.height * .04,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Tracking Realtime Tracking \n\tTracking Realtime",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
