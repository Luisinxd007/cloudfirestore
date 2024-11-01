import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Bienvenido Home',
          style: TextStyle(fontSize: 22.0, color: Colors.red),
        ),
      ),
    );
  }
}
