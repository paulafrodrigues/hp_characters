import 'package:flutter/material.dart';
import 'package:hp_characters/src/character/character_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personagens do Harry Potter',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage() ,
    );
  }
}
