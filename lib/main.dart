import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeApp());
}

Color myCoffeeColor = const Color(0xFFC77C4D);

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coffee App",
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const CoffeeHomePage(),
    );
  }
}