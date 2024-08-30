import 'package:flutter/material.dart';

class IntroBody3 extends StatefulWidget {
  const IntroBody3({super.key});

  @override
  State<IntroBody3> createState() => _IntroBody3State();
}

class _IntroBody3State extends State<IntroBody3> {
  
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
            image: AssetImage('assets/images/wallet.png'),
          ),
          SizedBox(
            height: size.height * .03,
          ),
          const Center(
            child: Text(
              "Earn Money",
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
                "Earn MoneyEarn Money \n\tEarn MoneyEarn",
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
