import 'package:flutter/material.dart';
import 'package:clics/presentacion/screens/contador1.dart';
import 'package:clics/presentacion/screens/contador2.dart';
import 'package:clics/presentacion/screens/inputs.dart';
import 'package:flutter/services.dart';

class NavigationExampleApp extends StatefulWidget {
  const NavigationExampleApp({super.key});

  @override
  State<NavigationExampleApp> createState() => _NavigationExampleAppState();
}

class _NavigationExampleAppState extends State<NavigationExampleApp> {
  int _currentPageIndex = 0;

  // Lista de páginas a navegar
  final List<Widget> _pages = const [
    Contador1(), // Tu pantalla del contador
    Contador2(), // Tu pantalla del contador de +5
    Inputs(), // Tu pantalla de inputs
    Center(child: Text('Pantalla de Salida')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentPageIndex,
        onDestinationSelected: (int index) {
          if (index == 3) {
            // Salir de la aplicación
            SystemNavigator.pop();
          } else {
            setState(() {
              _currentPageIndex = index;
            });
          }
          setState(() {
            _currentPageIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.add),
            label: 'Más 1+',
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: 'Más 5+',
          ),
          NavigationDestination(
            icon: Icon(Icons.content_paste),
            label: 'Formulario',
          ),
          NavigationDestination(
            icon: Icon(Icons.exit_to_app),
            label: 'Salida',
          ),
        ],
      ),
    );
  }
}