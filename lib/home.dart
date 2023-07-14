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
  var controller = TorchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(66, 255, 255, 255),
      appBar: AppBar(
        title: const Text("FlashLigt App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [Colors.red, Colors.pink,  Colors.white],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     stops: [
        //       0.0,
        //       0.5,
        //       1.0
        //     ], // Adjust the stops to control the color distribution
        //     tileMode: TileMode.clamp,
        //   ),
        // ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Image.asset(
                      isActive ? 'on.png' : 'on.png',
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
                      backgroundColor: Color.fromRGBO(246, 237, 237, 1),
                      child: Transform.scale(
                        scale: 1.5,
                        child: IconButton(
                          onPressed: () {
                            controller.toggle();
                            isActive = !isActive;
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.power_settings_new,
                            color: Colors.blue,
                          ),
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
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            )
          ],
        ),
      ),
    );
  }
}
