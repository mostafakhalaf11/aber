import 'package:aber/component/custom_button.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_1.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_2.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_3.dart';
import 'package:aber/views/intro_screens/widgets/intro_body_4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text(
                'Exit Aber ?',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text(
                    'No',
                    style: TextStyle(
                        color: Color(0xffBEC2CE),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                        color: Color(0xffBEC2CE),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          },
        );
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
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Container(
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
                                style: TextStyle(
                                    fontSize: 24, color: Color(0xffBEC2CE)),
                              ),
                            ),
                      const SizedBox(
                        height: 70,
                      ),
                      SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: const WormEffect(
                            activeDotColor: kPrimaryColor,
                            dotColor: Color(0xffF1F2F6)),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
