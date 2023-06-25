import 'package:flutter/material.dart';
//import 'package:llamita_vivienda/screens/payments_list.dart';

class CreditsData extends StatefulWidget {
  const CreditsData({super.key});

  @override
  State<CreditsData> createState() => _CreditsDataState();
}

class _CreditsDataState extends State<CreditsData> {
  TextEditingController nominalValue = TextEditingController();
  TextEditingController couponRate = TextEditingController();
  TextEditingController paymentDeadline = TextEditingController();
  TextEditingController couponPayment = TextEditingController();
  TextEditingController couponDeadline = TextEditingController();
  TextEditingController partialGraceDeadline = TextEditingController();
  TextEditingController structurationCost = TextEditingController();
  TextEditingController placementCost = TextEditingController();
  TextEditingController floatingCost = TextEditingController();
  TextEditingController cavali = TextEditingController();
  TextEditingController deadlineCost = TextEditingController();

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
                'Valor Nominal',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tasa cupón',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Plazo de pago',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pago del cupón',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Plazo de gracia parcial',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Costo de estructuración',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Costo de colocación',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Costo de flotación',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CAVALI',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Prima al vencimiento',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
