import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
// import 'package:flutter_flashlight/flutter_flashlight.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isActive = false;
  var controller= TorchController();
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive ? 'assets/torch_on.jpg' : 'assets/torch_off.jpg',
                    width: 200,
                    height: 200,
                    color: isActive
                        ? null
                        : Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    minRadius: 30,
                    maxRadius: 45,
                    child: Transform.scale(
                      scale: 1.5,
                      child: IconButton(
                        onPressed: () {
                          controller.toggle();
                          isActive=!isActive;
                          setState(() {
                            
                          });
                        },
                        icon: const Icon(Icons.power_settings_new),
                      ),
                    ),
                  ),
                ],
              ),
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
