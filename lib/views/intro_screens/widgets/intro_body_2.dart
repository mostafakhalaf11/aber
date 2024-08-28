import 'package:flutter/material.dart';

class IntroBody2 extends StatelessWidget {
  static String id = 'IntroBody2';
  const IntroBody2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 100,
        ),
        SizedBox(
          height: 400,
          width: 400,
          child: Image(
            image: AssetImage('assets/images/location.png'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            "Tracking Realtime",
            style: TextStyle(
                color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              children: [
                Text(
                  "Tracking Realtime Tracking Realtime  \n\t\t\t Tracking Realtimeeeeeeeee   ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
