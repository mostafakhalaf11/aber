import 'package:aber/component/aler_exit_dialog_function.dart';
import 'package:aber/views/auth_pages/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpPageView extends StatelessWidget {
  static String id = 'SignUpPageView';
  const SignUpPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, result) {
          alertExitDialog(context);
        },
        child: const SignUpViewBody());
  }
}
