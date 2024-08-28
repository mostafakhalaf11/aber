import 'package:flutter/material.dart';
import '../../helpers/build_borders.dart';

class CustomFormTextfield extends StatefulWidget {
  final String? hintText, initialValue;
  final int? textFieldLength;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final bool isPassword;
  final Widget? textLabel;
  final double hintFontSize;
  final Color focusBorderColor;
  final String? validateMessage;
  const CustomFormTextfield(
      {super.key,
      this.onChanged,
      this.hintText,
      this.isPassword = false,
      this.textLabel,
      this.textFieldLength,
      this.onSaved,
      this.hintFontSize = 16,
      this.initialValue,
      required this.focusBorderColor,
      this.validateMessage});

  @override
  State<CustomFormTextfield> createState() => _CustomFormTextfieldState();
}

class _CustomFormTextfieldState extends State<CustomFormTextfield> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      onSaved: widget.onSaved,
      maxLines: widget.textFieldLength,
      onChanged: widget.onChanged,
      obscureText: widget.isPassword ? obscureText : false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.validateMessage;
        }
        return null;
      },
      decoration: InputDecoration(
        label: widget.textLabel,
        labelStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
        hintText: widget.hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: TextStyle(color: Colors.grey, fontSize: widget.hintFontSize),
        errorBorder: errorBorder(),
        focusedErrorBorder: focusErrorBorder(),
        enabledBorder: enabledBorder(),
        focusedBorder: focusedBorder(widget.focusBorderColor),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
              )
            : null,
      ),
      style: const TextStyle(fontSize: 20),
    );
  }
}
