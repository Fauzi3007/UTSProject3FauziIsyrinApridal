import 'package:flutter/material.dart';
import 'package:sipegpdam/mainlayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sipeg PDAM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.greenAccent, secondary: Colors.green[800]),
        useMaterial3: true,
      ),
      home: const MainLayout(),
    );
  }
}
