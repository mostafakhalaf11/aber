import 'package:flutter/material.dart';

class IntroBody1 extends StatefulWidget {
  const IntroBody1({super.key});

  @override
  State<IntroBody1> createState() => _IntroBody1State();
}

class _IntroBody1State extends State<IntroBody1> {
  
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
            image: AssetImage('assets/images/phone.png'),
          ),
          SizedBox(
            height: size.height * .04,
          ),
          const Center(
            child: Text(
              "Accept a Job",
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
                "Accept a Job Accept a Job Accept \n\ta Job Accept a Job Accept a Job ",
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
