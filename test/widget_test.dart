import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venta Autos OG',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Venta Autos OG'),
        ),
        body: const Center(
          child: Text('0'),
        ),
      ),
    );
  }
}
