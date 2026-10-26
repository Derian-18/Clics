import 'package:flutter/material.dart';
// Importa tu archivo de navegación según tu estructura de carpetas:
import 'package:clics/presentacion/screens/NavigationExampleApp.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
      ),
      home: const NavigationExampleApp(),
    );
  }
}