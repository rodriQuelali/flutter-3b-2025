import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"), backgroundColor: Colors.amber),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          Center(child: titlo(),),
          SizedBox(height: 20),
          inputText(),
          SizedBox(height: 20),
          inputText()
        ]),
      ),
    );
  }

  Widget inputText() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Ingrese su nombre",
        hintText: "Nombre",
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.person),
      ),
    );
  }

  Widget titlo() {
    return Text(
      "Hola tercero Login B",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget titulo2() {
    return Text("Hola segundo Login B");
  }
}
