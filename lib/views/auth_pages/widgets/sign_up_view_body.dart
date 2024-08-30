import 'package:aber/component/custom_phone_field.dart';
import 'package:aber/component/custom_text_field.dart';
import 'package:aber/views/home_pages/home_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../component/custom_button.dart';
import '../log_in_page_view.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 24, left: 24, top: 100, bottom: 16),
          child: Column(
            children: [
              Container(
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
                    SizedBox(
                      height: size.height * .03,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const CustomFormTextfield(
                            focusBorderColor: Colors.grey,
                            hintText: ' name@example.com',
                            hintFontSize: 16,
                            validateMessage: 'Please enter your email',
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          CustomPhoneField(
                              phoneFieldController: TextEditingController()),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          CustomButton(
                            color: const Color(0xff242A37),
                            onTap: () {
                              Navigator.pushNamed((context), HomePageView.id);
                            },
                            buttonLabel: 'SIGN UP',
                            buttonLabelColor: Colors.white,
                            width: size.width,
                          ),
                          SizedBox(
                            height: size.height * .03,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
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
