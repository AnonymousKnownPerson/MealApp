import 'dart:ui';

import 'package:flutter/material.dart';
import 'categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'DeliMeals',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.brown,
          secondary: Colors.orange,
        ),
        canvasColor: const Color.fromRGBO(
          255,
          254,
          229,
          1,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
                fontFamily: 'Raleway',
              ),
              bodySmall: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
                fontFamily: 'Raleway',
              ),
              bodyLarge: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
                fontFamily: 'Raleway',
                fontSize: 20,
              ),
              titleSmall: const TextStyle(
                fontSize: 20,
                fontFamily: 'RoboCondensed',
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
      ),
      home: const CategoriesScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Meals'),
      ),
      body: const Text('Test'),
    );
  }
}
