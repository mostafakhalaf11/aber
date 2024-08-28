import 'package:flutter/material.dart';

class IntroBody3 extends StatelessWidget {
  const IntroBody3({super.key});

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
            image: AssetImage('assets/images/wallet.png'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            "Earn Money",
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
            child: Text(
              "Earn Money Earn Money Earn Money \n\t\t\t Earn MoneyEarn Money Earn ",
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
