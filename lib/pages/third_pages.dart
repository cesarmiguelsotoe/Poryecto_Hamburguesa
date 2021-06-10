import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text('VISITANOS!!',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              _crearCard2(),
              _crearCard3()
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearCard1() {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'Que es lo que ofrecemos??',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Text('BURGER KING® OFRECE UN MENÚ AMPLIADO CON PRODUCTOS FRESCOS COMO SABROSÍSIMAS ENSALADAS GARDEN FRESH, SNACK WRAPS, CHICKEN STRIPS, SMOOTHIES Y FRAPPÉ')
          ],
        ),
      ),
    );
  }

  Widget _crearCard2() {
    return Card(
      elevation: 5,
      color: Colors.yellow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'Como formó parte de burguer king!!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '1.Entrar en www.burgerking.es \n2.Para contactar con RRHH de Burger King seleccionar «contactos» \n3.Rellenar la solicitud de empleo de Burger King. \n 4.Seleccionar el departamento de Atención al Cliente. \n 5.Seleccionar en la categoría «Empleo de Restaurante»',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearCard3() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: new Image.asset(
                'assets/images/chicaburgers.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('visitanos'),
            )
          ],
        ),
      ),
    );
  } // widget
} // first page
