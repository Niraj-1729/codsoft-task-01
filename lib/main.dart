import 'package:flashlight/home.dart';
import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
void main(){
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
