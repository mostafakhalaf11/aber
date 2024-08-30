import 'package:aber/component/custom_button.dart';
import 'package:aber/component/custom_phone_field.dart';
import 'package:aber/views/auth_pages/otp_verification_page.dart';
import 'package:flutter/material.dart';


class LogInPageView extends StatefulWidget {
  static String id = 'LogInPageView';
  const LogInPageView({super.key});

  @override
  State<LogInPageView> createState() => _LogInPageViewState();
}

class _LogInPageViewState extends State<LogInPageView> {
  TextEditingController phoneFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset(
            height: size.height * 0.4,
            width: size.width,
            'assets/images/landing_ground.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding:
                EdgeInsets.only(right: 20, left: 20, top: size.height * 0.3),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(
                      0,
                      3,
                    ),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'Login ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'with your\nphone number',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    CustomPhoneField(
                        phoneFieldController: TextEditingController()),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    CustomButton(
                      color: const Color(0xff242A37),
                      onTap: () {
                        Navigator.pushNamed((context), OtpVerificationPage.id);
                      },
                      buttonLabel: 'Next',
                      buttonLabelColor: Colors.white,
                      width: size.width,
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
