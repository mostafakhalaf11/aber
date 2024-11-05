import 'package:aber/component/custom_button.dart';
import 'package:aber/component/custom_otp_text_field.dart';
import 'package:aber/constants.dart';
import 'package:aber/views/home_pages/offline_home_page_view.dart';
import 'package:flutter/material.dart';

class OtpVerificationPage extends StatelessWidget {
  static String id = 'OtpVerificationPage';
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
              SizedBox(
                height: size.height * 0.15,
              ),
              const Text(
                'Phone Verification',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              const Text(
                'Enter your OTP code here',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomOtpTextField(),
              SizedBox(
                height: size.height * 0.15,
              ),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                color: kPrimaryColor,
                buttonLabelColor: Colors.black,
                buttonLabel: 'VERIFY NOW',
                onTap: () {
                  Navigator.pushNamed((context), OfflineHomePageView.id);
                },
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
