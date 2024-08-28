import 'package:aber/component/custom_button.dart';
import 'package:aber/constants.dart';
import 'package:aber/helpers/get_current_location.dart';
import 'package:aber/views/auth_pages/sign_up_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              height: 300,
              width: 400,
              child: Image(
                image: AssetImage('assets/images/location2.png'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "Enable Your Location",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "Accept a Job Accept a Job Accept a  \n\t\t\t Job Accept a Job Accept a Job ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 170),
            CustomButton(
              color: kPrimaryColor,
              width: 255,
              onTap: () async {
                LocationData locationData = await getLocation();
                Navigator.pushNamed(context, SignUpPageView.id);
                print(
                    'Location: ${locationData.latitude}, ${locationData.longitude}');
              },
              buttonLabel: 'Use My Location',
              buttonLabelColor: Colors.black,
            ),
            const SizedBox(
              height: 50,
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
            )
          ],
        ),
      ),
    );
  }
}
