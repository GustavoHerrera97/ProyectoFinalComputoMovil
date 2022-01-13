import 'package:fluket/cart.dart';
import 'package:fluket/type.dart';
import 'package:flutter/material.dart';

class post extends StatefulWidget {
  @override
  _shopStatee createState() => _shopStatee();
}

class _shopStatee extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        alignment: Alignment.center,
        color: Colors.orange.shade300,
        child: const Text(
          "Tu producto se publico",
          style: TextStyle(fontSize: 25),
        ),
      ),
      Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: 45.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => choose()),
                );
              },
            ),
          )),
    ]));
  }
}
