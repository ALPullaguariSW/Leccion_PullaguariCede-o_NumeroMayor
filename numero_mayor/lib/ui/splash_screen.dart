import 'package:flutter/material.dart';
import 'ingreso_numeros.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NumberInputScreen()),
      );
    });

    return const Scaffold(
      backgroundColor: Color(0xFFB2DFDB), // Fondo pastel verde agua
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calculate, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              'Cálculo del Número Mayor',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [Shadow(blurRadius: 5, color: Colors.black26, offset: Offset(2, 2))],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
