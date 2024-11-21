import 'package:flutter/material.dart';
import 'ui/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cálculo del Número Mayor',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF1F8E9), 
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
