import 'package:aber/helpers/build_borders.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomPhoneField extends StatelessWidget {
  const CustomPhoneField({
    super.key,
    required this.phoneFieldController,
  });

  final TextEditingController phoneFieldController;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      dropdownIcon: const Icon(
        Icons.arrow_drop_down,
        size: 32,
        color: Colors.black,
      ),
      controller: phoneFieldController,
      dropdownDecoration: const BoxDecoration(),
      dropdownTextStyle:
          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
