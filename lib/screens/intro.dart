import 'package:flutter/material.dart';
import 'package:llamita_vivienda/screens/login.dart';

class Intro extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Llamita Vivienda'),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Mi Vivienda',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: Image(
                image: NetworkImage("https://www.mivivienda.com.pe/PORTALWEB/resource/img/logo-fmv.jpg"),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
              child: ElevatedButton(
                child: const Text('Iniciar sesión'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Login();
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
              child: ElevatedButton(
                child: const Text('Registrarse'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Login();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
