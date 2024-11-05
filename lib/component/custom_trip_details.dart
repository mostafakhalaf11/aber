import 'package:flutter/material.dart';

import 'driver_pay_offer_card.dart';
import 'package:intl/intl.dart';

class CustomTripDetails extends StatelessWidget {
  final ImageProvider<Object> image;
  final String driverName, distance, pickUpDetails, dropOffDetails;
  final double amount;

  const CustomTripDetails({
    super.key,
    required this.image,
    required this.driverName,
    required this.amount,
    required this.distance,
    required this.pickUpDetails,
    required this.dropOffDetails,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color(0xffF7F7F7),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Padding(
            padding: EdgeInsets.only(
                right: size.width * 0.02,
                left: size.width * 0.02,
                top: size.height * 0.02,
                bottom: size.height * 0.02),
            child: Row(
              children: [
                Image(
                  width: size.width * 0.15,
                  image: image,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        driverName,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Row(
                      children: [
                        DriverPayOfferCard(
                          cardLabel: "ApplePay",
                        ),
                        DriverPayOfferCard(
                          cardLabel: "Discount",
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FittedBox(
                      child: Text(
                        NumberFormat.currency(locale: 'en_US', symbol: '\$')
                            .format(amount),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        distance,
                        style: const TextStyle(
                            color: Color(0xffBEC2CE),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const Divider(
          height: 1,
          color: Color(0xffEFEFF4),
          thickness: 2,
        ),
        Padding(
          padding: EdgeInsets.only(
              right: size.width * 0.05,
              left: size.width * 0.03,
              top: size.height * 0.01),
          child: const FittedBox(
            child: Text(
              "Pick up",
              style: TextStyle(
                  color: Color(0xffBEC2CE),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: size.width * 0.05,
              left: size.width * 0.03,
              bottom: size.height * 0.01),
          child: FittedBox(
            child: Text(
              pickUpDetails,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Divider(
            endIndent: 12,
            height: 1,
            color: Color(0xffEFEFF4),
            thickness: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: size.width * 0.05,
              left: size.width * 0.03,
              top: size.height * 0.01),
          child: const FittedBox(
            child: Text(
              "Drop off",
              style: TextStyle(
                  color: Color(0xffBEC2CE),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: size.width * 0.05,
              left: size.width * 0.03,
              bottom: size.height * 0.01),
          child: FittedBox(
            child: Text(
              dropOffDetails,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Divider(
          height: 1,
          color: Color(0xffEFEFF4),
          thickness: 2,
        ),
      ],
    );
  }
}
