import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  const Inputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Formulario')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Ingrese su nombre',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Ingrese su correo electrónico',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Ingrese su contraseña',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón
                },
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}