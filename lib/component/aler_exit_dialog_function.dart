import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<dynamic> alertExitDialog(BuildContext context) {
  return showDialog(
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
}
