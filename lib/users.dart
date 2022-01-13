import 'package:fluket/type.dart';
import 'package:flutter/material.dart';

class users extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FluKet',
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            appBarTheme:
                const AppBarTheme(color: Color.fromRGBO(234, 177, 39, 1))),
        home: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: ListView(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/fluket.png',
                        width: 180,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                      padding: const EdgeInsets.all(30),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10,
                                  offset: Offset(0, 5))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: const Text(
                                'Bienvenido',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Color.fromRGBO(234, 177, 39, 1)),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: const Text(
                                'Ingresa tus datos',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 30),
                              child: TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                    hintText: 'Usuario',
                                    prefixIcon: Icon(Icons.account_circle),
                                    contentPadding: EdgeInsets.all(10),
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 2))),
                              ),
                            ),
                            const SizedBox(height: 40),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 30),
                              child: TextField(
                                autofocus: false,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'Contraseña',
                                    prefixIcon: Icon(Icons.lock),
                                    contentPadding: EdgeInsets.all(10),
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 2))),
                              ),
                            ),
                            const SizedBox(height: 40),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => choose(),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orangeAccent,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10),
                                ),
                                child: const Text(
                                  "Ingresar ahora",
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ))
                ],
              ),
            )));
  }
}
