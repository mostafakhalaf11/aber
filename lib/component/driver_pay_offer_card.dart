
import 'package:flutter/material.dart';

class DriverPayOfferCard extends StatelessWidget {
  final String cardLabel;
  const DriverPayOfferCard({
    super.key,
    required this.cardLabel,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(
      color: const Color(0xffFFD428),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.005, horizontal: size.height * 0.01),
        child: FittedBox(
          child: Text(
            cardLabel,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
