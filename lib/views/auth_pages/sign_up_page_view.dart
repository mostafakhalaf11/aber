import 'package:aber/views/auth_pages/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPageView extends StatelessWidget {
  static String id = 'SignUpPageView';
  const SignUpPageView({super.key});

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
        child: const SignUpViewBody());
  }
}
