import 'package:flutter/material.dart';

class Bussines extends StatelessWidget {
  const Bussines({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Bienvenido Bussines',
          style: TextStyle(fontSize: 22.0, color: Colors.red),
        ),
      ),
    );
  }
}
