import 'package:flutter/material.dart';
import 'package:navigations/view/Default.dart';
import 'package:navigations/view/Examplo.dart';
import 'package:navigations/view/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const MyHomePage(),
        '/default': (context) => const Default(),
        '/example': (context) => const Examplo(),
      },
      home: const MyHomePage(),
    );
  }
}