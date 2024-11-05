import 'dart:async';

import 'package:aber/component/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../component/custom_trip_details.dart';
import 'offline_home_page_view.dart';

class OnlineHomePageView extends StatefulWidget {
  static String id = 'OnlineHomePageView';
  const OnlineHomePageView({super.key});

  @override
  State<OnlineHomePageView> createState() => _OnlineHomePageViewState();
}

class _OnlineHomePageViewState extends State<OnlineHomePageView> {
  final Completer<GoogleMapController> mapController = Completer();
  static const sorceLocation = LatLng(30.2992066, 31.7196412);
  static const destination = LatLng(30.2993066, 31.7296412);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('online'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
              Navigator.pushNamed(context, OfflineHomePageView.id);
            },
            icon: const Icon(
              Icons.toggle_on,
              size: 44,
              color: Colors.orange,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: sorceLocation,
              zoom: 14.5,
            ),
            markers: {
              const Marker(
                markerId: MarkerId('source'),
                icon: BitmapDescriptor.defaultMarker,
                position: sorceLocation,
              ),
              const Marker(
                markerId: MarkerId('destination '),
                icon: BitmapDescriptor.defaultMarker,
                position: destination,
              )
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(
                  right: size.width * 0.05,
                  left: size.width * 0.05,
                  bottom: size.height * 0.04),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                width: size.width,
                child: Column(
                  children: [
                    const CustomTripDetails(
                      image: AssetImage("assets/images/Rectangle.png"),
                      driverName: 'Esther Berry',
                      amount: 25.00,
                      distance: "2.2 km",
                      pickUpDetails: "7958 Swift Village",
                      dropOffDetails: "105 William St, Chicago, US",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: size.width * 0.05,
                          left: size.width * 0.01,
                          top: size.height * 0.03,
                          bottom: size.height * 0.03),
                      child: Row(
                        children: [
                          FittedBox(
                            child: CustomButton(
                              buttonLabel: "Ignore",
                              width: size.width * 0.4,
                              color: Colors.white,
                              buttonLabelColor: const Color(0xffBEC2CE),
                            ),
                          ),
                          // const Spacer(),
                          FittedBox(
                            child: CustomButton(
                              buttonLabel: "Accept",
                              width: size.width * 0.4,
                              color: const Color(0xffFFD428),
                              buttonLabelColor: Colors.black,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
