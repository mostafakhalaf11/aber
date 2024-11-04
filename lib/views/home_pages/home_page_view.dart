import 'dart:async';
import 'package:aber/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

class HomePageView extends StatefulWidget {
  static String id = 'HomePageView';

  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final Completer<GoogleMapController> mapController = Completer();
  static const sorceLocation = LatLng(30.2992066, 31.7196412);
  static const destination = LatLng(30.2993066, 31.7296412);
  // LocationData currentLocation =  getLocation() as LocationData ;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('offline'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              // Toggle the enabled state
              setState(() {});
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
          Container(
            decoration: const BoxDecoration(color: Color(0xffFF8900)),
            height: size.height * 0.08,
            width: size.width,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/images/ic_moon.png")),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You are offline !',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Go online to start accepting jobs.',
                        style: TextStyle(
                            color: Color(0xff664726),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              height: size.height * 0.3,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          child: ClipOval(
                            child: AspectRatio(
                              aspectRatio: 1.0, // Adjust aspect ratio as needed
                              child: Image.asset(
                                'assets/images/Oval.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jeremiah Curtis',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Basic level',
                              style: TextStyle(
                                  color: Color(0xffBEC2CE),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              NumberFormat.currency(
                                      locale: 'en_US', symbol: '\$')
                                  .format(325.00),
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Earned',
                              style: TextStyle(
                                  color: Color(0xffBEC2CE),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: kPrimaryColor),
                      height: size.height * 0.15,
                      width: size.width,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BuildCustomColumnForTripDetails(
                              image: AssetImage("assets/images/Time.png"),
                              text1: "10.2",
                              text2: "HOURS ONLINE",
                            ),
                            Spacer(),
                            BuildCustomColumnForTripDetails(
                              image: AssetImage("assets/images/speed.png"),
                              text1: "30 KM",
                              text2: "TOTAL dISTANCE",
                            ),
                            Spacer(),
                            BuildCustomColumnForTripDetails(
                              image: AssetImage("assets/images/order.png"),
                              text1: "20",
                              text2: "TOTAL JOBS",
                            ),
                          ],
                        ),
                      ),
                    ),
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

class BuildCustomColumnForTripDetails extends StatelessWidget {
  final ImageProvider<Object> image;
  final String text1, text2;
  const BuildCustomColumnForTripDetails({
    required this.image,
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 2,
        ),
        Image(
          image: image,
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          text1,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          text2,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Color(0xffAE9429),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
