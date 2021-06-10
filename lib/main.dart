import 'package:flutter/material.dart';
import 'package:soto/pages/first_pages.dart';
import 'package:soto/pages/second_pages.dart';
import 'package:soto/pages/third_pages.dart';

void main() => runApp(SotoApp());

class SotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamburguesa de Soto',
      home: PaginaInicio(),
    ); //fin materialapp
  }
} //fin clase Espinozapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //fin inicio clase con estado

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());

        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //fin de switch
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.orange, size: 30.0), //icon
            title: Text('INICIO')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined, color: Colors.red, size: 30.0), //icon
            title: Text('CONTACTO')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_outlined, color: Colors.pink, size: 30.0), //icon
            title: Text('EMPRESA')), //Icons.restaurant_outlined
      ]), // bottom
    ); //fin de scaffold
  } //fin de widget
} //fin de paginainiciostate
