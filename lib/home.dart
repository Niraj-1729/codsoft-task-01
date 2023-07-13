import 'package:flutter/material.dart';
// import 'package:flutter_flashlight/flutter_flashlight.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(66, 255, 255, 255),
      appBar: AppBar(
        title: const Text("FlashLigt App"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                    isActive ? 'assets/torch_on.jpg' : 'assets/torch_off.jpg',
                    width: 50,
                    height: 50,
                    ),
                    
              ],
            ),
          )),
          const Text(
            "Developed By Niraj",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
