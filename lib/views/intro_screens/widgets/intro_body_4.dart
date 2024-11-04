import 'package:aber/component/aler_exit_dialog_function.dart';
import 'package:aber/component/custom_button.dart';
import 'package:aber/constants.dart';
import 'package:aber/helpers/get_current_location.dart';
import 'package:aber/views/auth_pages/sign_up_page_view.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class IntroBody4 extends StatefulWidget {
  static String id = 'IntroBody4';
  const IntroBody4({super.key});

  @override
  State<IntroBody4> createState() => _IntroBody4State();
}

class _IntroBody4State extends State<IntroBody4> {
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
        body: Stack(children: [
          Column(
            children: [
              SizedBox(
                height: size.height * .15,
              ),
              const Image(
                image: AssetImage('assets/images/location2.png'),
              ),
              SizedBox(
                height: size.height * .06,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Enable Your Location",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .04,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Choose your location to start find \n\t\t\t\t\t    the request around you.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  color: kPrimaryColor,
                  width: 255,
                  onTap: () async {
                    LocationData locationData = await getLocation();
                    // ignore: use_build_context_synchronously
                    Navigator.pushNamed(context, SignUpPageView.id);
                    // ignore: avoid_print
                    print(
                        'Location: ${locationData.latitude}, ${locationData.longitude}');
                  },
                  buttonLabel: 'Use My Location',
                  buttonLabelColor: Colors.black,
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    Navigator.pushNamed(context, SignUpPageView.id);
                  },
                  child: const Text(
                    'Skip for now',
                    style: TextStyle(fontSize: 24, color: Color(0xffBEC2CE)),
                  ),
                ),
                SizedBox(
                  height: size.height * .06,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
