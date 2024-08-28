
import 'package:aber/component/custom_button.dart';
import 'package:aber/constants.dart';
import 'package:aber/views/home_pages/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpVerificationPage extends StatelessWidget {
  static String id = 'OtpVerificationPage';
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: kPrimaryColor,
          size: 34,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Phone Verification',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Enter your OTP code here',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              OtpTextField(
                contentPadding: const EdgeInsets.only(bottom: 20),
                showCursor: false,
                numberOfFields: 4,
                fieldWidth: MediaQuery.of(context).size.width / 6,
                fieldHeight: 80,
                obscureText: true,
                keyboardType: TextInputType.phone,
                textStyle:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
              ),
              const SizedBox(
                height: 70,
              ),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                color: kPrimaryColor,
                buttonLabelColor: Colors.black,
                buttonLabel: 'VERIFY NOW',
                onTap: () {
                  Navigator.pushNamed((context), HomePageView.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
