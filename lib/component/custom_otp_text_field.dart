import 'package:aber/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomOtpTextField extends StatelessWidget {
  const CustomOtpTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      contentPadding: const EdgeInsets.only(bottom: 20),
      showCursor: false,
      numberOfFields: 4,
      fieldWidth: MediaQuery.of(context).size.width / 6,
      fieldHeight: 80,
      obscureText: true,
      keyboardType: TextInputType.phone,
      textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      borderColor: kPrimaryColor,
      focusedBorderColor: kPrimaryColor,
      showFieldAsBox: false,
      borderWidth: 4.0,

      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here if necessary
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {},
    );
  }
}
