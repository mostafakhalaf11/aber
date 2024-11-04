import 'package:aber/component/aler_exit_dialog_function.dart';
import 'package:aber/component/custom_button.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_1.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_2.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_3.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants.dart';

class IntroBody extends StatefulWidget {
  static String id = 'IntroBody';

  const IntroBody({super.key});

  @override
  State<IntroBody> createState() => _IntroBodyState();
}

class _IntroBodyState extends State<IntroBody> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        alertExitDialog(context);
      },
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: Stack(
          children: [
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              children: const [
                IntroBody1(),
                IntroBody2(),
                IntroBody3(),
              ],
            ),
            smoothIndicatorControling(context, size),
          ],
        ),
      ),
    );
  }

  Container smoothIndicatorControling(BuildContext context, Size size) {
    return Container(
      alignment: const Alignment(0, 0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          onLastPage
              ? CustomButton(
                  color: kPrimaryColor,
                  width: 255,
                  onTap: () {
                    Navigator.pushNamed(context, IntroBody4.id);
                  },
                  buttonLabel: 'GET STARTED',
                  buttonLabelColor: Colors.black,
                )
              : GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 24, color: Color(0xffBEC2CE)),
                  ),
                ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const WormEffect(
                activeDotColor: kPrimaryColor, dotColor: Color(0xffF1F2F6)),
          ),
          SizedBox(
            height: size.height * 0.06,
          ),
        ],
      ),
    );
  }
}
