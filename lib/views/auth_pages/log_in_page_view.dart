import 'package:aber/component/custom_button.dart';
import 'package:aber/views/auth_pages/otp_verification_page.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../helpers/build_borders.dart';

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
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset(
            height: 300,
            width: double.infinity,
            'assets/images/landing_ground.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 250),
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Login ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'with your\n phone number',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    IntlPhoneField(
                      dropdownIcon: const Icon(
                        Icons.arrow_drop_down,
                        size: 32,
                        color: Colors.black,
                      ),
                      controller: phoneFieldController,
                      dropdownDecoration: const BoxDecoration(),
                      dropdownTextStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        hintText: 'Mobile number',
                        focusColor: Colors.grey,
                        hintStyle: const TextStyle(color: Colors.grey),
                        focusedBorder: focusedBorder(Colors.grey),
                        enabledBorder: enabledBorder(),
                        errorBorder: errorBorder(),
                        focusedErrorBorder: focusErrorBorder(),
                      ),
                      initialCountryCode: 'EG',
                      keyboardType: TextInputType.phone,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      color: const Color(0xff242A37),
                      onTap: () {
                        Navigator.pushNamed((context), OtpVerificationPage.id);
                      },
                      buttonLabel: 'Next',
                      buttonLabelColor: Colors.white,
                      width: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(
                      height: 30,
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
