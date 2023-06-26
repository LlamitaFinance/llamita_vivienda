import 'package:flutter/material.dart';
//import 'package:llamita_vivienda/screens/payments_list.dart';

class CustomerData extends StatefulWidget {
  const CustomerData({super.key});

  @override
  State<CustomerData> createState() => _CustomerDataState();
}

class _CustomerDataState extends State<CustomerData> {
  TextEditingController nominalValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Llamita Vivienda'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Datos del cliente',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombres',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Apellidos',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'DNI',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Número de celular',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Dirección',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
