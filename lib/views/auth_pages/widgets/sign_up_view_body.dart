import 'package:aber/component/custom_text_field.dart';
import 'package:aber/helpers/build_borders.dart';
import 'package:aber/views/home_pages/home_page_view.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../component/custom_button.dart';
import '../log_in_page_view.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  TextEditingController phoneFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 24, left: 24, top: 100, bottom: 16),
          child: Column(
            children: [
              Container(
                height: 700,
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
                      ), // Adjust offset to control shadow position
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                          child: Image.asset(
                            'assets/images/landing_ground.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 30),
                          child: RichText(
                            text: const TextSpan(
                              text: 'Sign Up ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'with\nemail and phone\nnumber',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const CustomFormTextfield(
                            focusBorderColor: Colors.grey,
                            hintText: ' name@example.com',
                            hintFontSize: 22,
                            validateMessage: 'Please enter your email',
                          ),
                          const SizedBox(
                            height: 25,
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
                            height: 30,
                          ),
                          CustomButton(
                            color: const Color(0xff242A37),
                            onTap: () {
                              Navigator.pushNamed((context), HomePageView.id);
                            },
                            buttonLabel: 'SIGN UP',
                            buttonLabelColor: Colors.white,
                            width: 350,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account?',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed((context), LogInPageView.id);
                        },
                      text: ' Sign In',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
