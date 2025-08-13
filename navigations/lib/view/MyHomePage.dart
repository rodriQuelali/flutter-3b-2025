

import 'package:flutter/material.dart';
import 'package:navigations/view/Default.dart';
import 'package:navigations/view/Examplo.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: Text(
              'Welcome to My Home Page',
              style: TextStyle(fontSize: 24),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Action when button is pressed
              Navigator.pushNamed(context, '/default');
            },
            child: const Text('Press Me'),
          ),
        ],
      )
    );
  }
}