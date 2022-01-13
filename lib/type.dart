import 'package:fluket/buy_page.dart';
import 'package:fluket/sale_page.dart';
import 'package:flutter/material.dart';

class choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme:
                const AppBarTheme(color: Color.fromRGBO(234, 177, 39, 1))),
        home: Scaffold(
            appBar: AppBar(
              titleTextStyle: TextStyle(color: Colors.black),
              title: const Text(
                '¿Qué deseas hacer ahora?',
                style: TextStyle(fontSize: 20),
              ),
            ),
            backgroundColor: Colors.orange.shade300,
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(100),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: IconButton(
                              icon: const Icon(Icons.add_shopping_cart),
                              iconSize: 130,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => shop(),
                                    ));
                              },
                            )),
                        const Text(
                          "Comprar",
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: IconButton(
                            icon: const Icon(Icons.sell),
                            iconSize: 130,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => shope(),
                                  ));
                            },
                          ),
                        ),
                        const Text(
                          "Vender",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
