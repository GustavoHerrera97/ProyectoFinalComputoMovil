import 'package:fluket/cart.dart';
import 'package:flutter/material.dart';

class shop extends StatefulWidget {
  @override
  _shopState createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          shopItem(
            title: "Hamburguesa",
            subtitle: "Hamburguesa con carne, queso y vegetales",
            imagePath: "assets/comida.jpg",
            price: "\$45",
            background: Colors.orange,
            indice: 0,
          ),
          shopItem(
            title: "Pizza",
            subtitle: "Masa a elegir, ingredientes variados, orilla de queso",
            imagePath: "assets/pizza_h.jpg",
            price: "\$20",
            background: Colors.red,
            indice: 1,
          ),
          shopItem(
            title: "Hot-Dog",
            subtitle: "Salchicha de pavo, Pan horneado y condimentos al gusto",
            imagePath: "assets/hotdog.jpg",
            price: "\$15",
            background: Colors.white,
            indice: 2,
          ),
          shopItem(
            title: "Papas",
            subtitle: "Con queso, ketchup y picante",
            imagePath: "assets/papas.jpg",
            price: "\$30",
            background: Colors.blue,
            indice: 3,
          ),
          shopItem(
            indice: 4,
            title: "Tacos",
            subtitle: "Tortillas hechas a mano, cebolla, cilantro y salsa ",
            imagePath: "assets/tacos_d.jpg",
            price: "\$40",
            background: Colors.green,
          ),
          shopItem(
            indice: 5,
            title: "Nachos",
            subtitle: "Con queso, jalapeños y carne",
            imagePath: "assets/nachos.jpg",
            price: "\$35",
            background: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class shopItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final String price;
  final Color background;
  final int indice;
  shopItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imagePath,
      required this.price,
      required this.background,
      required this.indice})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: background,
        height: 320,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Stack(children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    letterSpacing: 10, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Text(
                price,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    letterSpacing: 10, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => pagdetail(
                                title,
                                subtitle,
                                imagePath,
                                background,
                                price), // Aqui enlaza a la siguiente pagina
                          ));
                    },
                    child: Center(child: Image.asset(imagePath)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(background))))
          ]),
        ));
  }
}

Widget pagdetail(String title, String subtitle, String imagePath,
    Color background, String price) {
  return Scaffold(
      backgroundColor: background,
      body: CustomPaint(
        painter: backPainter(),
        child: SafeArea(
            bottom: false,
            child: Column(
              children: <Widget>[
                appBarr(title, subtitle, imagePath, price, background),
                content(title, subtitle, imagePath, price, background),
                bottom(),
              ],
            )),
      ));
}

class backPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.black26;
    final Rect rect = Rect.fromLTWH(0, 0, size.width * 0.25, size.height);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

Widget appBarr(title, subtitle, imagePath, price, background) {
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Colors.black, Colors.grey],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 250.0, 100.0));
  return SizedBox(
      width: double.infinity,
      height: 50,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 50),
          Flexible(
              child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient),
              )
            ],
          )),
        ],
      ));
}

Widget content(title, subtitle, imagePath, price, background) {
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Colors.purple, Colors.black],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 250.0, 100.0));
  return Expanded(
      child: Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: <Widget>[
        SizedBox(
          width: 210,
          height: 150,
          child: Center(
            child: Image.asset(imagePath),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Center(
            child: Column(
              children: <Widget>[
                const Divider(),
                const SizedBox(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("Caracteristicas",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                    )),
                SizedBox(
                    width: 230,
                    child: Text(subtitle,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..shader = linearGradient,
                            letterSpacing: 10))),
                SizedBox(
                    width: 130,
                    child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            const Text("Precio",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(price,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = linearGradient,
                                    letterSpacing: 10))
                          ],
                        )))
              ],
            ),
          ),
        )
      ],
    ),
  ));
}

class bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => cart()));
        },
        child: const Text(
          "Comprar ahora",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80))),
            )),
      ),
    );
  }
}
