import 'package:fluket/users.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FluKet',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromRGBO(234, 177, 39, 1)),
        primarySwatch: Colors.orange,
      ),
      home: users(),
    );
  }
}
