import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.buttonLabel,
    required this.width,
    required this.color, required this.buttonLabelColor,
  });
  final String? buttonLabel;
  final VoidCallback? onTap;
  final double width;
  final Color color;
  final Color buttonLabelColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text(
          '$buttonLabel',
          style:  TextStyle(
              fontSize: 22, color: buttonLabelColor, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
