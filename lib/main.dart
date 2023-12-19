import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Gradients'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        decoration: const BoxDecoration(
            gradient: SweepGradient(
                // center: Alignment.bottomRight,
                // radius: 0.7,
                startAngle: 0.5,
                endAngle: 7,
                stops: [
              0.2,
              0.5,
              0.7,
              0.9
            ],
                colors: [
              Colors.blue,
              Colors.green,
              Colors.yellow,
              Colors.red
            ])),
      ),
    );
  }
}
