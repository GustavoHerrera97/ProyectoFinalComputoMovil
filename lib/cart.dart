import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class cart extends StatelessWidget {
  void wasap({@required number, @required message}) async {
    String url = "whatsapp://send?phone=$number&text=$message";
    await canLaunch(url) ? launch(url) : print("No se puede abrir WhatsApp");
  }

  String dropdownValue = 'Hamburguesa';
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        appBar: AppBar(title: const Text("Comprar")),
        body: Center(
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
                    width: 120,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.all(10),
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
                            'Elija su producto',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color.fromRGBO(234, 177, 39, 1)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                        ),
                        menu(),
                        const SizedBox(height: 40),
                        ElevatedButton(
                            onPressed: () {
                              wasap(number: "+525611696746", message: menu());
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 12),
                            ),
                            child: const Text(
                              "Hacer pedido",
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

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menu();
}

class _menu extends State<menu> {
  String titulo = "Hamburguesa";
  String dropdownValue = 'Hamburguesa';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
                titulo = dropdownValue;
              });
            },
            items: const [
              DropdownMenuItem(
                child: Text(
                  'Hamburguesa',
                ),
                value: 'Hamburguesa',
              ),
              DropdownMenuItem(
                child: Text(
                  'Pizza',
                ),
                value: "Pizza",
              ),
              DropdownMenuItem(
                child: Text(
                  'HotDog',
                ),
                value: "HotDog",
              ),
              DropdownMenuItem(
                child: Text(
                  'Papas',
                ),
                value: "Papas",
              ),
              DropdownMenuItem(
                child: Text(
                  'Tacos',
                ),
                value: "Tacos",
              ),
              DropdownMenuItem(
                child: Text(
                  'Nachos',
                ),
                value: "Nachos",
              ),
            ]),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(titulo, style: TextStyle(fontSize: 20)),
              precio(titulo),
              imagen(titulo),
            ],
          ),
        ),
      ],
    );
  }
}

Widget precio(titulo) {
  var price;
  if (titulo == 'Hamburguesa') {
    price = const Text(r"Precio: $45", style: TextStyle(fontSize: 20));
  }
  if (titulo == 'Pizza') {
    price = const Text(r"Precio: $20", style: TextStyle(fontSize: 20));
  }
  if (titulo == 'HotDog') {
    price = const Text(r"Precio: $15", style: TextStyle(fontSize: 20));
  }
  if (titulo == 'Papas') {
    price = const Text(r"Precio: $30", style: TextStyle(fontSize: 20));
  }
  if (titulo == 'Tacos') {
    price = const Text(r"Precio: $40", style: TextStyle(fontSize: 20));
  }
  if (titulo == 'Nachos') {
    price = const Text(r"Precio: $35", style: TextStyle(fontSize: 20));
  }
  return price;
}

Widget imagen(titulo) {
  var img;
  if (titulo == 'Hamburguesa') {
    img = Image.asset(
      "assets/comida.jpg",
      width: 180,
    );
  }
  if (titulo == 'Pizza') {
    img = Image.asset(
      "assets/pizza_h.jpg",
      width: 180,
    );
  }
  if (titulo == 'HotDog') {
    img = Image.asset(
      "assets/hotdog.jpg",
      width: 180,
    );
  }
  if (titulo == 'Papas') {
    img = Image.asset(
      "assets/papas.jpg",
      width: 180,
    );
  }
  if (titulo == 'Tacos') {
    img = Image.asset(
      "assets/tacos_d.jpg",
      width: 180,
    );
  }
  if (titulo == 'Nachos') {
    img = Image.asset(
      "assets/nachos.jpg",
      width: 180,
    );
  }
  return img;
}
