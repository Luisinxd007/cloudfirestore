import 'package:cloudfirestore/bussines.dart';
import 'package:cloudfirestore/education.dart';
import 'package:cloudfirestore/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _PaginaActual = 0;

  List<Widget> _Paginas = [Home(), Education(), Bussines()];

  List<Color> _ColoresSeleccionados = [Colors.red, Colors.blue, Colors.green];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: _Paginas[_PaginaActual],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _PaginaActual,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: _ColoresSeleccionados[_PaginaActual],
          onTap: (int index) {
            setState(() {
              _PaginaActual = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_sharp),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
