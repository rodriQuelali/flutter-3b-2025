

import 'package:flutter/material.dart';

class Default extends StatelessWidget {
  const Default({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Default View'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text(
                'This is the Default View',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                
              Navigator.pop(context);  // Navigate back to the previous screen
                // Action when button is pressed
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}