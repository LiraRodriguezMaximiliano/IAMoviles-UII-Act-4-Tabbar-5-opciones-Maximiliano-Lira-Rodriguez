import 'package:flutter/material.dart';

// 1. IMPORTACIÓN: Asegúrate de importar la pantalla principal
// Reemplaza 'nombre_de_tu_proyecto' por el nombre real de tu carpeta (mira tu pubspec.yaml)
import 'mis_paginas_tab/pantalla_principal.dart';

void main() {
  runApp(const MyAppLala());
}

class MyAppLala extends StatelessWidget {
  const MyAppLala({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lala App',
      
      // 2. RUTA INICIAL: Definimos qué pantalla se ve primero
      initialRoute: '/',
      
      // 3. MAPA DE RUTAS: Aquí le decimos que '/' cargue la pantalla con el BottomNavigationBar
      routes: {
        '/': (context) => const PantallaPrincipal(),
      },
      
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.blue,
      ),
    );
  }
}