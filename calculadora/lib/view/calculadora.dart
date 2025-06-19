
import 'package:flutter/material.dart';

class MyCalculadoraPage extends StatefulWidget {
  const MyCalculadoraPage({super.key});

  @override
  State<MyCalculadoraPage> createState() => _MyCalculadoraPageState();
}

class _MyCalculadoraPageState extends State<MyCalculadoraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Acción del botón de configuración
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _inoutField('Ingrese datos...'),
            SizedBox(height: 20),
            _resultField(),
            Row(
              children: [
                Expanded(
                  child: 
                  _button('1',
                  () {
                      // Acción del botón 1
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: _button('2',
                  () {
                      // Acción del botón 2
                    },
                  ),
                ),

                SizedBox(width: 10),
                Expanded(
                  child: _button('3',
                  () {
                      // Acción del botón 2
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: _button('+',
                  () {
                      // Acción del botón 2
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: _button('4',
                  () {
                      // Acción del botón 4
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: _button('5',
                  () {
                      // Acción del botón 5
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: _button('6',
                  () {
                      // Acción del botón 6
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: _button('-',
                  () {
                      // Acción del botón -
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }

  Widget _resultField() {
      return Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'Resultado',  
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      );
    }

  Widget _button(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }


  Widget _inoutField(String label) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }
}