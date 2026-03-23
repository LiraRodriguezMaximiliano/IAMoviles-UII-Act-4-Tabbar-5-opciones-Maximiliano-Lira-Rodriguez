import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bienvenido a Lala", style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Image.network(
              'https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/Chayanne.jpg',
              height: 200,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.image, size: 100),
            ),
          ],
        ),
      ),
    );
  }
}