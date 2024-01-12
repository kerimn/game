import 'package:flutter/material.dart';
import 'package:game/constants/themes.dart';
import 'package:game/screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const InitialScreen(),
    );
  }
}
