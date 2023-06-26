import 'package:flutter/material.dart';
//import 'package:llamita_vivienda/screens/payments_list.dart';

class CreditsData extends StatefulWidget {
  const CreditsData({super.key});

  @override
  State<CreditsData> createState() => _CreditsDataState();
}

class _CreditsDataState extends State<CreditsData> {
  TextEditingController amountController = TextEditingController();
  TextEditingController currencyController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController nPeriods = TextEditingController();

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
                'Datos de préstamo',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: amountController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Monto',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: rateController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tasa Efectiva Anual',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: currencyController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Divisa',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nPeriods,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Número de periodos',
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Definir'),
                onPressed: () {
                  if (currencyController == "Soles" || currencyController == "Dolares" || currencyController == "Dólares"
                  || currencyController == "soles" || currencyController == "dolares" || currencyController == "dólares")
                    {
                      if (defineAmounts() == true){

                      }
                    }
                  //Navigator.of(context).push(
                  //MaterialPageRoute(
                  //builder: (BuildContext context) {
                  //return const CustomerList();
                  //},
                  //),
                  //);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
  defineAmounts() async {
    var amount = amountController;
    var rate = rateController;
    String currency = currencyController.toString();

    return true;
  }
}
