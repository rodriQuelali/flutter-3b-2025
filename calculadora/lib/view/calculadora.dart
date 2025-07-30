
import 'package:calculadora/model/Calculadora.dart';
import 'package:flutter/material.dart';

class MyCalculadoraPage extends StatefulWidget {
  const MyCalculadoraPage({super.key});

  @override
  State<MyCalculadoraPage> createState() => _MyCalculadoraPageState();
}

class _MyCalculadoraPageState extends State<MyCalculadoraPage> {


  //variables para los controladores de texto
  // later var txtNombre: Editexet
  //varianble global
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  String resultado = "";

//procedimiento para calcular
  void calcular(String operacion) {

    String res ="0"; // Inicializar res para evitar errores de referencia

    switch (operacion) {
      case '+':
        res = Calculadora(num1Controller.text, num2Controller.text).sumar();
        break;
      case '-':
        //res = Calculadora(num1.toString(), num2.toString()).restar();
        break;
      case '*':
        //res = Calculadora(num1.toString(), num2.toString()).multiplicar();
        break;
      case '/':
        if (num1Controller.text == "0") {
          resultado = "División por cero";
          setState(() {});
          return;
        }
        //res = Calculadora(num1.toString(), num2.toString()).dividir();
        break;
      default:
        res = "0";
    }
    setState(() {
      resultado = "Resultado: ${res}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora Flutter")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              //alamacenamiento de texto del ingreso del user
              controller: num1Controller,
              //fin
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 2'),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => calcular('+'),
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('-'),
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('*'),
                  child: Text('×'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('/'),
                  child: Text('÷'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              resultado,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}