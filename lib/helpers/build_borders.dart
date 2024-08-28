import 'package:flutter/material.dart';

OutlineInputBorder focusedBorder(Color focusBorderColor) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: focusBorderColor,
    ),
  );
}

OutlineInputBorder enabledBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  );
}

OutlineInputBorder focusErrorBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );
}

OutlineInputBorder errorBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );
}
