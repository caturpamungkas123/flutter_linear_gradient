import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Linear Gradient",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linear Gradient"),
      ),
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
              0.2,
              0.5,
              0.7,
              1
            ],
                colors: [
              Colors.red,
              Colors.green,
              Colors.yellow,
              Colors.blue
            ])),
        child: const Center(
          child: Text(
            "Linear Gradient",
            style: TextStyle(fontSize: 24),
          ),
        ),
      )),
    );
  }
}
