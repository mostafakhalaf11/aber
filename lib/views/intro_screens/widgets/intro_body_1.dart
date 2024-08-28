import 'package:flutter/material.dart';

class IntroBody1 extends StatelessWidget {
  const IntroBody1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        SizedBox(
          height: size.height * .40,
          width: size.width * .60,
          child: const Image(
            image: AssetImage('assets/images/phone.png'),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Center(
          child: Text(
            "Accept a Job",
            style: TextStyle(
                color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              "Accept a Job Accept a Job Accept a  \n\t\t\t Job Accept a Job Accept a Job ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
