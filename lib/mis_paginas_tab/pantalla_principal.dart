import 'package:flutter/material.dart';

// 1. REVISA ESTOS IMPORTS (Asegúrate que los nombres de archivo sean exactos)
import 'inicio.dart';
import 'lacteos.dart';
import 'no_lacteos.dart';
import 'recetas.dart';
import 'resenas.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _indiceActual = 0;

  // 2. LA LISTA ORDENADA (Quita el 'const' de aquí si te da error)
  final List<Widget> _paginas = [
    PantallaInicio(),
    PantallaLacteos(),
    PantallaNoLacteos(),
    PantallaRecetas(),
    PantallaResenas(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LALA Maximiliano Lira"),
        backgroundColor: const Color(0xFF00519E),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      // Muestra la página según el índice de la lista
      body: _paginas[_indiceActual], 
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceActual,
        selectedItemColor: const Color(0xFF00519E),
        onTap: (index) {
          setState(() {
            _indiceActual = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.water_drop), label: 'Lácteos'),
          BottomNavigationBarItem(icon: Icon(Icons.eco), label: 'No Lácteos'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Recetas'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Reseñas'),
        ],
      ),
    );
  }
}