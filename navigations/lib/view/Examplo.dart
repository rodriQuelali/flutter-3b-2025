 import 'package:flutter/material.dart';

class Examplo extends StatelessWidget {
   const Examplo({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Container(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Example View'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Center(
                child: Text(
                  'This is the Example View',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the previous screen
                },
                child: const Text('Go Back'),
              ),
            ],
          ),
        ),
     );
   }
 }