import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  static String id = 'HomePageView';

  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    bool _isEnabled = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('offline'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              // Toggle the enabled state
              setState(() {
                _isEnabled = !_isEnabled;
              });
            },
            icon: Icon(
              !_isEnabled ? Icons.toggle_on : Icons.toggle_off,
              size: 44,
              color: _isEnabled ? Colors.orange : Colors.black,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
